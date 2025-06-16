.localvar 2 arguments
.localvar 26672 child 13692
.localvar 7017 a 13693

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 90
cmp.i.v GT
bf [3]

:[1]
pushi.e 0
pop.v.i self.active
push.v self.image_alpha
push.d 0.25
sub.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
push.v self.copymake
pushi.e 0
cmp.i.v GT
bf [7]

:[4]
push.v self.id
push.v self.object_index
push.v self.y
push.v self.x
call.i gml_Script_scr_childbullet(argc=4)
pop.v.v local.child
push.d 0.1
pushloc.v local.child
pushi.e -9
pop.v.d [stacktop]self.grazepoints
push.d 0.01
pushloc.v local.child
pushi.e -9
pop.v.d [stacktop]self.timepoints
pushi.e 87
pushloc.v local.child
pushi.e -9
pop.v.i [stacktop]self.timer
push.v self.bultype
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 87
pushloc.v local.child
pushi.e -9
pop.v.i [stacktop]self.timer

:[6]
push.v self.sprite_index
pushloc.v local.child
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.depth
pushi.e 1
add.i.v
pushloc.v local.child
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.image_angle
pushloc.v local.child
pushi.e -9
pop.v.v [stacktop]self.image_angle
push.v self.copymake
push.e 1
sub.i.v
pop.v.v self.copymake

:[7]
push.v self.grow
conv.v.b
bf [10]

:[8]
push.v self.growtimer
push.e 1
add.i.v
pop.v.v self.growtimer
pushi.e -2
conv.i.v
push.v self.growtimer
pushi.e 10
conv.i.d
div.d.v
push.d 1.5
conv.d.v
push.d 0.2
conv.d.v
call.i gml_Script_lerp_ease_out(argc=4)
pop.v.v self.image_xscale
pushi.e -2
conv.i.v
push.v self.growtimer
pushi.e 10
conv.i.d
div.d.v
push.d 1.5
conv.d.v
push.d 0.2
conv.d.v
call.i gml_Script_lerp_ease_out(argc=4)
pop.v.v self.image_yscale
push.v self.growtimer
pushi.e 10
cmp.i.v GTE
bf [10]

:[9]
pushi.e 0
pop.v.i self.grow

:[10]
push.v self.growb
conv.v.b
bf [end]

:[11]
push.v self.image_xscale
push.v self.timer
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.04
mul.d.v
push.d 0.012
add.d.v
add.v.v
pop.v.v self.image_xscale
call.i gml_Script_scr_afterimage(argc=0)
pop.v.v local.a
push.d 0.5
pushloc.v local.a
pushi.e -9
pop.v.d [stacktop]self.image_alpha

:[end]