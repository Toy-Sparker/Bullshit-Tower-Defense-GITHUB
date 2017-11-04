/// Step event

#region Activate Waves
if(keyboard_check_pressed(vk_space)) && (active = 0) {
active = 1;
w++;
}
#endregion

#region Waves
if(active = 1) {
scrWaveSystem();
}
#endregion

#region Sound Menu
if(keyboard_check_released(ord("M"))) {
sndmenu = sndmenu + 1;
}

if(sndmenu > 1) {
sndmenu = 0;
}
#region VolumeSliders
	
	//Music Volume
	sndvolume = oSndVolume.x/40 - 1.65;
	audio_group_set_gain(audiogroup_music,musvolume,1);
	//Sound Volume - This took hours to figure out for me, I'm an idiot.
	musvolume = oMusVolume.x/40;
	audio_group_set_gain(audiogroup_default,sndvolume,1);
	#endregion

if(sndmenu = 1) {
	#region Soundtracks
	// Player chose "none"
	if(mouse_check_button_pressed(mb_left)) && (point_in_rectangle(mouse_x,mouse_y,0,37,14,42))
	{
	alarm[0]=1; 
	soundtrack = musNull;
	}
	// Player chose soundtrack 01 - Target Spotted
	if(mouse_check_button_pressed(mb_left)) && (point_in_rectangle(mouse_x,mouse_y,0,47,50,52))
	{
	alarm[0]=1;
	soundtrack = musTargetSpotted;
	}
	// Player chose soundtrack 02 - Defending
	if(mouse_check_button_pressed(mb_left)) && (point_in_rectangle(mouse_x,mouse_y,0,57,30,62))
	{
	alarm[0]=1;
	soundtrack = musDefending;
	}
	// Player chose soundtrack 03 - Craptastic
	if(mouse_check_button_pressed(mb_left)) && (point_in_rectangle(mouse_x,mouse_y,0,67,32,72))
	{
	alarm[0]=1;
	soundtrack = musCraptastic;
	}
	// Player chose soundtrack 04 - Shotguns and Swords
	if(mouse_check_button_pressed(mb_left)) && (point_in_rectangle(mouse_x,mouse_y,0,77,68,82))
	{
	alarm[0]=1;
	soundtrack = musShotgunsSwords;
	}
	#endregion
}
#endregion

#region Tower List
if(keyboard_check_pressed(ord("T"))) && (sndmenu  = 0) {
towerlist++;
if(towerlist > 1) towerlist = 0; 
} else if(sndmenu = 1) {	
}

if(towerlist = 1) {
		//Secret - Octo
		if(keyboard_check(ord("G"))) {
			if(keyboard_check(ord("O"))) {
				if(mouse_check_button_pressed(mb_left)) && (!instance_exists(oTowerOctoU0)) {
					if(ppower >= 30) {
					ppower -= 30;
					audio_play_sound(sndTowerSelect,0,false);
					var place = instance_create_layer(0,0,"Towers",oTowerPlace);
						with(place)
						{
						tower = oTowerOctoU0;
						}
					} else {
					audio_play_sound(sndCancel0,0,false);
					}
					}
				}
			}
		}
		//Brent
		if(mouse_check_button_pressed(mb_left)) && point_in_rectangle(mouse_x,mouse_y,292,6,304,14) && (!instance_exists(oTowerPlace)) {
			if(ppower >= 5) {
			ppower -= 5;
			audio_play_sound(sndTowerSelect,0,false);
			var place = instance_create_layer(0,0,"Towers",oTowerPlace);
				with(place)
				{
				tower = oTowerBrentU0;
				}
			}
		}
	//Bradley
		if(mouse_check_button_pressed(mb_left)) && point_in_rectangle(mouse_x,mouse_y,292,34,306,45) && (!instance_exists(oTowerPlace)) {
			if(ppower >= 10) {
			ppower -= 10;
			audio_play_sound(sndTowerSelect,0,false)
			var place = instance_create_layer(0,0,"Towers",oTowerPlace);
				with(place)
				{
				tower = oTowerBradleyU0;
				}
			}
		}
#endregion

#region Upgrades & Tower UI
if(instance_exists(selected)) {
	if(udb > 0) udb--;
	if(selected != noone) {
#region Brent Upgrades
//Brent Upgrade 1
		if((selected).towertype = "BrentU0") && (udb < 1) {
			if(point_in_rectangle(mouse_x,mouse_y,80,220,172,226)) && (mouse_check_button_pressed(mb_left)) {	
				if(ppower >= 10) {
				udb = 10;
				audio_play_sound(sndUpgrade0,0,0);	
				ppower -= 10;
					with(selected) {
					scrTowerUpgrade();
					}
				} else {
				audio_play_sound(sndCancel0,0,0);
				}
			}
		}
//Brent Upgrade 2
		if((selected).towertype = "BrentU1") && (udb < 1) {
			if(point_in_rectangle(mouse_x,mouse_y,80,220,172,226)) && (mouse_check_button_pressed(mb_left)) {	
				if(ppower >= 15) {
				udb = 10;
				audio_play_sound(sndUpgrade0,0,0);	
				ppower -= 15;
					with(selected) {
					scrTowerUpgrade();
					}
				} else {
				audio_play_sound(sndCancel0,0,0);
				}
			}
		}
#endregion
#region Bradley Upgrades
//Bradley Upgrade 1
		if((selected).towertype = "BradleyU0") && (udb < 1) {
			if(point_in_rectangle(mouse_x,mouse_y,80,220,172,226)) && (mouse_check_button_pressed(mb_left)) {	
				if(ppower >= 15) {
				udb = 10;
				audio_play_sound(sndUpgrade0,0,0);	
				ppower -= 15;
					with(selected) {
					scrTowerUpgrade();
					}
				} else {
				audio_play_sound(sndCancel0,0,0);
				}
			}
		}
#endregion
#region Octo
//Octo UI
		if((selected).towertype = "OctoU0")
			{
			}
#endregion
	}
}
#endregion

#region Player's Damage
if(damage > 25) {
room_restart();
}
#endregion