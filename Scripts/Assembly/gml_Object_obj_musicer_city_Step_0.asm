.localvar 2 arguments

:[0]
push.v self.update
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
pushi.e 16
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume(argc=3)
popz.v
push.v self.timer
pushi.e 16
cmp.i.v EQ
bf [3]

:[2]
pushi.e 2
pop.v.i self.update

:[3]
push.v self.update
pushi.e 2
cmp.i.v EQ
bf [end]

:[4]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.v self.altsong
pop.v.v self.mysong
push.d 1.2
pop.v.d self.songspeed
b [7]

:[6]
push.v self.defaultsong
pop.v.v self.mysong
push.d 0.97
pop.v.d self.songspeed

:[7]
push.i 231459
setowner.e
push.v self.mysong
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
push.v self.songspeed
push.d 0.8
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 0
pop.v.i self.update
pushi.e 0
pop.v.i self.timer

:[end]