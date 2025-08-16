# @s = projectile to track
# at 0. 0 0. in overworld
# run from tick

# add new motion to distance
data modify storage rc_stray_projectiles:storage temp.temp0 set from entity @s Motion[0]
data modify storage rc_stray_projectiles:storage temp.temp1 set from entity @s Motion[1]
data modify storage rc_stray_projectiles:storage temp.temp2 set from entity @s Motion[2]
execute as @e[type=minecraft:item_display,tag=rc_stray_projectiles.origin,limit=1,distance=..0.1] run \
  function rc_stray_projectiles:modify with storage rc_stray_projectiles:storage temp

scoreboard players operation $temp_motion rc_stray_projectiles.data *= #5 rc_stray_projectiles.data
scoreboard players operation @s rc_stray_projectiles.distance += $temp_motion rc_stray_projectiles.data

# kill if over distance
execute if entity @s[type=minecraft:wither_skull] if score @s rc_stray_projectiles.distance > $wither_skull_max_distance rc_stray_projectiles.data run kill @s
execute if entity @s[type=minecraft:wind_charge] if score @s rc_stray_projectiles.distance > $wind_charge_max_distance rc_stray_projectiles.data run kill @s
execute if entity @s[type=minecraft:fireball] if score @s rc_stray_projectiles.distance > $fireball_max_distance rc_stray_projectiles.data run kill @s
execute if entity @s[type=minecraft:small_fireball] if score @s rc_stray_projectiles.distance > $small_fireball_max_distance rc_stray_projectiles.data run kill @s
execute if entity @s[type=minecraft:dragon_fireball] if score @s rc_stray_projectiles.distance > $dragon_fireball_max_distance rc_stray_projectiles.data run kill @s
