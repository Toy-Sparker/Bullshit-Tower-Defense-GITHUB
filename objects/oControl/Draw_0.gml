
#region Draw Selection
#region Draw UI 
if(instance_exists(selected)) {
if(selected != noone) {
draw_set_alpha(0.25);
draw_set_color(c_black);
draw_circle((selected).x,(selected).y,(selected).range, 0);
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_font(Font0);
draw_set_halign(fa_middle);
draw_text_transformed(40,192,(selected).towername,0.25,0.25,0);
draw_set_halign(fa_left);
draw_sprite_ext(sPixel,0,0,192,320,240,0,c_black,0.33);
draw_set_alpha(1);
#endregion
#region Draw Tower Upgrade & Display UI
#region Brent Upgrades & Displays
//Brent U0
if((selected).towertype = "BrentU0") {
draw_sprite_ext(sPixel,0,80,220,1.5,0.12,0,c_black,0.33);
draw_text_transformed(80,220,"Upgrade 1: 'Online Guide'",0.33,0.33,0);
draw_text_transformed(80,230,"Brent searches up an online guide for further range and a small increase in speed.",0.25,0.25,0);
draw_sprite_ext(sBdisplay0,0,40,240,0.22,0.22,0,c_white,0.5);
}
//Brent U1
if((selected).towertype = "BrentU1") { 
draw_sprite_ext(sPixel,0,80,220,1.6,0.12,0,c_black,0.33);
draw_text_transformed(80,220,"Upgrade 2: 'Improve on C#'",0.33,0.33,0);
draw_text_transformed(80,230,"Brent spends hours on improving his C#, giving him and his projectile more speed.",0.25,0.25,0);
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
if((selected).towertype = "BradleyU0") {
draw_sprite_ext(sPixel,0,80,220,1.5,0.12,0,c_black,0.33);
draw_text_transformed(80,220,"Upgrade 1: 'YTP'",0.33,0.33,0);
draw_text_transformed(80,230,"Bradley watches a YTP... But he does get hyper from it and has a trinkle in speed",0.25,0.25,0);
draw_sprite_ext(sBdlydisplay0,0,40,240,0.22,0.22,0,c_white,0.5);
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