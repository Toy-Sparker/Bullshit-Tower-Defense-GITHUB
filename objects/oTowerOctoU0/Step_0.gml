/// Step Event
event_inherited();

// Set direction to Image angle.
image_angle = direction;

#region Tower Brent's States
if(instance_exists(oEnemy)) {
	if(distance_to_object(oEnemy)<=range) {
		// Start Attacking
		scrTowerOctoU0_check();
		state = "attack";
		}
	if(distance_to_object(oEnemy)>range) {
		// Start Idling
		scrTowerOctoU0_check();
		state = "idle"; 	
		}
	//If it don't exist, Then idle state.
} else if(!instance_exists(oEnemy)) {
	scrTowerOctoU0_check();
	state = "idle";
}
#endregion