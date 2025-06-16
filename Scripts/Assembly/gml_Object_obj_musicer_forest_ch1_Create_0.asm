.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i self.doit
pushglb.v global.plot
pushi.e 70
cmp.i.v LT
bf [2]

:[1]
pushbltn.v builtin.room
pushi.e 356
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.doit

:[5]
push.v self.doit
pushi.e 1
cmp.i.v EQ
bf [end]

:[6]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing_ch1(argc=1)
conv.v.b
not.b
bf [end]

:[7]
push.i 231459
setowner.e
push.s "forest.ogg"@38993
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e 1
conv.i.v
push.d 0.7
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext_ch1(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong

:[end]