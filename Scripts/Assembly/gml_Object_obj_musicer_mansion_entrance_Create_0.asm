.localvar 2 arguments

:[0]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GT
bf [2]

:[1]
push.s "spamton_neo_meeting.ogg"@14408
pop.v.s self.song
b [3]

:[2]
push.s "mansion_entrance.ogg"@19757
pop.v.s self.song

:[3]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing(argc=1)
conv.v.b
not.b
bf [end]

:[4]
push.i 231459
setowner.e
push.v self.song
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong

:[end]