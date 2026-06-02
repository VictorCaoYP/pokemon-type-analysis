Pokemon Type Analysis: Identifying the Strongest Types Across Six Stats
Tools: Tableau, SQL (SQLite)
Dataset: Pokemon Gen 1-6 (Kaggle, 800 records)
Tableau Public: #link
Overview
This project analyzes Pokémon across 18 types to identify which types are strongest based on six base stats: HP, Attack, Defense, Special Attack, Special Defense, and Speed. The analysis uses a calculated total stat metric to rank types from strongest to weakest and visualizes individual stat profiles to show why each type ranks where it does.
Business Question
In competitive Pokémon, players need to understand which types offer the best statistical foundations. This analysis answers two related questions:

Which Pokémon types are strongest overall?
What is each type's statistical profile (offensive specialist, defensive tank, balanced, etc.)?

Approach

Loaded the Pokémon CSV into SQL to aggregate average stats by Type 1.
Identified a data quality issue: the dataset's pre-calculated "Total" column did not match the sum of individual stats. Created a calculated field (HP + Attack + Defense + Sp. Atk + Sp. Def + Speed) for accurate ranking.
Built individual bar charts for each of the six stats by type.
Built a heatmap showing all six stats across all 18 types in a single view, sorted by calculated stat total.

Key Findings

Dragon ranks #1 overall with an average stat total of 550. Dragons are top-3 in nearly every stat category, making them the most balanced powerhouse type.
Steel ranks #2 (488) through a completely different path: extreme Defense (126 average, the highest of any type) and strong Special Defense, traded against the slowest Speed.
Flying and Steel finish nearly tied (484 vs. 488) but represent opposite archetypes — Flying is a Speed specialist (103 average, highest of any type), Steel is a defensive tank.
Special Attack specialists emerge clearly: Psychic (98) and Electric (90) dominate this stat while ranking below average in physical Attack.
Bug ranks lowest overall (380) with no standout stat, followed by Fairy (415), which has low Attack and the lowest Speed of any type.

Data Quality Note
The dataset's pre-calculated "Total" column showed inconsistencies (for example, Cloyster's six stats sum to 525 but the column listed 275). To ensure accurate analysis, I created a calculated field that summed the six base stats and used it as the ranking metric throughout.
Limitations
This analysis is scoped to a specific subset of Pokémon data and should not be over-extrapolated:

Generations: Covers Gen 1-6 only (Red/Blue through X/Y). Gen 7-9 Pokémon are not included.
Type 2 excluded: Pokémon are categorized by primary type only. Dual-type Pokémon (e.g., Charizard, Fire/Flying) are counted only in their Type 1 category. This particularly affects the Flying category, which appears smaller and faster than the true population of Flying-type Pokémon.
Legendaries included: Legendary Pokemon are included in all averages. Types with many Legendaries (Dragon, Psychic) benefit disproportionately.

Future Work

Expand dataset to include Gen 7-9 (1,028 total Pokemon)
Incorporate Type 2 so that dual-type Pokemon contribute to both type categories
Add a Legendary toggle filter to the dashboard so viewers can see how rankings shift with and without Legendary Pokemon

Files in This Repo

queries.sql — SQL queries used to aggregate the data
pokemon_analysis.twbx — Tableau workbook
screenshots/ — PNG exports of the final dashboard
