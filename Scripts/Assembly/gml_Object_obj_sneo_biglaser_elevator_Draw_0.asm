.localvar 2 arguments

:[0]
push.v self.parent
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
push.v self.parent
pushi.e -1
cmp.i.v NEQ
bf [4]

:[3]
push.v self.parent
pushi.e -9
push.v [stacktop]self.x
push.v self.parent
pushi.e -9
push.v [stacktop]self.image_angle
pushi.e 268
add.i.v
pushi.e 85
conv.i.v
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v self.parent
pushi.e -9
push.v [stacktop]self.y
push.v self.parent
pushi.e -9
push.v [stacktop]self.image_angle
pushi.e 268
add.i.v
pushi.e 85
conv.i.v
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y

:[4]
push.v self.firecon
pushi.e 0
cmp.i.v EQ
bf [18]

:[5]
push.d 0.001
pop.v.d self.image_yscale
push.v self.effecttimer
pushi.e 8
cmp.i.v LTE
bf [7]

:[6]
push.v self.effecttimer
pushi.e 6
mod.i.v
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [12]

:[9]
pushi.e 0
pop.v.i self.i

:[10]
push.v self.i
pushi.e 6
cmp.i.v LT
bf [12]

:[11]
pushi.e 753
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
pushi.e 60
conv.i.v
call.i irandom(argc=1)
push.v self.i
pushi.e 60
mul.i.v
add.v.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 12
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.lifetime
push.v self.depth
pushi.e 1
add.i.v
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.image_blend
push.v self.d
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [10]

:[12]
push.v self.effecttimer
pushi.e 14
cmp.i.v GT
bf [14]

:[13]
push.v self.orbsize
pushi.e 8
sub.i.v
pop.v.v self.orbsize
b [15]

:[14]
push.v self.orbsize
pushi.e 2
add.i.v
pop.v.v self.orbsize

:[15]
push.v self.effecttimer
pushi.e 18
cmp.i.v EQ
bf [17]

:[16]
pushi.e 1
pop.v.i self.firecon

:[17]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.orbsize
pushi.e 2
conv.i.d
div.d.v
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pushi.e 2
conv.i.v
call.i max(argc=2)
push.v self.y
push.v self.x
call.i draw_circle(argc=4)
popz.v
push.v self.effecttimer
push.e 1
add.i.v
pop.v.v self.effecttimer
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
b [end]

:[18]
push.v self.firecon
pushi.e 1
cmp.i.v EQ
bf [24]

:[19]
pushi.e 1
pop.v.b self.active
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.image_yscale
pushi.e 100
mul.i.v
push.v self.y
push.v self.x
call.i draw_circle(argc=4)
popz.v
push.v self.effecttimer
push.e 1
add.i.v
pop.v.v self.effecttimer
push.v self.effecttimer
pushi.e 20
cmp.i.v EQ
bf [21]

:[20]
pushi.e 628
conv.i.v
push.v self.ystart
push.v self.x
pushi.e 30
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bullet
pushi.e 2039
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 180
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.image_angle
pushi.e 0
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.direction
pushi.e 1
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e -2
push.v self.bullet
pushi.e -9
pop.v.i [stacktop]self.speed
push.d -0.35
push.v self.bullet
pushi.e -9
pop.v.d [stacktop]self.friction

:[21]
push.v self.effecttimer
pushi.e 27
cmp.i.v EQ
bf [23]

:[22]
pushi.e 2
pop.v.i self.firecon

:[23]
b [end]

:[24]
push.v self.firecon
pushi.e 2
cmp.i.v EQ
bf [end]

:[25]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
pop.v.i self.active
pushi.e 0
conv.i.v
push.v self.image_yscale
pushi.e 100
mul.i.v
push.v self.y
push.v self.x
call.i draw_circle(argc=4)
popz.v
call.i draw_self(argc=0)
popz.v

:[end]