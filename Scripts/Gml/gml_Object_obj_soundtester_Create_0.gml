firstsound = snd_txtasg;
lastsound = snd_lastsound_dontmove;
soundtotal = lastsound - firstsound;

for (var i = 0; i < soundtotal; i++)
{
    soundName[i] = audio_get_name(i);
    soundNo[i] = i + firstsound;
}

current = 1;
moved = 0;
auto = 0;
playsound = 0;
pitch = 1;
