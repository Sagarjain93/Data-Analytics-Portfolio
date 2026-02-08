# Amazon Prime Content Analytics Dashboard 

## Project Overview

This project presents a comprehensive multi-page Power BI dashboard built using Amazon Prime content data. The dashboard provides deep insights into content distribution, ratings, popularity, genres, countries, and contributor performance to support data-driven content analysis.

The analysis is based on two datasets:

* **titles.csv** – Content details (movies & shows)
* **credits.csv** – Cast and crew information

---

## Objectives

* Analyze content distribution across genres and countries
* Evaluate content quality using IMDb and TMDB ratings
* Identify top-performing actors, directors, and roles
* Understand popularity trends and audience engagement
* Build an interactive and professional analytics dashboard

---

## Data Preparation & Cleaning

Performed in **Power Query**:

* Removed blank and invalid IDs
* Cleaned text fields and handled missing values
* Replaced missing descriptions with default values
* Corrected data types (numeric, text, whole number)
* Split multi-value columns:

  * Genres → `Title_Genre` table
  * Production Countries → `Title_Country` table
* Created dimension tables:

  * Genre
  * Country (mapped short codes to full names)
* Removed duplicates and data inconsistencies

---

## Data Model

Star-schema style model:

* **titles_clean** (fact table)
* **credits**
* **Title_Genre** → Genre
* **Title_Country** → Country

Relationships:

* titles_clean[id] → Title_Genre[id]
* titles_clean[id] → Title_Country[id]
* titles_clean[id] → credits[id]

---

## Dashboard Pages

### 1. Genre Analysis

Insights:

* Total genres and top genre
* Titles count by genre
* Average runtime by genre
* Average IMDb score by genre
* Genre distribution (%)

Slicers:
Genre, Type, Country, Release Year, IMDb Score, Runtime

---

### 2. Country Analysis

Insights:

* Total countries
* Titles distribution by country
* Average runtime by country
* Average IMDb score by country
* Highest and lowest rated countries

Country codes mapped to full country names.

---

### 3. Actor & Role Analysis

Insights:

* Total actors and roles
* Top actors by number of titles
* Highest and lowest rated actors
* Genre distribution by actors
* Role distribution (Actor vs Director)

---

### 4. Director Analysis

Insights:

* Top directors by number of titles
* Highest rated directors
* Director performance based on IMDb scores

---

### 5. Ratings & Popularity Analysis

Insights:

* Average IMDb Score
* Average TMDB Score
* Average Popularity
* Highest rated title
* Most popular title
* Top 10 highest rated titles
* Top 10 most popular titles
* Top genres by average rating
* IMDb score distribution (Histogram)
* IMDb Score vs TMDB Popularity (Scatter)
* Rating trend by year

---

## Key KPIs

* Total Titles
* Average IMDb Score
* Average TMDB Score
* Average Popularity
* Top Genres
* Top Actors & Directors
* Highest Rated Content

---

## DAX Measures Used

Examples:

* Average IMDb Score
* Average TMDB Score
* Total Titles
* Top N calculations
* Ranking measures for Actors, Directors, and Genres

---

## Features

* Fully interactive slicers across pages
* Multi-page navigation
* Top N dynamic filtering
* Distribution analysis (histograms)
* Performance comparisons
* Clean and professional layout

---

## Tools Used

* Power BI Desktop
* Power Query
* DAX
* GitHub (version control)

---

## Business Insights

* Drama and Comedy dominate the platform
* Certain niche genres have higher average ratings
* Content quality has improved over time
* A small number of countries contribute the majority of content
* Popularity does not always correlate with high ratings (hidden gems)

---

## Repository Structure

```
Amazon-Prime-PowerBI/
│
├── data/
│   ├── titles.csv
│   ├── credits.csv
│
├── dashboard/
│   └── Amazon_Prime_Dashboard.pbix
│
└── README.md
```

---

## Author

**Sagar Jain**
Data Analyst | Power BI | SQL | Python

---

## Project Status

Completed and ready for portfolio / interview demonstration.

