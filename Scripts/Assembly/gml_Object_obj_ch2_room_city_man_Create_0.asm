.localvar 2 arguments

:[0]
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 917
pop.v.v [array]self.flag
pushi.e 276
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [4]

:[1]
pushi.e 276
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]

:[4]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing(argc=1)
conv.v.b
not.b
bf [end]

:[5]
push.i 231459
setowner.e
push.s "man.ogg"@36177
conv.s.v
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