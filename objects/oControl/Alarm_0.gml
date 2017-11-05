/// @description Check music playing
audio_group_stop_all(audiogroup_music);
if(soundtrack != musNull) { 
audio_play_sound(soundtrack,0,true);
} else {
audio_play_sound(soundtrack,0,false);
}