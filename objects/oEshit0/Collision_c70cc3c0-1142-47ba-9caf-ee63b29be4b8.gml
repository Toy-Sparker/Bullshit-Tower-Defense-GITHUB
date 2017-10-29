///Step event
event_inherited();
s -= 0.01;
spd += 0.05;

if(hp <= 0) {
instance_create_layer(x,y,"Misc",oShitdie0);
oControl.ppower++;
}

var part = instance_create_layer(x,y,"Misc",oShitP0);
with part {
image_xscale = random_range(1,1.5);
image_yscale = random_range(1,1.5);
speed = 1.25;
image_speed = 0;
image_index = random(2);
direction = random(360);
}