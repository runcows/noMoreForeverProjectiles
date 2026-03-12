scoreboard players set rc_forever_projectiles load.status 1
scoreboard players set rc_forever_projectiles_minor load.status 1

# ascii runcows = 114, 117, 110, 99, 111, 119, 115
# HEX = 72 75 6E 63 6F 77 73
# multiply each by the characters remaining
# 7*114 + 6*117 + 5*110 + 4*99 + 3*111 + 2*119 + 1*115  =   3132
forceload add 29999999 3132
# UUID = 72756E63-6F77-73-1D-F04CE104D
summon item_display 29999999 ~ 3132 {Tags:["rc_forever_projectiles.forceload_item_display"],UUID:[I;1920298595,1870069875,1900559,80613453]}

scoreboard objectives add rc_forever_projectiles.config dummy
scoreboard objectives add rc_forever_projectiles.data dummy
scoreboard objectives add rc_forever_projectiles.distance dummy

execute unless score version rc_forever_projectiles.data matches 1.. run function rc_forever_projectiles:reset_config

schedule function rc_forever_projectiles:tick 1t
schedule function rc_forever_projectiles:calculate_config 2t
