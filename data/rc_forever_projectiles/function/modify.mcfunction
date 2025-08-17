# as rc_forever_projectiles.origin  item_display
# with {temp0, temp1, temp2}
# run from get_distance

$data modify entity @s transformation set value [$(temp0)f,0f,0f,0f,$(temp1)f,0f,0f,0f,$(temp2)f,0f,0f,0f,0f,0f,0f,1f]

execute store result score $temp_motion rc_forever_projectiles.data run data get entity @s transformation.scale[0] 1000