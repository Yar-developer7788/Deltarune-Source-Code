.localvar 2 arguments
.localvar 23821 invlerp 10999
.localvar 11944 scale 11000

:[0]
push.v self.preptimer
pushi.e 0
cmp.i.v GT
bf [4]

:[1]
push.v self.preptimer
push.e 1
sub.i.v
pop.v.v self.preptimer
push.v self.preptimer
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_inverselerp(argc=3)
pop.v.v local.invlerp
pushloc.v local.invlerp
pushi.e 1
conv.i.v
push.d 0.7
conv.d.v
call.i lerp(argc=3)
pop.v.v local.scale
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local.scale
pushloc.v local.scale
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.preptimer
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 360
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 1753
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.depth
pushi.e 3
add.i.v
pop.i.v [stacktop]self.depth

:[3]
b [5]

:[4]
push.v self.image_alpha
push.v self.image_blend
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.shaky
call.i random(argc=1)
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.v
add.v.v
push.v self.x
push.v self.shaky
call.i random(argc=1)
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.v
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[5]
push.v self.shaky
pushi.e 8
conv.i.d
div.d.v
push.d 0.1
conv.d.v
call.i max(argc=2)
pushi.e 0
conv.i.v
push.v self.shaky
call.i gml_Script_scr_approach(argc=3)
pop.v.v self.shaky

:[end]