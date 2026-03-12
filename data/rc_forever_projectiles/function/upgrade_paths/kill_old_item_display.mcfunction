# run from #load:pre_load

execute if score rc_forever_projectiles load.status matches 1 unless score rc_forever_projectiles_minor load.status matches 0.. \
  positioned 0. 0 0. run kill @e[type=item_display,tag=rc_forever_projectiles.origin,distance=..0.1,limit=1]
