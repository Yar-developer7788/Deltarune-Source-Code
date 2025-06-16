.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i self.myinteract
pushi.e 1
pop.v.i global.interact
pushi.e 74
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.headobj
push.v self.sprite_index
push.v self.headobj
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.headobj
pushi.e -9
pop.v.i [stacktop]self.visible
push.v 82.depth
pushi.e 4
sub.i.v
pop.v.v self.depth
push.v self.image_xscale
push.v self.headobj
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.headobj
pushi.e -9
pop.v.v [stacktop]self.image_yscale

:[end]