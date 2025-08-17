# scheduled from init & self
# run from set_config

schedule function rc_forever_projectiles:calculate_config 100t

execute store result storage rc_forever_projectiles:storage config.config_wither_skull_distance int 1 run \
  scoreboard players operation $wither_skull_max_distance rc_forever_projectiles.data = $wither_skull_max_distance rc_forever_projectiles.config
scoreboard players operation $wither_skull_max_distance rc_forever_projectiles.data *= #1000 rc_forever_projectiles.data

execute store result storage rc_forever_projectiles:storage config.config_wind_charge_distance int 1 run \
  scoreboard players operation $wind_charge_max_distance rc_forever_projectiles.data = $wind_charge_max_distance rc_forever_projectiles.config
scoreboard players operation $wind_charge_max_distance rc_forever_projectiles.data *= #1000 rc_forever_projectiles.data

execute store result storage rc_forever_projectiles:storage config.config_fireball_distance int 1 run \
  scoreboard players operation $fireball_max_distance rc_forever_projectiles.data = $fireball_max_distance rc_forever_projectiles.config
scoreboard players operation $fireball_max_distance rc_forever_projectiles.data *= #1000 rc_forever_projectiles.data

execute store result storage rc_forever_projectiles:storage config.config_small_fireball_distance int 1 run \
  scoreboard players operation $small_fireball_max_distance rc_forever_projectiles.data = $small_fireball_max_distance rc_forever_projectiles.config
scoreboard players operation $small_fireball_max_distance rc_forever_projectiles.data *= #1000 rc_forever_projectiles.data

execute store result storage rc_forever_projectiles:storage config.config_dragon_fireball_distance int 1 run \
  scoreboard players operation $dragon_fireball_max_distance rc_forever_projectiles.data = $dragon_fireball_max_distance rc_forever_projectiles.config
scoreboard players operation $dragon_fireball_max_distance rc_forever_projectiles.data *= #1000 rc_forever_projectiles.data


execute if score $wither_skull_deletion_enabled rc_forever_projectiles.config matches 1 run data modify storage rc_forever_projectiles:storage config.config_wither_skull_enabled set value "true"
execute unless score $wither_skull_deletion_enabled rc_forever_projectiles.config matches 1 run data modify storage rc_forever_projectiles:storage config.config_wither_skull_enabled set value "false"

execute if score $wind_charge_deletion_enabled rc_forever_projectiles.config matches 1 run data modify storage rc_forever_projectiles:storage config.config_wind_charge_enabled set value "true"
execute unless score $wind_charge_deletion_enabled rc_forever_projectiles.config matches 1 run data modify storage rc_forever_projectiles:storage config.config_wind_charge_enabled set value "false"

execute if score $fireball_deletion_enabled rc_forever_projectiles.config matches 1 run data modify storage rc_forever_projectiles:storage config.config_fireball_enabled set value "true"
execute unless score $fireball_deletion_enabled rc_forever_projectiles.config matches 1 run data modify storage rc_forever_projectiles:storage config.config_fireball_enabled set value "false"

execute if score $small_fireball_deletion_enabled rc_forever_projectiles.config matches 1 run data modify storage rc_forever_projectiles:storage config.config_small_fireball_enabled set value "true"
execute unless score $small_fireball_deletion_enabled rc_forever_projectiles.config matches 1 run data modify storage rc_forever_projectiles:storage config.config_small_fireball_enabled set value "false"

execute if score $dragon_fireball_deletion_enabled rc_forever_projectiles.config matches 1 run data modify storage rc_forever_projectiles:storage config.config_dragon_fireball_enabled set value "true"
execute unless score $dragon_fireball_deletion_enabled rc_forever_projectiles.config matches 1 run data modify storage rc_forever_projectiles:storage config.config_dragon_fireball_enabled set value "false"
