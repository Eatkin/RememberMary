/// @description

text="Ending 2/3\nMary's End";

if (global.sins==3)
	text="Ending 3/3\nResurrection";
else if (global.virtues==3)
	text="Ending 1/3\nAscention";
	
delay=60;
timer=0;

myMusic=audio_play_sound(mus_oneOneTwo_Toy,0,false);

credits="Remembering Mary\n";
credits+="A game by Edward Atkin\n";
credits+="Graphics, story and design by Edward Atkin\n";
credits+="Music and sound design by Mark Mauer\n";
credits+="'Remember Mary' name suggested by Tommy van Son\n";
credits+="Moral support and ideas from Benjamin Fearn\n";
credits+="\n\n";
credits+="Thank you for Playing!";

creditsDelay=180;