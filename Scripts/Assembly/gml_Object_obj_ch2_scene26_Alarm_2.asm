.localvar 2 arguments
.localvar 32794 explosion_a 16594
.localvar 32795 explosion_b 16595

:[0]
pushi.e 459
conv.i.v
pushi.e 220
pushi.e 15
push.v self.explosions
mul.v.i
add.v.i
pushi.e 1780
pushi.e 20
push.v self.explosions
mul.v.i
sub.v.i
call.i gml_Script_instance_create(argc=3)
pop.v.v local.explosion_a
pushi.e 2293
pushloc.v local.explosion_a
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pushloc.v local.explosion_a
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
pushloc.v local.explosion_a
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.d 0.75
pushloc.v local.explosion_a
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 890000
pushloc.v local.explosion_a
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 459
conv.i.v
pushi.e 220
pushi.e 15
push.v self.explosions
mul.v.i
add.v.i
pushi.e 1780
pushi.e 20
push.v self.explosions
mul.v.i
add.v.i
call.i gml_Script_instance_create(argc=3)
pop.v.v local.explosion_b
pushi.e 2293
pushloc.v local.explosion_b
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pushloc.v local.explosion_b
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
pushloc.v local.explosion_b
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.d 0.75
pushloc.v local.explosion_b
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 890000
pushloc.v local.explosion_b
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.explosions
push.e 1
add.i.v
pop.v.v self.explosions
push.v self.explosions
pushi.e 3
cmp.i.v LT
bf [end]

:[1]
push.i 68097
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm

:[end]