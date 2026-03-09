Configurable max distance for projectiles that just shoot straight forever. 

No more Wither Skulls stuck in the stratosphere!

## Affected Entities
- Wither Skulls
- Wind Charges
- Fireballs
- Small Fireballs
- Dragon Fireballs
## Configuration
Can be configured and disabled for each projectile type by OPs in a dialog accessible by the Pause Menu.
##### When Deletion is enabled for a projectile, it will be deleted after traveling the distance specified in the Max Distance (+/- about 5 blocks). 
![Configuration Screen](https://cdn.modrinth.com/data/cached_images/49911d95540fafec7751fbe41819ec8732463808_0.webp)

If you can't find the options screen in the pause menu, there might be something overriding it. You can alternatively access them by running the following command as an OP
```mcfunction
/dialog show @s rc_forever_projectiles:about
```
