**Amazon Prime EDA – Movies & TV Shows**

<img width="800" height="451" alt="image" src="https://github.com/user-attachments/assets/4f580261-755a-485d-9373-27e4621b682c" />


**Project Overview**

This project is an Exploratory Data Analysis (EDA) of Amazon Prime Video’s catalog of movies and TV shows.
The dataset (two CSV files – titles.csv and credits.csv) was cleaned, merged, and analyzed to uncover content trends, ratings, genres, and audience preferences.

The goal was to answer questions like:

1. What genres dominate Amazon Prime?

2. How do movies compare to shows in terms of ratings?

3. Which countries produce the most popular content?

4. Do runtime, certifications, or release year affect ratings?

**Dataset Details**

The dataset included:

1. Categorical features: genres, age_certification, type (Movie/Show), production_countries

2. Numerical features: release_year, runtime, imdb_score, imdb_votes, tmdb_score, seasons

3. Multi-value fields: genres, production_countries (exploded for deeper analysis)

**Steps Performed**

1. Data Cleaning & Preprocessing

2. Merged titles.csv and credits.csv

3. Removed duplicates & handled nulls

4. Exploded multi-value columns (genres, production_countries)

5. Standardized data types & formatting

**Univariate Analysis**

Distribution of genres, content type (Movie vs Show), certifications, and production countries


**Bivariate Analysis**

Relationship between:

Genre & Certification

Type (Movie/Show) & IMDb Score

Runtime & IMDb Score

Release Year & IMDb Score


**Multivariate Analysis**

Combined factors (e.g., Genre + Certification + IMDb Score)

Boxplots, facet grids, and cross-genre comparisons


**Correlation & Pairwise Analysis**

Correlation heatmap for numerical features

Pairplots to explore patterns across runtime, release_year, popularity, etc.


**Key Insights**

1.  Movies dominate, but TV shows generally get higher IMDb ratings
2.  Drama, Comedy, and Action are the top genres
3.  United States, India, and UK lead in content production
4.  2000–2022 saw a huge rise in new content with better ratings
5.  R / TV-MA certifications often correlate with higher ratings
6.  Sweet spot runtime: 90–120 minutes for better audience reception

**Business Impact**

These insights can help:

1. Content teams decide which genres and formats work best

2. Marketing teams target audiences based on geography & certification trends

3. Production teams focus on genres/certifications most likely to succeed

**Tools & Libraries Used**

1. Python 

2. Pandas – Data cleaning & manipulation

3. Matplotlib & Seaborn – Data visualization

4. NumPy – Numerical computations

**What I Learned**

1. Handling real-world messy data (nulls, duplicates, list-type fields)

2. Using EDA for storytelling with data

3. Finding actionable insights that can guide streaming strategies

**Project Structure**

📁 Amazon_Prime_EDA/
 ├── titles.csv
 ├── credits.csv
 ├── Amazon_prime_eda.ipynb
 ├── images/
 │    ├── content_type.png
 │    ├── imdb_score_type.png
 │    ├── genre_certification.png
 │    └── correlation_heatmap.png
 └── README.md

**Acknowledgements**

This project gave me hands-on experience in EDA, visualization, and insight generation with real-world streaming data.
