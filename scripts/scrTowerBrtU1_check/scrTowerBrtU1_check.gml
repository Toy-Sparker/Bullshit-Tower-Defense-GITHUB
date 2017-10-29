//Checking Idle
if (state = "idle") {
scrTowerBrtU1_idle();
}

//Checking Attack
if (state = "attack") {
	if(instance_exists(oEnemy)) {
	scrTowerBrtU1_attack();
	}
}