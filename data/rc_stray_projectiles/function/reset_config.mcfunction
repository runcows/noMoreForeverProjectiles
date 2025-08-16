# run from init

scoreboard players set version rc_stray_projectiles.data 1

scoreboard players set $wither_skull_deletion_enabled rc_stray_projectiles.config 1
scoreboard players set $wind_charge_deletion_enabled rc_stray_projectiles.config 1
scoreboard players set $fireball_deletion_enabled rc_stray_projectiles.config 1
scoreboard players set $small_fireball_deletion_enabled rc_stray_projectiles.config 1
scoreboard players set $dragon_fireball_deletion_enabled rc_stray_projectiles.config 1

scoreboard players set $wither_skull_max_distance rc_stray_projectiles.config 256
scoreboard players set $wind_charge_max_distance rc_stray_projectiles.config 256
scoreboard players set $fireball_max_distance rc_stray_projectiles.config 256
scoreboard players set $small_fireball_max_distance rc_stray_projectiles.config 256
scoreboard players set $dragon_fireball_max_distance rc_stray_projectiles.config 256

scoreboard players set #1000 rc_stray_projectiles.data 1000
scoreboard players set #5 rc_stray_projectiles.data 5

# needed for show_config to actually work properly
data modify storage rc_stray_projectiles:storage config merge value {\
  wither_skull_deletion_enabled:"$(wither_skull_deletion_enabled)",\
  wind_charge_deletion_enabled:"$(wind_charge_deletion_enabled)",\
  fireball_deletion_enabled:"$(fireball_deletion_enabled)",\
  small_fireball_deletion_enabled:"$(small_fireball_deletion_enabled)",\
  dragon_fireball_deletion_enabled:"$(dragon_fireball_deletion_enabled)",\
  wither_skull_max_distance:"$(wither_skull_max_distance)",\
  wind_charge_max_distance:"$(wind_charge_max_distance)",\
  fireball_max_distance:"$(fireball_max_distance)",\
  small_fireball_max_distance:"$(small_fireball_max_distance)",\
  dragon_fireball_max_distance:"$(dragon_fireball_max_distance)",\
}