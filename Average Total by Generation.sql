-- Power creep: average total by generation
SELECT 
    Generation,
    AVG(HP + Attack + Defense + "Sp. Atk" + "Sp. Def" + Speed) AS avg_total
FROM pokemon
GROUP BY Generation
ORDER BY Generation;


