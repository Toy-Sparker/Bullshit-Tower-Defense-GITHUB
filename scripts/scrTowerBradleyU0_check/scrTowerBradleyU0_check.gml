//Checking Idle
if (state = "idle") {
scrTowerBradleyU0_idle();
}

//Checking Attack
if (state = "attack") {
	if(instance_exists(oEnemy)) {
	scrTowerBradleyU0_attack();
	}
}