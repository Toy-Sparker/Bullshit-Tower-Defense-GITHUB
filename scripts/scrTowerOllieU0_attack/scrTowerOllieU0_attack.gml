	// Attack state
	target = instance_nearest(x,y,oEnemy); 
	image_speed = atkspd;
		// Attack Enemy
		if(image_index > 7) {
			// Create Sword/Projectile
			var osin = (instance_create_layer(x,y,"Projectiles",oOsin))
			with(osin)
			{
			image_alpha = 0.5;
			}
			image_index = 0;
		}