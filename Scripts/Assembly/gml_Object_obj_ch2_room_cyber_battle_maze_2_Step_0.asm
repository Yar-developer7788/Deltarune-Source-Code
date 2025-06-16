.localvar 2 arguments

:[0]
push.v self.northcon
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushi.e -1
pop.v.i self.northcon
pushi.e 0
conv.b.v
push.s "TILES_Secret_North"@35987
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.v self.northcollider
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [3]

:[2]
push.v self.northcollider
call.i instance_destroy(argc=1)
popz.v

:[3]
push.v self.southcon
pushi.e 1
cmp.i.v EQ
bf [end]

:[4]
pushi.e -1
pop.v.i self.southcon
pushi.e 0
conv.b.v
push.s "TILES_Secret_South"@35988
conv.s.v
call.i layer_set_visible(argc=2)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.v self.southcollider
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[5]
push.v self.southcollider
call.i instance_destroy(argc=1)
popz.v

:[end]