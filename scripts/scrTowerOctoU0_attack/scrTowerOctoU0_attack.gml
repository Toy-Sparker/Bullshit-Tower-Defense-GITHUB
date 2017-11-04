	// Attack state
	target = instance_nearest(x,y,oEnemy); 
	if(hat = 1) {
	image_speed = atkspd;
	} else {
	image_speed = 0;
	image_index = 0;
	}
	direction = point_direction(x,y,(target).x,(target).y);
		// Attack Enemy
		if(image_index > 5) && (hat = 1) {
			// Create Sword/Projectile
			with(instance_create_layer(x,y,"Projectiles",oTophat))
			{
			direction = other.direction;
			speed = 8;
			}
			hat = 0;
			oTophat.owner = id;
			image_index = 0;
		}