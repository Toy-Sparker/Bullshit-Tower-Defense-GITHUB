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

}
#endregion

#region Sound Menu
if(sndmenu = 1) {
towerlist = 0;
draw_sprite_ext(sPixel,0,0,0,room_width,room_height,0,c_black,0.5);
draw_text(0,30,"Sound Menu");
draw_text(0,120,"None");
draw_text(0,150,"Target Spotted");
draw_text(0,180,"Defending");
draw_text(0,210,"Craptastic");
draw_text(0,60,"Music Volume: " + string(musvolume));
draw_sprite_ext(sPixel,0,0,86,2,0.3,0,c_white,0.1);
draw_text(210,60,"SFX Volume: " + string(sndvolume));
draw_sprite_ext(sPixel,0,210,86,2,0.3,0,c_white,0.1);
} else {
draw_text(0,30,"Music: " + string(musicplaying));
}
#endregion

#region Draw Tower List
if(towerlist = 1) {
draw_sprite_ext(sPixel,0,896,0,room_width,room_height,0,c_black,0.33);
//Brent
draw_set_alpha(0.5);
draw_sprite(sTowerBrentIcon,0,960,32);
draw_set_alpha(1);
draw_set_halign(fa_middle);
draw_text_transformed(960,58,"Brent \nPortal Power: 5",0.5,0.5,0);
//Bradley
draw_set_alpha(0.5);
draw_sprite(sTowerBradleyIcon,0,960,128);
draw_set_alpha(1);
draw_set_halign(fa_middle);
draw_text_transformed(960,152,"Bradley \nPortal Power: 10",0.5,0.5,0);
draw_set_halign(fa_left);
}  
#endregion

#region Draw Currency
draw_set_halign(fa_right);
draw_text(896,0,"Portal Power: " + string(ppower));
draw_set_halign(fa_left);
#endregion

#region Draw Time
draw_text(0,2,"Wave Time: " + string(wtime));
#endregion