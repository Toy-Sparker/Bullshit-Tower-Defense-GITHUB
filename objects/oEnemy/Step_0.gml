 /// Step event
//If it's below a certain amount of hp then fucking murder it.
if(hp < 1) {
var splatt = choose(sndSplatt0,sndSplatt1);
audio_play_sound(splatt,0,0);
instance_destroy();	
}

if(sdb < 60) {
sdb++;
}