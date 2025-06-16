.localvar 2 arguments

:[0]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 31
pop.v.v [array]self.flag
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing(argc=1)
conv.v.b
not.b
bf [end]

:[1]
push.i 231459
setowner.e
push.s "field_of_hopes.ogg"@19773
conv.s.v
call.i gml_Script_snd_init(argc=1)
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
call.i gml_Script_mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e -5
pushi.e 209
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[2]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 209
pop.v.v [array]self.flag
pushi.e 186
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[end]