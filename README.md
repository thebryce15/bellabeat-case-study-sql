# Bellabeat Case Study: Smart Wellness Strategy

## Project Overview

This case study explores how Bellabeat, a health-focused tech company, can leverage data from Fitbit users to improve its product offerings and marketing strategy. As part of the Google Data Analytics Certificate, I performed a complete SQL-based analysis of user activity and sleep behavior using SQLite and publicly available data.

## Objectives

- Clean and transform raw Fitbit activity and sleep data.
- Categorize users by physical activity level.
- Analyze average sleep behavior across activity levels.
- Attempt to correlate physical activity with sleep duration.
- Recommend business strategies for improving user engagement and wellness outcomes.

## Tools Used

- SQLite3 – for data querying and transformation
- DB Browser for SQLite – to manage tables and schemas
- Markdown & GitHub – for documentation
- Google Data Analytics Certificate Curriculum – foundation for analytical methodology

## Dataset

The dataset contains daily and minute-level activity, sleep, and calories data from 30 Fitbit users over 31 days. Originally published by Mobius on Kaggle, it includes:

- Daily Activity Logs
- Minute-Level Sleep Records
- Steps, Calories, and Intensity Logs

## Key Insights

- Low Activity Prevalence: Over 65% of user-days were classified as "Low Activity" (<5,000 steps).
- Sleep Duration: Users averaged 7.05 hours of sleep per night, with high sleep efficiency.
- Activity & Sleep Correlation: Attempts to find a correlation between physical activity and sleep duration were inconclusive due to limited high-activity data.

## Business Recommendations

1. Promote Personalized Coaching: Introduce nudges, reminders, and micro-goals to increase daily movement.
2. Leverage Sleep Insights: Market relaxation and pre-sleep features using tracked sleep data.
3. Encourage Intensity Bursts: Design challenges or badges for intense, short-duration workouts.
4. Gamify Engagement: Use badges, leaderboards, and social challenges to motivate consistency.
5. Reduce Inactivity: Use inactivity detection to suggest walking/stretch breaks and encourage healthier routines.

## Limitations

- Sample Size: 30 users over one month.
- Data Skew: Most users fell into the "Low Activity" group, limiting comparison.
- Synthetic Sleep Data: Sleep efficiency may not represent reality due to simplified assumptions in preprocessing.

## Business Impact

The insights from this study support data-driven decisions in both product and marketing development. By emphasizing proactive wellness (not just tracking), Bellabeat can:

- Increase device usage and retention.
- Improve differentiation in a competitive wearable tech market.
- Better personalize the user experience.

## SQL Scripts

All SQL scripts used in this case study are available in the `/sql` folder of this repository. They include:

- 01_clean_daily_activity.sql
- 02_clean_sleep_data.sql
- 03_step_engagement_summary.sql
- 04_join_sleep_steps.sql
- 05_avg_sleep_by_engagement.sql

## Data Outputs

These CSV files were generated from SQL queries run during the analysis:

- [user_daily_summary.csv](outputs/user_daily_summary.csv)
- [step_engagement_summary.csv](outputs/step_engagement_summary.csv)
- [avg_sleep_dur_eff.csv](outputs/avg_sleep_dur_eff.csv)


You can also find a full summary of queries in the case study document: `Bellabeat_Case_Study.pdf`

## Author

**Bryce Smith**  
Google Data Analytics Certificate  
Location: Scottsdale, AZ  
Open to remote or hybrid roles  

## License

This project is open-source for educational and professional demonstration purposes. Data is publicly available and shared under the original Mobius Kaggle license.
