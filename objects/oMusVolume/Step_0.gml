 // Set Volume Slider;
y = 30;

if(oControl.sndmenu = 1) {
	image_alpha = 1;
		if(mouse_check_button(mb_left)) && (position_meeting(mouse_x,mouse_y,oMusVolume)) {
			x = clamp(mouse_x,0,40);
			} else if(!mouse_check_button(mb_left)) {	
			}
} else if(oControl.sndmenu = 0) {
image_alpha = 0;	
}