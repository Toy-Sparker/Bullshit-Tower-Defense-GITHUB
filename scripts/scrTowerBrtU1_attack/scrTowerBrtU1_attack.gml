	// Attack state
	target = instance_nearest(x,y,oEnemy); 
	image_speed = atkspd;
	direction = point_direction(x,y,(target).x,(target).y);
		// Attack Enemy
		if(image_index == 4) {
			// Create Sword/Projectile
			with(instance_create_layer(x,y,"Projectiles",oSword))
			{
			direction = other.direction;
			image_angle = direction;
			speed = 8;
			}
			image_index = 0;
		}