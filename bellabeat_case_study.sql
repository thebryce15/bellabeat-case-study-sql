-- Step Engagement Categorization
CREATE TABLE user_daily_summary AS
SELECT
    Id,
    DATE(ActivityDate) AS activity_date,
    TotalSteps,
    TotalDistance,
    Calories,
    CASE
        WHEN TotalSteps < 5000 THEN 'Low'
        WHEN TotalSteps BETWEEN 5000 AND 9999 THEN 'Moderate'
        ELSE 'High'
    END AS step_engagement_level
FROM dailyactivity;

-- Sleep Summary
CREATE TABLE user_sleep_summary AS
SELECT
    Id,
    printf(
        '%04d-%02d-%02d',
        CAST(SUBSTR(date, INSTR(date, ' ') - 4, 4) AS INT),  -- year
        CAST(SUBSTR(date, 1, INSTR(date, '/') - 1) AS INT),  -- month
        CAST(
            SUBSTR(
                date,
                INSTR(date, '/') + 1,
                INSTR(SUBSTR(date, INSTR(date, '/') + 1), '/') - 1
            ) AS INT
        )  -- day
    ) AS sleep_date,
    COUNT(*) AS TotalMinutesAsleep,
    COUNT(*) AS TotalTimeInBed,
    100.0 AS sleep_efficiency
FROM minute_sleep
GROUP BY Id, sleep_date;

-- Joining Steps & Sleep
CREATE TABLE sleep_step_join AS
SELECT
    a.Id,
    a.activity_date,
    a.step_engagement_level,
    s.TotalMinutesAsleep
FROM user_daily_summary a
JOIN user_sleep_summary s
    ON a.Id = s.Id AND a.activity_date = DATE(s.sleep_date, '+1 day');

-- Aggregated Sleep by Activity Level
SELECT
    step_engagement_level,
    ROUND(AVG(TotalMinutesAsleep) / 60.0, 2) AS avg_sleep_hours
FROM sleep_step_join
GROUP BY step_engagement_level;
