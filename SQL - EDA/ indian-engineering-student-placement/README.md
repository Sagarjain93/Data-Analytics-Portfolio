Indian Engineering Student Placement — SQL EDA Analysis


🔷 Project Overview

This project analyzes placement outcomes among Indian engineering students using PostgreSQL-based exploratory data analysis (EDA). The objective is to identify academic, skill-based, behavioral, and socioeconomic factors influencing employability and salary outcomes.

The project follows a structured analytics pipeline including data ingestion, schema design, data quality validation, cleaning transformations, and multi-layer exploratory analysis.

🔷 Dataset Description

The dataset contains approximately 5,000 engineering student records with:

Academic performance indicators

Skill assessment ratings

Practical exposure metrics

Lifestyle and socioeconomic background

Placement status and salary outcomes

🔷 Methodology
Phase 1 — Data Ingestion

Raw CSV data was loaded into PostgreSQL preserving original data integrity.

Phase 2 — Schema Design

Separate raw and analytics schemas were created to ensure reproducibility and maintain clean analytical layers.

Phase 3 — Data Quality Validation

Checks included:

Null value validation

Logical consistency testing

Categorical value verification

Phase 4 — Data Cleaning

Transformations included:

Salary consistency enforcement

Boolean normalization

Ordinal category standardization

Outlier detection and flagging

Phase 5 — Exploratory Data Analysis

Single-variable analysis evaluated academic, skill, exposure, lifestyle, and socioeconomic drivers of placement outcomes.

Phase 6 — Multi-Factor Driver Analysis

Combined factor interactions were analyzed to identify high-impact employability profiles.

🔷 Key Insights
Academic Performance

Higher CGPA strongly correlates with improved placement probability and higher salary outcomes.

Skill & Practical Exposure

Internship experience and project participation significantly improve employability, often outperforming academic performance alone.

Multi-Factor Employability Drivers

Students with strong academic performance combined with internship experience demonstrate the highest placement success rates.

Lifestyle & Socioeconomic Impact

Internet accessibility, extracurricular participation, and stable study routines positively influence placement outcomes.

Outlier Profiles

Outlier students frequently display strong practical exposure and occasionally achieve higher salary outcomes.

🔷 Business Recommendations

Encourage internship participation as early as possible

Promote project-based learning alongside academic curriculum

Provide technical skill development programs

Improve digital accessibility for students from lower socioeconomic backgrounds

Offer stress and lifestyle management support programs

🔷 Tools & Skills Demonstrated

PostgreSQL

Data Cleaning & Standardization

Exploratory Data Analysis

Analytical SQL (CTEs, Window Functions, Aggregations)

Data Quality Validation

Multi-Factor Analytical Modeling

Data Storytelling

🔷 Project Structure
01_raw_data/
02_schema/
03_cleaning/
04_eda/
README.md
