.localvar 2 arguments

:[0]
pushi.e 593
conv.i.v
push.v self.y
pushi.e 30
sub.i.v
push.v self.x
pushi.e 40
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.topwall
push.i -999999
push.v self.topwall
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 1
push.v self.topwall
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e -17
push.v self.topwall
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 2535
push.v self.topwall
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2535
push.v self.topwall
pushi.e -9
pop.v.i [stacktop]self.mask_index
pushi.e 0
push.v self.topwall
pushi.e -9
pop.v.b [stacktop]self.visible
pushi.e 1
push.v self.topwall
pushi.e -9
pop.v.i [stacktop]self.active
pushi.e -1
push.v self.topwall
pushi.e -9
pop.v.i [stacktop]self.destroyable
pushi.e 0
push.v self.topwall
pushi.e -9
pop.v.i [stacktop]self.destroyonhit
pushi.e 593
conv.i.v
push.v self.y
pushi.e 30
add.i.v
push.v self.x
pushi.e 40
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bottomwall
push.i -999999
push.v self.bottomwall
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 1
push.v self.bottomwall
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 17
push.v self.bottomwall
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 2535
push.v self.bottomwall
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2535
push.v self.bottomwall
pushi.e -9
pop.v.i [stacktop]self.mask_index
pushi.e 0
push.v self.bottomwall
pushi.e -9
pop.v.b [stacktop]self.visible
pushi.e 1
push.v self.bottomwall
pushi.e -9
pop.v.i [stacktop]self.active
pushi.e -1
push.v self.bottomwall
pushi.e -9
pop.v.i [stacktop]self.destroyable
pushi.e 0
push.v self.bottomwall
pushi.e -9
pop.v.i [stacktop]self.destroyonhit
pushi.e 1
pop.v.i self.creatednewalls

:[end]