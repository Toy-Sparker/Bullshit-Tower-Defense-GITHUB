///Step event
event_inherited();
s -= 0.005;
spd += 0.25;

if(hp <= 0) {
var part = instance_create_layer(x,y,"Misc",oShitP0);
var part = instance_create_layer(x,y,"Misc",oShitP0);
var part = instance_create_layer(x,y,"Misc",oShitP0);
var part = instance_create_layer(x,y,"Misc",oShitP0);
with part {
image_xscale = random_range(0.1,0.5);
image_yscale = random_range(0.1,0.5);
speed = 1.25;
image_speed = 0;
image_index = random(2);
direction = random(360);
}
oControl.ppower++;
}

var part = instance_create_layer(x,y,"Misc",oShitP0);
with part {
image_xscale = random_range(0.1,0.5);
image_yscale = random_range(0.1,0.5);
speed = 1.25;
image_speed = 0;
image_index = random(2);
direction = random(360);
}