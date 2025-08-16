# run from dialog: about
# with... all of those macros
# | storage rc_stray_projectiles:storage config

$dialog show @s {\
  "type": "minecraft:multi_action",\
  "title": "Delete Stray Projectiles Config",\
  "inputs": [\
    {\
      "type": "minecraft:boolean",\
      "key": "wither_skull_deletion_enabled",\
      "label": {\
        "text": "Wither Skull Deletion"\
      },\
      "initial": $(config_wither_skull_enabled),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:number_range",\
      "key": "wither_skull_max_distance",\
      "width": 250,\
      "label": {\
        "text": "Wither Skull Max Distance"\
      },\
      "start": 0,\
      "end": 1024,\
      "step": 4,\
      "initial": $(config_wither_skull_distance)\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "wind_charge_deletion_enabled",\
      "label": {\
        "text": "Wind Charge Deletion"\
      },\
      "initial": $(config_wind_charge_enabled),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:number_range",\
      "key": "wind_charge_max_distance",\
      "width": 250,\
      "label": {\
        "text": "Wind Charge Max Distance"\
      },\
      "start": 0,\
      "end": 1024,\
      "step": 4,\
      "initial": $(config_wind_charge_distance)\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "fireball_deletion_enabled",\
      "label": {\
        "text": "Fireball Deletion"\
      },\
      "initial": $(config_fireball_enabled),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:number_range",\
      "key": "fireball_max_distance",\
      "width": 250,\
      "label": {\
        "text": "Fireball Max Distance"\
      },\
      "start": 0,\
      "end": 1024,\
      "step": 4,\
      "initial": $(config_fireball_distance)\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "small_fireball_deletion_enabled",\
      "label": {\
        "text": "Small Fireball Deletion"\
      },\
      "initial": $(config_small_fireball_enabled),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:number_range",\
      "key": "small_fireball_max_distance",\
      "width": 250,\
      "label": {\
        "text": "Small Fireball Max Distance"\
      },\
      "start": 0,\
      "end": 1024,\
      "step": 4,\
      "initial": $(config_small_fireball_distance)\
    },\
    {\
      "type": "minecraft:boolean",\
      "key": "dragon_fireball_deletion_enabled",\
      "label": {\
        "text": "Dragon Fireball Deletion"\
      },\
      "initial": $(config_dragon_fireball_enabled),\
      "on_true": "1",\
      "on_false": "0"\
    },\
    {\
      "type": "minecraft:number_range",\
      "key": "dragon_fireball_max_distance",\
      "width": 250,\
      "label": {\
        "text": "Dragon Fireball Max Distance"\
      },\
      "start": 0,\
      "end": 1024,\
      "step": 4,\
      "initial": $(config_dragon_fireball_distance)\
    }\
  ],\
  "actions": [\
    {\
      "label":{\
        "translate": "gui.back"\
      },\
      "action": {\
        "type": "show_dialog",\
        "dialog": "rc_stray_projectiles:about"\
      }\
    },\
    {\
      "label": "Confirm",\
      "action": {\
        "type": "minecraft:dynamic/run_command",\
        "template": "function rc_stray_projectiles:set_config {wither_skull_deletion_enabled:$(wither_skull_deletion_enabled),wither_skull_max_distance:$(wither_skull_max_distance),wind_charge_deletion_enabled:$(wind_charge_deletion_enabled),wind_charge_max_distance:$(wind_charge_max_distance),fireball_deletion_enabled:$(fireball_deletion_enabled),fireball_max_distance:$(fireball_max_distance),small_fireball_deletion_enabled:$(small_fireball_deletion_enabled),small_fireball_max_distance:$(small_fireball_max_distance),dragon_fireball_deletion_enabled:$(dragon_fireball_deletion_enabled),dragon_fireball_max_distance:$(dragon_fireball_max_distance)}"\
      }\
    }\
  ]\
}