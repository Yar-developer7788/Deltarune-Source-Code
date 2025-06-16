.localvar 2 arguments

:[0]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.dancing
conv.v.b
bf [5]

:[2]
push.v self.siner
push.d 0.16666666666666666
add.d.v
pop.v.v self.siner
push.v self.y
push.v self.x
push.v self.siner
pushi.e 1757
conv.i.v
call.i gml_Script_draw_monster_body_part(argc=4)
popz.v
push.v self.musicalnotetimer
push.e 1
add.i.v
pop.v.v self.musicalnotetimer
push.v self.musicalnotetimer
pushi.e 14
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.musicalnotetimer
pushi.e 352
conv.i.v
push.v self.y
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e 20
sub.i.v
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.anim
pushi.e 2625
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.depth
pushi.e 5
sub.i.v
push.v self.anim
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 2
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 270
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.direction
push.d -0.2
push.v self.anim
pushi.e -9
pop.v.d [stacktop]self.gravity
push.d 0.8
conv.d.v
push.d 0.1
conv.d.v
call.i random_range(argc=2)
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.v
push.v self.anim
pushi.e -9
pop.v.v [stacktop]self.hspeed

:[4]
b [end]

:[5]
push.v self.siner
push.d 0.16666666666666666
add.d.v
pop.v.v self.siner
push.v self.y
push.v self.x
push.v self.siner
push.v self.thissprite
call.i gml_Script_draw_monster_body_part(argc=4)
popz.v

:[end]