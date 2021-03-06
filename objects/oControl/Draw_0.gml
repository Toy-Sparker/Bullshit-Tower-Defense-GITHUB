/// Draw GUI
// UI

draw_set_font(Font0);
var musicplaying = "";

#region Check soundtrack list
switch(soundtrack) {

// None
case (musNull) : musicplaying = "None"; break;

// Soundtrack 01 - Target Spotted
case (musTargetSpotted) : musicplaying = "Target Spotted"; break;
 
// Soundtrack 02 - Defending
case (musDefending) : musicplaying = "Defending"; break;

// Soundtrack 03 - Craptastic
case (musCraptastic) : musicplaying = "Craptastic"; break;

// Soundtrack 04 - Shotguns & Swords
case (musShotgunsSwords) : musicplaying = "Shotguns & Swords"; break;

}
#endregion

#region Draw Selection
#region Draw Bottom UI 
if(instance_exists(selected)) {
if(selected != noone) {
draw_set_color(c_white);
draw_set_font(Font0);
draw_set_halign(fa_middle);
draw_text_transformed(40,192,(selected).towername,0.25,0.25,0);
draw_set_halign(fa_left);
draw_sprite_ext(sPixel,0,0,192,320,240,0,c_black,0.33);
draw_set_alpha(1);
draw_text_transformed(80,200,"Current Thought: " + string((selected).thghtstr),0.25,0.25,0);
#region Draw Tower Range
draw_set_alpha(0.25);
draw_set_color(c_black);
draw_circle((selected).x,(selected).y,(selected).range, 0);
draw_set_color(c_white);
draw_set_alpha(1);
#endregion
#endregion
#region Draw Tower Upgrade & Display UI
#region Brent Upgrades & Displays
//Brent U0
if((selected).towertype = "BrentU0") {
draw_sprite_ext(sPixel,0,80,220,1.5,0.12,0,c_black,0.33);
draw_text_transformed(80,220,"Upgrade 1: 'Online Guide'",0.33,0.33,0);
draw_text_transformed(80,230,"Brent searches up an online guide for further range and a\nsmall increase in speed.",0.25,0.25,0);
draw_sprite_ext(sBdisplay0,0,40,240,0.22,0.22,0,c_white,0.5);
}
//Brent U1
if((selected).towertype = "BrentU1") { 
draw_sprite_ext(sPixel,0,80,220,1.6,0.12,0,c_black,0.33);
draw_text_transformed(80,220,"Upgrade 2: 'Improve on C#'",0.33,0.33,0);
draw_text_transformed(80,230,"Brent spends hours on improving his C#, giving him and his\nprojectile more speed.",0.25,0.25,0);
draw_sprite_ext(sBdisplay1,0,40,240,0.22,0.22,0,c_white,0.5);
}
//Brent U2
if((selected).towertype = "BrentU2") { 
draw_sprite_ext(sPixel,0,80,220,2.2,0.12,0,c_black,0.33);
draw_text_transformed(80,220,"Upgrade 3: 'Play reaction time game'",0.33,0.33,0);
draw_text_transformed(80,230,"Brent plays a reaction time game to drastically improve his speed.",0.25,0.25,0);
draw_sprite_ext(sBdisplay2,0,40,240,0.22,0.22,0,c_white,0.5);
}
#endregion
#region Bradley Upgrades & Displays
//Bradley U0
if((selected).towertype = "BradleyU0") {
draw_sprite_ext(sPixel,0,80,220,1.5,0.12,0,c_black,0.33);
draw_text_transformed(80,220,"Upgrade 1: 'YTP'",0.33,0.33,0);
draw_text_transformed(80,230,"Bradley watches a YTP... But he does get hyper from it and\nhas a trinkle in speed",0.25,0.25,0);
draw_sprite_ext(sBdlydisplay0,0,40,240,0.22,0.22,0,c_white,0.5);
}
//Bradley U1
if((selected).towertype = "BradleyU1") {
draw_sprite_ext(sPixel,0,80,220,1.5,0.12,0,c_black,0.33);
draw_text_transformed(80,220,"Upgrade 2: 'Benelli M4 Super 90'",0.33,0.33,0);
draw_text_transformed(80,230,"Bradley gets a Combat Shotgun, I think it's better?",0.25,0.25,0);
draw_sprite_ext(sBdlydisplay0,0,40,240,0.22,0.22,0,c_white,0.5);
}
#endregion
#region Octo Displays
//Octo U0
if((selected).towertype = "OctoU0") {
draw_text_transformed(80,230,"Gentleman Octopus can toss his tophat like a boomerang.",0.25,0.25,0);
draw_sprite_ext(sOctodisplay0,0,40,240,0.22,0.22,0,c_white,0.5);
}
#endregion
#region Ollie Upgrades & Displays
//Ollie U0
if((selected).towertype = "OllieU0") {
draw_sprite_ext(sPixel,0,80,220,1.5,0.12,0,c_black,0.33);
draw_text_transformed(80,220,"Upgrade 1: 'Sloth'",0.33,0.33,0);
draw_text_transformed(80,230,"Not the animal, The sin, She slows the shit for a small moment",0.25,0.25,0);
draw_sprite_ext(sBdisplay0,0,40,240,0.22,0.22,0,c_white,0.5);
}
#endregion
}
#endregion
}
#endregion

