//Randomize Thoughts
tc++;

if(tc > 60 * 6) {
	if(Chance(0.1)) {
	tc = 0;
	thought = irandom_range(1,33);
	}
}
scrTowerThoughts();