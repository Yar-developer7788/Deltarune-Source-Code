.localvar 2 arguments

:[0]
pushi.e 817
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.flash
push.v self.sprite_index
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.image_index
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.image_xscale
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.drawflip
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.flash
pushi.e -9
dup.i 4
push.v [stacktop]self.image_xscale
pushi.e -1
mul.i.v
pop.i.v [stacktop]self.image_xscale

:[2]
push.v self.image_blend
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.image_blend
pushi.e 0
push.v self.flash
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.depth
pushi.e 1
sub.i.v
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.id
push.v self.flash
pushi.e -9
pop.v.v [stacktop]self.boss

:[end]