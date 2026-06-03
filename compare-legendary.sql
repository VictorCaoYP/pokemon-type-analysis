-- Compare Legendary vs non-Legendary
SELECT 
    Legendary,
    AVG(HP + Attack + Defense + "Sp. Atk" + "Sp. Def" + Speed) AS avg_total,
    COUNT(*) AS pokemon_count
FROM pokemon
GROUP BY Legendary;

