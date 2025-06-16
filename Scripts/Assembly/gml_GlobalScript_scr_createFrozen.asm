.localvar 2 arguments

:[0]
b [5]

> gml_Script_scr_createFrozen (locals=0, argc=1)
:[1]
pushi.e 857
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.frozenbody
push.v self.sprite_index
push.v self.frozenbody
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.image_index
push.v self.frozenbody
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.image_xscale
push.v self.frozenbody
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.frozenbody
pushi.e -9
pop.v.v [stacktop]self.image_yscale
pushi.e 1
push.v self.frozenbody
pushi.e -9
pop.v.i [stacktop]self.fresh
push.v arg.argument0
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
push.v self.frozenbody
pushi.e -9
pop.v.i [stacktop]self.skipsolid
b [4]

:[3]
pushi.e 0
push.v self.frozenbody
pushi.e -9
pop.v.i [stacktop]self.skipsolid

:[4]
pushi.e 1
push.v self.frozenbody
pushi.e -9
pop.v.i [stacktop]self.timer
push.v self.depth
push.v self.frozenbody
pushi.e -9
pop.v.v [stacktop]self.depth
call.i instance_destroy(argc=0)
popz.v
exit.i

:[5]
push.i [function]gml_Script_scr_createFrozen
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_createFrozen
popz.v

:[end]