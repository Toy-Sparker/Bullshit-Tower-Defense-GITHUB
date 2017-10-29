	// Attack state
	target = instance_nearest(x,y,oEnemy); 
	image_speed = atkspd;
	direction = point_direction(x,y,(target).x,(target).y);
		// Attack Enemy
		if(image_index > 6) {
			audio_play_sound(sndShotgun0,0,0);
			#region Create Bullets
			var lendiry = lengthdir_y(2,direction);
			var bullet1 = instance_create_layer(x,y + lendiry,"Projectiles",oBullet0);
			var bullet2 = instance_create_layer(x,y + lendiry,"Projectiles",oBullet0);
			var bullet3 = instance_create_layer(x,y + lendiry,"Projectiles",oBullet0);	
			#region Configure Bullets
			with(bullet1)
			{
			direction = other.direction;
			image_angle = direction;
			speed = 4;
			}
			
			with(bullet2)
			{
			direction = other.direction - 25;
			image_angle = direction;
			speed = 4;
			}
			
			with(bullet3)
			{
			direction = other.direction + 25;
			image_angle = direction;
			speed = 4;
			}
			#endregion	
			#endregion
			image_index = 0;
		}