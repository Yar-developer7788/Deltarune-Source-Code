.localvar 2 arguments

:[0]
push.v self.btimer
push.e 1
add.i.v
pop.v.v self.btimer
push.v self.btimer
pushi.e 6
cmp.i.v GT
bf [7]

:[1]
pushi.e 0
pop.v.i self.btimer
push.v self.flip
conv.v.b
not.b
bf [3]

:[2]
push.v self.x
push.v self.made
pushi.e 40
mul.i.v
push.v self.side
mul.v.v
sub.v.v
pop.v.v self.xx
push.v self.y
pop.v.v self.yy
b [4]

:[3]
push.v self.x
push.v self.made
pushi.e 40
mul.i.v
push.v self.side
mul.v.v
add.v.v
pop.v.v self.xx
push.v self.y
pop.v.v self.yy

:[4]
pushi.e 437
conv.i.v
push.v self.yy
push.v self.xx
call.i gml_Script_scr_bullet_create(argc=3)
pop.v.v self.d
push.v 443.red_damage
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.damage
push.v 443.red_target
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.sizemultiplier
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.sizemultiplier
push.v 443.shockwave_color
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.startColor
push.v self.flip
conv.v.b
bf [6]

:[5]
pushi.e 180
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_angle

:[6]
push.v self.made
push.e 1
add.i.v
pop.v.v self.made

:[7]
push.v self.made
push.v self.amount
cmp.v.v GTE
bf [end]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[end]