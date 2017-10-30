/// Create Event 
// Initialize
instance_create_layer(10,30,"GUI",oMusVolume);
instance_create_layer(76,30,"GUI",oSndVolume);
audio_group_load(audiogroup_music);
alarm[0]=1;
soundtrack = musNull;
sndmenu = 0;
ppower = 75;
towerlist = 0;
w = 0;
active = 0;
wtime = 0;
stime = 0;
t = 0; 
selected  = noone;
musvolume_max = 1;
musvolume_min = 0;
musvolume = oMusVolume.x;
sndvolume_min = 0
sndvolume_max = 1
sndvolume = oSndVolume.x;
damage = 0;

//Stands for Upgrade De-bug
udb = 0;