//Checking Idle
if (state = "idle") {
scrTowerOllieU0_idle();
}

//Checking Attack
if (state = "attack") {
	if(instance_exists(oEnemy)) {
		scrTowerOllieU0_attack();
	}
}