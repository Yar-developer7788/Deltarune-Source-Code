.localvar 2 arguments

:[0]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
pushi.e 1493
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 32
pop.v.v [array]self.flag

:[4]
push.v self.timer
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v

:[6]
push.v self.timer
pushi.e 3
cmp.i.v EQ
bf [9]

:[7]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing_ch1(argc=1)
conv.v.b
not.b
bf [9]

:[8]
push.i 231459
setowner.e
push.s "man.ogg"@36177
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

:[9]
push.v self.timer
pushi.e 4
cmp.i.v EQ
bf [end]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[end]