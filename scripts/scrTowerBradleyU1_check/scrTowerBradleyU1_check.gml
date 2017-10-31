//Checking Idle
if (state = "idle") {
scrTowerBradleyU1_idle();
}

//Checking Attack
if (state = "attack") {
	if(instance_exists(oEnemy)) {
	scrTowerBradleyU1_attack();
	}
}