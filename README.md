# <img src="https://raw.githubusercontent.com/runcows/noMoreForeverProjectiles/main/pack.svg" alt="Icon" width="35"><!-- $localAssetToURL --> No More Forever Projectiles<!--$headerTitle--><!--$pmc:delete-->
Configurable max distance for projectiles that just shoot straight forever. 

No more Wither Skulls stuck in the stratosphere!

## Affected Entities
- Wither Skulls
- Wind Charges
- Fireballs
- Small Fireballs
- Dragon Fireballs
## Configuration
Can be configured and disabled for each projectile type by OPs in a dialog accessible by the Pause Menu, through the `Data Packs...` button.
##### When Deletion is enabled for a projectile, it will be deleted after traveling the distance specified in the Max Distance (+/- about 5 blocks). 
<img src="https://raw.githubusercontent.com/runcows/noMoreForeverProjectiles/main/config_screenshot.png" alt="Configuration Screen"> <!--$localAssetToURL--> <!--$modrinth:replaceWithVideo--> <!--$pmc:delete-->

## Known Issues
If you can't find the options screen in the pause menu, there might be something overriding it. You can alternatively access them by running the following command as an OP
```mcfunction
/dialog show @s rc_forever_projectiles:about
```

Realms servers are not supported.
