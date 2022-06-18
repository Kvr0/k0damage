#> k0damage:health/set
# @api

execute if entity @s[type=player] store result score @s ScoreToHealth run data get storage k0damage:input health 100
execute if entity @s[type=!player] run data modify entity @s Health set from storage k0damage:input health
