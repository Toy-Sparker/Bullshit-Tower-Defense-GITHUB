//Checking Idle
if (state = "idle") {
scrTowerOctoU0_idle();
}

//Checking Attack
if (state = "attack") {
	if(instance_exists(oEnemy)) {
		if(hat = 1) {	
		scrTowerOctoU0_attack();
		}
	}
}