#region Activate Waves
if(active = 0) {
draw_set_alpha(Wave(0.5,0.25,1,0));
draw_set_halign(fa_middle);
draw_text_transformed(room_width/2,room_height/2,"Press Space to Start Next Wave",0.3,0.3,0);
draw_set_alpha(1);
draw_set_halign(fa_left);
} else {
}
#endregion

#region Draw Mouse Coordinates
/*
draw_text_transformed(mouse_x,mouse_y + 6,"MX: " + string(mouse_x),0.2,0.2,0);
draw_text_transformed(mouse_x,mouse_y - 6,"MY: " + string(mouse_y),0.2,0.2,0);
*/
#endregion

#region Draw Tower List
if(towerlist = 1) {
draw_sprite_ext(sPixel,0,276,0,room_width,room_height,0,c_black,0.33);
//Brent
draw_set_alpha(0.5);
draw_sprite(sTowerBrentU0,0,298,6);
draw_set_alpha(1);
draw_set_halign(fa_middle);
draw_text_transformed(298,14,"Brent\nPortal Power: 5",0.2,0.2,0);
//Bradley
draw_set_alpha(0.5);
draw_sprite(sTowerBradleyU0,0,298,34);
draw_set_alpha(1);
draw_set_halign(fa_middle);
draw_text_transformed(298,42,"Bradley\nPortal Power: 10",0.2,0.2,0);
draw_set_halign(fa_left);
//Ollie
draw_set_alpha(0.5);
draw_sprite(sTowerOllieU0,0,298,62);
draw_set_alpha(1);
draw_set_halign(fa_middle);
draw_text_transformed(298,70,"Ollie\nPortal Power: 30",0.2,0.2,0);
draw_set_halign(fa_left);
}
#endregion

#region Draw Currency & Damage
draw_set_halign(fa_right); 
draw_text_transformed(276,0,"Portal Power: " + string(ppower),0.25,0.25,0);
draw_text_transformed(276,6,"Damage (HP): " + string(damage),0.25,0.25,0);
draw_set_halign(fa_left);
#endregion

#region Draw Time & Wave
draw_text_transformed(42,2,"Current Wave: " + string(w),0.25,0.25,0);
draw_text_transformed(0,2,"Wave Time: " + string(wtime),0.25,0.25,0);
#endregion

#region Sound Menu
if(sndmenu = 1) {
towerlist = 0;
draw_sprite_ext(s1Pixel,0,0,0,room_width,room_height,0,c_black,0.5);
draw_text_transformed(0,18,"Music Volume: " + string(musvolume),0.25,0.25,0);
draw_sprite_ext(s1Pixel,0,0,27,40,6,0,c_white,0.1);
draw_text_transformed(66,18,"SFX Volume: " + string(sndvolume),0.25,0.25,0);
draw_sprite_ext(s1Pixel,0,66,27,40,6,0,c_white,0.1);
draw_text_transformed(0,8,"Sound Menu",0.4,0.4,0);
draw_text_transformed(0,36,"None",0.33,0.33,0);
draw_text_transformed(0,46,"Target Spotted",0.33,0.33,0);
draw_text_transformed(0,56,"Defending",0.33,0.33,0);
draw_text_transformed(0,66,"Craptastic",0.33,0.33,0);
draw_text_transformed(0,76,"Shotguns and Swords",0.33,0.33,0);
} else {
draw_text_transformed(0,8,"Music: " + string(musicplaying),0.25,0.25,0);
}
#endregion