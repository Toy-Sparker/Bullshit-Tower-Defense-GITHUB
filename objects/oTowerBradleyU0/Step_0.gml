///Step Event
event_inherited();

//Set direction to Image angle.
image_angle = direction;

//Set Distance
dis = distance_to_object(oEnemy);

#region Tower Brent's States
if(instance_exists(oEnemy)) {
	if(dis<=range) {
		//Start Attacking
		scrTowerBradleyU0_check();
		state = "attack";
		}
	if(dis>range) {
		//Start Idling
		scrTowerBradleyU0_check();
		state = "idle"; 	
		}
	//If it don't exist, Then idle state.
} else if(!instance_exists(oEnemy)) {
	scrTowerBradleyU0_check();
	state = "idle";
}
#endregion