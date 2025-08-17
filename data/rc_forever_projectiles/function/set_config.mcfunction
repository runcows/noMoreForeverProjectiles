# run from show_config exit dialog
# with {wither_skull_deletion_enabled, wither_skull_max_distance, wind_charge_deletion_enabled, wind_charge_max_distance, \
  fireball_deletion_enabled, fireball_max_distance, small_fireball_deletion_enabled, small_fireball_max_distance, \
  dragon_fireball_deletion_enabled, dragon_fireball_max_distance }

$scoreboard players set $wither_skull_deletion_enabled rc_forever_projectiles.config $(wither_skull_deletion_enabled)
$scoreboard players set $wind_charge_deletion_enabled rc_forever_projectiles.config $(wind_charge_deletion_enabled)
$scoreboard players set $fireball_deletion_enabled rc_forever_projectiles.config $(fireball_deletion_enabled)
$scoreboard players set $small_fireball_deletion_enabled rc_forever_projectiles.config $(small_fireball_deletion_enabled)
$scoreboard players set $dragon_fireball_deletion_enabled rc_forever_projectiles.config $(dragon_fireball_deletion_enabled)

$scoreboard players set $wither_skull_max_distance rc_forever_projectiles.config $(wither_skull_max_distance)
$scoreboard players set $wind_charge_max_distance rc_forever_projectiles.config $(wind_charge_max_distance)
$scoreboard players set $fireball_max_distance rc_forever_projectiles.config $(fireball_max_distance)
$scoreboard players set $small_fireball_max_distance rc_forever_projectiles.config $(small_fireball_max_distance)
$scoreboard players set $dragon_fireball_max_distance rc_forever_projectiles.config $(dragon_fireball_max_distance)

function rc_forever_projectiles:calculate_config