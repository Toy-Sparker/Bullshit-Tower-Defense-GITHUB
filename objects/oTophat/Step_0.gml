if(speed >= -10) {
speed -= 0.5;
}
if(place_meeting(x,y,oEnemy)) {
hit += 2;
} else if(!place_meeting(x,y,oEnemy)) {
hit -= 1;		
}
ddb--;




if(place_meeting(x,y,owner)) && (ddb <= 0) {
owner.hat = 1;
instance_destroy();
}