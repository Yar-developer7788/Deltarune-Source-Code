.localvar 2 arguments

:[0]
pushi.e 171
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 171
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 218
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 218
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 128
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.doghit
pushi.e 2
push.v self.doghit
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.doghit
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 2427
push.v self.doghit
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e -300
push.v self.doghit
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.x
pushi.e 36
add.i.v
pop.v.v self.x
push.v 299.image_xscale
push.d 0.08
sub.d.v
pop.v.v 299.image_xscale
push.v 299.image_xscale
push.d 0.08
cmp.d.v LTE
bf [end]

:[1]
pushi.e 299
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]

:[end]