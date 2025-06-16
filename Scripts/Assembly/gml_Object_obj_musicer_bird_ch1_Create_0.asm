.localvar 2 arguments

:[0]
pushbltn.v builtin.room
pushi.e 330
cmp.i.v EQ
bt [2]

:[1]
pushbltn.v builtin.room
pushi.e 331
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 31
pop.v.v [array]self.flag

:[5]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing_ch1(argc=1)
conv.v.b
not.b
bf [7]

:[6]
push.i 231459
setowner.e
push.s "bird.ogg"@19774
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
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
call.i gml_Script_mus_loop_ext_ch1(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong

:[7]
pushi.e 1
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 1
pop.v.i self.visible
pushbltn.v builtin.room
pushi.e 330
cmp.i.v NEQ
bf [end]

:[8]
pushi.e 0
pop.v.i self.visible
call.i instance_destroy(argc=0)
popz.v

:[end]