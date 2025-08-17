scoreboard players set rc_forever_projectiles load.status 1

forceload add 0 0
execute positioned 0. 0 0. unless entity @e[type=item_display,tag=rc_forever_projectiles.origin,distance=..0.1,limit=1] run \
  summon minecraft:item_display ~ ~ ~ {Tags:["rc_forever_projectiles.origin","smithed.entity","smithed.strict"]}

scoreboard objectives add rc_forever_projectiles.config dummy
scoreboard objectives add rc_forever_projectiles.data dummy
scoreboard objectives add rc_forever_projectiles.distance dummy

execute unless score version rc_forever_projectiles.data matches 1.. run function rc_forever_projectiles:reset_config

schedule function rc_forever_projectiles:tick 1t
schedule function rc_forever_projectiles:calculate_config 2t