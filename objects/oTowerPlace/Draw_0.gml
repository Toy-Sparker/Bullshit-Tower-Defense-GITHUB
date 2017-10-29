/// @description Insert description here
// You can write your code in this editor
draw_self();

if(place_meeting(x,y,oTowerArea))  {
image_blend = c_green;
} else if(!place_meeting(x,y,oTowerArea)) {
image_blend = c_red;
}

if(instance_exists(oTowerParent)) && ((collision_circle(x,y,oTowerParent.cdb,oTowerParent,0,1))) {
image_blend = c_red;	
} else if(instance_exists(oTowerParent)) && ((collision_circle(x,y,oTowerParent.cdb,oTowerParent,0,1))) {
image_blend = c_green;
}