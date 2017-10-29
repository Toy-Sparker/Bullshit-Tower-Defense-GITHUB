//Spawn Timer
stime++;

//Millisecond
t++; 

//Wave Time
if(t > 60) {
t = 0;	
wtime++;
}


#region Wave 1
if(w = 1) {
//Wave 1 - Force 1

if(wtime < 30) {
	if(stime >= 60 * 2) {
	instance_create_layer(0,0,"Enemies",oEshit0);
	stime = 0;
	} 
}

//Wave 1 - Force 2
if(wtime >= 30) && (wtime < 60) {
	if(stime >= 60 * 1) {
	instance_create_layer(0,0,"Enemies",oEshit0);
	stime = 0;
	} 
}

//Wave 1 - Force 3
if(wtime >= 60) && (wtime < 90) {
	if(stime >= 40) {
	instance_create_layer(0,0,"Enemies",oEshit0);
	stime = 0;
	}
}

//Wave 1 - End Wave
	if(wtime >= 90) {
	stime = 0;
	wtime = 0;
	active = 0;
	}
}
#endregion

#region Wave 2
if(w = 2) {
//Wave 2 - Force 1
	if(wtime <= 30) {
		if(stime >= 30) {
		instance_create_layer(0,0,"Enemies",oEshit0);
		stime = 0;
		} 
}
//Wave 2 - Force 2
	if(wtime >= 40) && (wtime <= 55) {
		if(stime >= 60) {
		instance_create_layer(0,0,"Enemies",oEshit1);
		stime = 0;
		}
}
//Wave 2 - Force 3
	if(wtime >= 55) && (wtime <= 90) {
		if(stime >= 25) {
		instance_create_layer(0,0,"Enemies",oEshit1);
		stime = 0;
		} 
}
//Wave 2 - Force 4
	if(wtime >= 90) && (wtime <= 110) {
		//Spawn the little shits
		if(stime >= 60) {
		instance_create_layer(0,0,"Enemies",oEshit1);
		instance_create_layer(0,0,"Enemies",oEshit0);
		stime = 0;
		}
}
//Wave 2 - End Wave
	if(wtime >= 110) {
	stime = 0;
	wtime = 0;
	active = 0;
	}
}
#endregion

#region Wave 3
if(w = 3) {
//Wave 3 - Force 1

if(wtime <= 30) {
	if(stime >= 30) {
	instance_create_layer(0,0,"Enemies",oEshit1);
	stime = 0;
	} 
}

//Wave 3 - Force 2
if(wtime >= 30) && (wtime <= 60) {
	if(stime >= 25) {
	instance_create_layer(0,0,"Enemies",oEshit0);
	stime = 0;
	} 
}

//Wave 3 - Force 3
if(wtime >= 60) && (wtime <= 75) {
	if(stime >= 30) {
	instance_create_layer(0,0,"Enemies",oEshit0);
	instance_create_layer(0,0,"Enemies",oEshit1);
	stime = 0;
	} 
}

//Wave 3 - Force 4
if(wtime >= 75) && (wtime <= 120) {
	if(stime >= 50) && (t < 5) {
	instance_create_layer(0,0,"Enemies",oEshit0);
	}
	if(stime >= 60) {
	instance_create_layer(0,0,"Enemies",oEshit0);
	stime = 0;
	}
}

//Wave 3 - End Wave
	if(wtime >= 120) {
	stime = 0;
	wtime = 0;
	active = 0;
	}
}
#endregion