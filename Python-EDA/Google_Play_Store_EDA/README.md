**Google Play Store Apps EDA**

<img width="500" height="500" alt="image" src="https://github.com/user-attachments/assets/c6a80608-e00e-401c-bc4e-6b0cf73435e5" />

<img width="500" height="500" alt="image" src="https://github.com/user-attachments/assets/89526417-ac14-475b-91d4-1a43c3bf1092" />

---- 
**Project Overview**

The Google Play Store hosts millions of apps across various categories, making it a highly competitive marketplace. For developers and businesses, understanding what drives app success is critical for improving visibility, user engagement, and growth.

This project performs an end-to-end Exploratory Data Analysis (EDA) on Google Play Store data along with user reviews to identify key factors that influence app performance, installs, ratings, and user sentiment.

The goal of this analysis is to generate data-driven insights that can help stakeholders make informed decisions related to app development, pricing strategy, user engagement, and market positioning.

----


**Business Problem**

With thousands of apps competing for user attention, developers need to understand:

*  What drives higher installs?

*  Do ratings impact app success?

*  How do free and paid apps perform?

*  Does app size or price affect user adoption?

*  Which categories are most competitive?

*  How does user sentiment relate to app popularity?

This project aims to answer these questions using real-world Play Store data.

----

**Dataset Information**

Two datasets were used:

**1. Google Play Store Dataset**

~10,800 apps

Features include: App Name | Category | Rating | Reviews | Size | Installs | Type (Free/Paid) | Price | Content Rating | Last Updated

**2. User Reviews Dataset**

~64,000 user reviews

Features include: Review text | Sentiment (Positive/Neutral/Negative) | Sentiment Polarity | Sentiment Subjectivity

The review data was aggregated at the app level and merged with the Play Store dataset.

-----

**Data Cleaning & Preparation**

The following preprocessing steps were performed:

*  Removed duplicate records

*  Handled missing values using median/mode

*  Standardized column names

*  Cleaned numeric fields:

*  Converted Installs to integers

*  Removed currency symbols from Price

*  Converted Size into MB

*  Converted date columns to datetime format

*  Aggregated user reviews: Positive, Neutral, Negative counts

*  Average sentiment polarity & subjectivity

*  Merged both datasets into a final dataset with ~10,300 apps and 18 features

----

**Exploratory Data Analysis (EDA)**

Analysis was performed to understand:

*  App distribution by category and genre

*  Free vs Paid app performance

*  Content rating distribution

*  App size distribution

*  Category vs installs

*  Type vs rating and installs

*  Price vs installs (Paid apps)

*  App size vs installs

*  Reviews distribution across categories

*  Correlation analysis between key numerical variables

----

## Key Visual Insights

## 1. Correlation Between Key Variables

<img width="844" height="741" alt="12_Co-relation_Heat_Map" src="https://github.com/user-attachments/assets/1457c1de-611b-4524-8264-bfd5f9135033" />

**Insight:** Reviews show a strong positive correlation (0.63) with installs, indicating that user engagement is a major driver of app success. In contrast, rating, price, and size have weak relationships with installs.

---

## 2. Free vs Paid Apps – Install Comparison

<img width="784" height="584" alt="03_Count_Free_vs_Paid_Apps" src="https://github.com/user-attachments/assets/cd3b8a25-f4e4-4638-a361-57e239fe1a32" />


**Insight:** Free apps significantly outperform paid apps in terms of installs, suggesting that pricing acts as a barrier to adoption and that a freemium model is more effective for growth.

--- 

## 3. Category vs Installs Distribution

<img width="1014" height="734" alt="06_Category_vs_Installs" src="https://github.com/user-attachments/assets/b0c38d5d-660c-4220-83c9-ab26ae82fdeb" />


**Insight:** Categories such as Game, Communication, Social, and Tools show the highest install ranges, but the distribution is highly skewed, indicating that only a few apps dominate user adoption.

---

## 4. Reviews Distribution Across Categories

<img width="1401" height="734" alt="11_Review_Distribution_Among_Category" src="https://github.com/user-attachments/assets/e14c1b8e-5fd6-428b-9085-fc4a1bf1721b" />


**Insight:** Review counts are heavily concentrated among a small number of apps, reinforcing the strong link between user engagement and install growth.

---

## 5. Ratings Across Categories

<img width="1166" height="888" alt="13_Rating_Across_Category" src="https://github.com/user-attachments/assets/af89465e-c8af-4379-b380-440e045e3412" />


**Insight:** Most categories maintain high ratings (4.0–4.5), suggesting generally positive user sentiment across the Play Store ecosystem.

---


**Visualization libraries used:**

*  Matplotlib

*  Seaborn

----

**Key Insights**

*  User engagement drives success - Reviews show a strong positive correlation (0.63) with installs.

*  Free apps dominate the market - Free apps receive significantly higher installs than paid apps.

*  Paid apps have slightly higher ratings but lower adoption

*  Most apps maintain high ratings (4.0–4.5) across categories.

*  App success follows a long-tail distribution -  A small number of apps capture the majority of installs and reviews.

*  Price and app size show weak correlation with installs

*  Categories like Game, Communication, Social, and Tools generate the highest user engagement

----

**Business Recommendations**

Based on the analysis:

*  Adopt a freemium model to maximize user acquisition

*  Focus on increasing user engagement and reviews

*  Target a broader audience (Everyone/Teen)

*  Optimize app size for better accessibility

*  Prioritize performance, stability, and user experience over pricing strategies

----

**Tools & Technologies**

*  Python

*  Pandas

*  NumPy

*  Matplotlib

*  Seaborn

*  Jupyter Notebook

---

**Project Structure**

```
Google-Play-Store-Analysis/
│
├── data/
│   ├── googleplaystore.csv
│   └── googleplaystore_user_reviews.csv
│
├──── PlayStore_EDA.ipynb
│
├── images/
│   └── EDA visualizations
│
└── README.md
```

--- 

**Conclusion**

_This project demonstrates how exploratory data analysis can uncover meaningful patterns in app performance and user behavior. The findings highlight that user engagement and accessibility are the key drivers of app success, rather than price or size alone. These insights can help developers and businesses design better strategies to improve visibility, user satisfaction, and long-term growth in the competitive mobile app ecosystem._

---

**Author**

**Sagar Jain**
**Aspiring Data Analyst | Python | SQL | EDA | Data Visualization**
