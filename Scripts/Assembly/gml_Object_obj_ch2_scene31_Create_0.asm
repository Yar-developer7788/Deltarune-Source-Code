.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.b self.anykey
pushi.e 0
pop.v.i self.keytimer
pushi.e 0
pop.v.i self.shakebuffer
pushi.e 120
pop.v.i self.maxshaketime
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [3]

:[1]
pushglb.v global.plot
pushi.e 211
cmp.i.v GTE
bt [3]

:[2]
pushglb.v global.plot
pushi.e 205
cmp.i.v LT
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[6]
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [8]

:[7]
push.i 231459
setowner.e
push.s "home.ogg"@33722
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong

:[8]
pushi.e 0
conv.i.v
push.d 0.5
conv.d.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i audio_sound_gain(argc=3)
popz.v
pushi.e 144
conv.i.v
call.i instance_deactivate_object(argc=1)
popz.v

:[end]