#> k0damage:damage/_/set
# @within function k0damage:damage/apply

execute if entity @s[type=player] run scoreboard players operation @s ScoreToHealth = #k0damage.current_health k0core.temporary
execute if entity @s[type=!player] store result entity @s Health float 0.01 run scoreboard players get #k0damage.current_health k0core.temporary

