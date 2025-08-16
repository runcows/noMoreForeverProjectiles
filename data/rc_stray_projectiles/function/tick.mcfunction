# scheduled from init & self

schedule function rc_stray_projectiles:tick 5t

execute if score $wither_skull_deletion_enabled rc_stray_projectiles.config matches 1 positioned 0. 0 0. \
  as @e[type=minecraft:wither_skull,tag=!smithed.entity] run function rc_stray_projectiles:get_distance

execute if score $wind_charge_deletion_enabled rc_stray_projectiles.config matches 1 positioned 0. 0 0. \
  as @e[type=minecraft:wind_charge,tag=!smithed.entity] run function rc_stray_projectiles:get_distance

execute if score $fireball_deletion_enabled rc_stray_projectiles.config matches 1 positioned 0. 0 0. \
  as @e[type=minecraft:fireball,tag=!smithed.entity] run function rc_stray_projectiles:get_distance

execute if score $small_fireball_deletion_enabled rc_stray_projectiles.config matches 1 positioned 0. 0 0. \
  as @e[type=minecraft:small_fireball,tag=!smithed.entity] run function rc_stray_projectiles:get_distance
  
execute if score $dragon_fireball_deletion_enabled rc_stray_projectiles.config matches 1 positioned 0. 0 0. \
  as @e[type=minecraft:dragon_fireball,tag=!smithed.entity] run function rc_stray_projectiles:get_distance
