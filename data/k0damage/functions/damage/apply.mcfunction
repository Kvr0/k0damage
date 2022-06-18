#> k0damage:damage/apply
# @api

## Current Health
    execute store result score #k0damage.current_health k0core.temporary run data get entity @s Health 100
    execute store result score #k0damage.damage k0core.temporary run data get storage k0damage:input damage 100
    execute if score @s ScoreToHealth matches -2147483648..2147483647 run scoreboard players operation #k0damage.current_health k0core.temporary = @s ScoreToHealth

    scoreboard players operation #k0damage.current_health k0core.temporary -= #k0damage.damage k0core.temporary

## Set Health
    execute store result storage k0damage:input health float 0.01 run scoreboard players get #k0damage.current_health k0core.temporary
    execute if score #k0damage.current_health k0core.temporary matches 1.. run function k0damage:damage/_/set
    execute if score #k0damage.current_health k0core.temporary matches ..0 run function #k0damage:killed
