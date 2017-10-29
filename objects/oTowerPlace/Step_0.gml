 /// Step Event

x = mouse_x
y = mouse_y
 
#region Placing/Cancelling
	//If Not Placeable (Cause of Not meeting Tower Area)
	if(mouse_check_button_released(mb_left)) && (image_blend = c_red) {
	audio_play_sound(sndCancel0,0,0);
	if(tower = oTowerBrentU0) {
	oControl.ppower += 5;
	} else if(tower = oTowerBradleyU0) {
	oControl.ppower += 10;	
	}
	instance_destroy();	
	} else
	//If Placeable
	if(mouse_check_button_released(mb_left)) && (image_blend = c_green)  {
	instance_create_layer(x,y,"Towers",tower);
	audio_play_sound(sndTowerPlaced,0,0);
	instance_destroy();
	} 
#endregion 