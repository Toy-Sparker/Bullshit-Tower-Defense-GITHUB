//Checking Idle
if (state = "idle") {
scrTowerBrtU2_idle();
}

//Checking Attack
if (state = "attack") {
	if(instance_exists(oEnemy)) {
	scrTowerBrtU2_attack();
	}
}