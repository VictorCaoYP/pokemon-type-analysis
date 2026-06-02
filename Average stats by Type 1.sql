-- Average stats by Type 1
SELECT 
    "Type 1",
    AVG(HP) AS avg_hp,
    AVG(Attack) AS avg_attack,
    AVG(Defense) AS avg_defense,
    AVG("Sp. Atk") AS avg_sp_atk,
    AVG("Sp. Def") AS avg_sp_def,
    AVG(Speed) AS avg_speed,
    AVG(HP + Attack + Defense + "Sp. Atk" + "Sp. Def" + Speed) AS avg_total
FROM pokemon
GROUP BY "Type 1"
ORDER BY avg_total DESC;

