if (active == 0)
    exit;

with (other)
{
    scr_afterimage_cut();
    instance_destroy();
}

if (alarm[0] > 0)
    exit;

if (other.active == 0)
    exit;

hp -= 3;
alarm[0] = 10;
snd_play(snd_hurt1);
