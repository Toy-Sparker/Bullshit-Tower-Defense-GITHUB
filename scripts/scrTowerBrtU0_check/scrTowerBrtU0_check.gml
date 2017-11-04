//Checking Idle
if (state = "idle") {
scrTowerBrtU0_idle();
}

//Checking Attack
if (state = "attack") {
	if(instance_exists(oEnemy)) {
		scrTowerBrtU0_attack();
	}
}