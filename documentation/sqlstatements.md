SELECT
    combat_ratio.value as cr,
    combat_numbers.value as cn,
    enemy.endurance as enemy,
    hero.endurance as hero
from
    combat
    join combat_ratio on combat.ratio = combat_ratio.id
    and combat_ratio.value = -11
    join combat_numbers on combat.random = combat_numbers.id
    and combat_numbers.value = 3
    join combat_results enemy on combat.enemy = enemy.id
    join combat_results hero on combat.hero = hero.id;


SELECT
    combat_ratio.value as cr,
    combat_numbers.value as cn,
    enemy.endurance as enemy,
    hero.endurance as hero
from
    combat
    join combat_ratio on combat.ratio = combat_ratio.id
    and combat_ratio.value between -11 and 0
    join combat_numbers on combat.random = combat_numbers.id
    and combat_numbers.value = 10
    join combat_results enemy on combat.enemy = enemy.id
    join combat_results hero on combat.hero = hero.id;
