#> k0damage:damage/no_output_kill
# @api

execute store result score #k0damage.show_death_messages k0core.temporary run gamerule showDeathMessages
gamerule showDeathMessages false
kill @s
execute if score #k0damage.show_death_messages k0core.temporary matches 1 run gamerule showDeathMessages true

