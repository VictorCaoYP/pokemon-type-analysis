**Pokemon Type Analysis:** Finding the Strongest Pokemon Types Across Six Stats
**Tools:** Tableau, SQL (SQLite) 
**Dataset:** Pokemon Gen 1-6 (Kaggle, 800 records) 
**Tableau Public:** #Link

**Overview**
This analysis looks at Pokemon across 18 types to determine the strongest types based on their six base stats. The assessment utilizes a calculated total stats metric to rank each type from strongest to weakest - and visualizes the stats profiles to show why each type ends up with such a position.

**Business Question**
With competitive Pokemon games players need to understand which types provide the best statistical foundations. These studies helps to answer two main questions regarding Pokemon types:
-	Which types of Pokemon are the strongest?
-	What is the statistical profile for each of these types (offensive specialist vs. defensive tank, for example)?

**Approach**
The Pokemon CSV was loaded into SQL with aggregation for Type 1 stats.
The data quality issue inherent in the existing dataset was discovered - the pre-calculated total stats did not match the type sums. The calculated field incorporating all six stats was created instead.
Individual bar charts were built for each of the six stats.
A heatmap incorporates all six stats across all 18 types - in one view - with the sort ordered by the calculated total stats metric.

**Key Findings**
Dragon types take the #1 spot as the strongest overall - with an average total stat value of 550. Dragon types are among the top three performers across nearly every category of stats - they are the most balanced powerhouse type.
Steel types come second overall at 488 - taking a completely different path to such high stats: exceptional Defense (126 average - highest of any type) and good Special Defense stats, at the cost of the slowest Speed.
Flying and Steel types come very close here with 484 versus 488 - but represent opposite approaches. Flying boasts exceptional Speed (103 average - highest of any type) whereas Steel is a defensive tank.
The specialists in Special Attack are clearly Psychic types (98) and Electric types (90) - both of whom have below-average physical Attack stats.
Bug types come lowest overall with no standout stats - followed by Fairy types at 415 who feature low Attack power and the lowest Speed of any type of Pokemon.

**Data Quality Note**
The data's pre-calculated "Total" stat exhibited inconsistencies - for example, Cloyster has six stats that total 525 yet the field states 275. This calculation of base stats was used instead as the metric in the report.

**Limitations**
This scope touches only upon a specific subset of Pokemon data - do not over-extrapolate:
Generations covered are limited to Gen 1-6 (Red/Blue through X/Y). Gen 7-9 Pokemon data not included.
All Pokemon are categorized by type - primary type only. Dual type Pokemon are shown only in their Type 1 classification. This particularly impacts the size and speed of the Flying category relative to true Flying-type Pokemon populations.
Legendaries are present within these averages. Types boasting many legendaries skew more heavily - Dragon and Psychic types exemplify this effect.

**Future Work**
Work can expand this data set to include Gen 7-9 (1,028 total Pokemon)
Incorporate Type 2 information to allow dual-type Pokemon to contribute to both type categories
