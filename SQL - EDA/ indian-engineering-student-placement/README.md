# **Indian Engineering Student Placement — SQL EDA Analysis**


🔷 **Project Overview**

This project analyzes placement outcomes among Indian engineering students using PostgreSQL-based exploratory data analysis (EDA). The objective is to identify academic, skill-based, behavioral, and socioeconomic factors influencing employability and salary outcomes.

The project follows a structured analytics pipeline including data ingestion, schema design, data quality validation, cleaning transformations, and multi-layer exploratory analysis.

--- 

🔷 **Dataset Description**

The dataset contains approximately 5,000 engineering student records with:

*  Academic performance indicators

*  Skill assessment ratings

*  Practical exposure metrics

*  Lifestyle and socioeconomic background

*  Placement status and salary outcomes

  ---

🔷 **Methodology**

**Phase 1 — Data Ingestion**

Raw CSV data was loaded into PostgreSQL preserving original data integrity.

**Phase 2 — Schema Design**

Separate raw and analytics schemas were created to ensure reproducibility and maintain clean analytical layers.

**Phase 3 — Data Quality Validation**

Checks included:

Null value validation

Logical consistency testing

Categorical value verification

**Phase 4 — Data Cleaning**

Transformations included:

Salary consistency enforcement

Boolean normalization

Ordinal category standardization

Outlier detection and flagging

**Phase 5 — Exploratory Data Analysis**

Single-variable analysis evaluated academic, skill, exposure, lifestyle, and socioeconomic drivers of placement outcomes.

**Phase 6 — Multi-Factor Driver Analysis**

Combined factor interactions were analyzed to identify high-impact employability profiles.

**Phase 7 - Visualization**

Using collab-notebook ,visualized various charts 

---

🔷 **Key Insights**

**Academic Performance**

Higher CGPA strongly correlates with improved placement probability and higher salary outcomes.

**Skill & Practical Exposure**

Internship experience and project participation significantly improve employability, often outperforming academic performance alone.

**Multi-Factor Employability Drivers**

Students with strong academic performance combined with internship experience demonstrate the highest placement success rates.

**Lifestyle & Socioeconomic Impact**

Internet accessibility, extracurricular participation, and stable study routines positively influence placement outcomes.

**Outlier Profiles**

Outlier students frequently display strong practical exposure and occasionally achieve higher salary outcomes.

--- 

🔷 **Business Recommendations**

Encourage internship participation as early as possible

Promote project-based learning alongside academic curriculum

Provide technical skill development programs

Improve digital accessibility for students from lower socioeconomic backgrounds

Offer stress and lifestyle management support programs

----

**Visualization & Analytical Insights**

To complement SQL-based exploratory analysis, a Python visualization notebook was developed to translate analytical findings into graphical insights and storytelling.

The visualization layer demonstrates an end-to-end analytics workflow combining PostgreSQL data preparation with Python-based exploratory visualization using Pandas, Seaborn, and Matplotlib.

🔹 **Placement Distribution Overview**

Visualization reveals a strong placement ecosystem, with approximately 86% of students successfully placed. The remaining unplaced population highlights potential employability gap segments requiring further analysis.
<img width="549" height="393" alt="image" src="https://github.com/user-attachments/assets/b29872f5-6827-4aef-8926-cfc64f1bc55a" />


🔹 **Salary Distribution Analysis**

Salary trends show a strong concentration between 14–18 LPA, indicating consistent compensation levels for most graduates. A smaller high-performing segment achieves premium salary packages near 20 LPA, suggesting the presence of elite employability profiles.
<img width="618" height="393" alt="image" src="https://github.com/user-attachments/assets/40ea0bdb-2919-4c65-9094-cb924df7e6f2" />


🔹 **Academic Performance Impact**

CGPA demonstrates a clear positive relationship with placement success. However, the presence of high-CGPA unplaced students indicates that academic performance alone does not guarantee employability, reinforcing the importance of skill and exposure factors.
<img width="609" height="393" alt="image" src="https://github.com/user-attachments/assets/d96058dd-f4fb-4cdd-80da-59407e301043" />


🔹**Technical Skill Influence**

Coding skill rating shows a strong positive placement correlation. Students with skill ratings of 4 and above exhibit significantly higher placement success, identifying technical competency as a major hiring driver.
<img width="704" height="470" alt="image" src="https://github.com/user-attachments/assets/d2f492c9-dd27-4800-9070-fea20feff6c2" />


🔹 **Internship Experience Impact**

Internship participation strongly improves placement outcomes. Students completing two or more internships show substantially higher employability success rates, emphasizing the importance of industry exposure.
<img width="704" height="470" alt="image" src="https://github.com/user-attachments/assets/0d8ca2a4-4710-457d-bb7c-36c20bf6e906" />


🔹 **Lifestyle & Behavioral Factors**

Moderate lifestyle balance patterns, particularly balanced sleep cycles, demonstrate slightly more consistent salary outcomes. However, behavioral factors show weaker predictive influence compared to skill and exposure metrics.
<img width="1462" height="470" alt="image" src="https://github.com/user-attachments/assets/e5418251-8fee-4286-b2a9-673b3eaaca53" />


🔹**Multi-Factor Exposure Strength**

Combined exposure scoring based on internships, projects, and certifications emerges as the strongest placement predictor. Students with high exposure levels show overwhelmingly higher placement success, highlighting experiential learning as the most influential employability driver.
<img width="704" height="470" alt="image" src="https://github.com/user-attachments/assets/c58019b5-b724-4f61-b1bd-2442c24e0cb3" />

----


🔷 **Tools & Skills Demonstrated**

*  PostgreSQL

*  Data Cleaning & Standardization

*  Exploratory Data Analysis

*  Analytical SQL (CTEs, Window Functions, Aggregations)

*  Data Quality Validation

*  Multi-Factor Analytical Modeling

*  Visualization: Pandas, Matplotlib, Seaborn, Google Colab

*  Data Storytelling

---

🔷 **Project Structure**
```
01_raw_data/
02_schema/
03_cleaning/
04_eda/
05_Python_Visualization
README.md
```

----

🔷 **Author**

**SAGAR JAIN**

