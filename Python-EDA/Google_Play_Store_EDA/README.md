**Google Play Store Apps EDA**

<img width="1600" height="900" alt="image" src="https://github.com/user-attachments/assets/c6a80608-e00e-401c-bc4e-6b0cf73435e5" />

<img width="948" height="533" alt="image" src="https://github.com/user-attachments/assets/89526417-ac14-475b-91d4-1a43c3bf1092" />

**Problem Statement**

The Google Play Store is one of the world’s largest app marketplaces, hosting thousands of apps across diverse categories. With growing competition, understanding the factors that influence app success (ratings, installs, reviews, and sentiments) is critical. This project explores Play Store data to uncover patterns, correlations, and business insights that can guide developers, businesses, and users in making better data-driven decisions.

**Dataset Description**

*  We use two datasets for this project:

1. Play Store Data (10,841 rows × 13 columns)

  Contains app-level details such as category, rating, size, installs, type, price, and genres.

2. User Reviews Data (64,295 rows × 5 columns)

  Contains user reviews, translated text, sentiment, polarity, and subjectivity.

*  These datasets are merged on the common column “App” after appropriate cleaning and preprocessing.

**Data Preprocessing**

*  Dropped duplicate rows (483 duplicates found)

*  Handled missing values (ratings, sentiment polarity, subjectivity, version details)

*  Cleaned Installs and Price columns by removing symbols (+, $, ,) and converting to numeric

*  Converted Size to numeric (standardized MB/KB)

*  Aggregated sentiment polarity and subjectivity at the app level from user reviews

*  Merged Play Store and Review data for enriched insights


**Exploratory Data Analysis (EDA)**

Key areas explored:

*  Distribution of apps across categories

*   Rating distribution and missing value patterns

*   Installs vs Ratings relationship

*   Free vs Paid apps analysis

*   Impact of app size and price on popularity

*   User sentiments aggregated by app and category

*   Top categories by installs and reviews

**Key Observations**

*  Around 14% ratings were missing → may affect popularity analysis.

*  Free apps dominate (most installs, wider reach) while paid apps are niche.

*  App size doesn’t strongly affect installs, but extremely large apps are less popular.

*  User sentiment polarity gives additional context beyond ratings (e.g., some apps have average ratings but highly positive/negative reviews).

*  Games, Communication, and Tools lead in installs, while Family and Education categories dominate by volume.

**Tools & Libraries Used**

*  Python 

*  Pandas, NumPy → Data Cleaning & Preprocessing

*  Matplotlib, Seaborn → Data Visualization


**Business Impact**

*  Helps developers optimize pricing, size, and features based on market trends.

*  Businesses can identify profitable app categories and areas of improvement.

*  Provides insights into user satisfaction and engagement via sentiment analysis.

*  Supports data-driven decision-making for app marketing and updates.

**Conclusion**

*  This EDA provides actionable insights into what drives app success in the Google Play Store.
*  By combining app metadata with user sentiments, we highlight both quantitative and qualitative factors that influence installs and ratings, helping stakeholders better understand the dynamics of the app marketplace.

**Author**

Sagar Jain

LinkedIn : https://www.linkedin.com/in/sagar-jain-558172162/
