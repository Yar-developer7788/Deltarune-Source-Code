.localvar 2 arguments

:[0]
push.v self.stop
pushi.e 0
cmp.i.v EQ
bf [16]

:[1]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.mode
pushi.e 1
cmp.i.v EQ
bf [12]

:[2]
push.v self.swingtimer
push.e 1
add.i.v
pop.v.v self.swingtimer
push.v self.swingtimer
pushi.e 10
cmp.i.v GTE
bf [12]

:[3]
push.v self.swingcount
push.e 1
add.i.v
pop.v.v self.swingcount
push.v self.swingcount
pushi.e 4
mod.i.v
pop.v.v self.swing
push.v self.swing
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 0
pop.v.i self.image_angle

:[5]
push.v self.swing
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 15
pop.v.i self.image_angle

:[7]
push.v self.swing
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 0
pop.v.i self.image_angle

:[9]
push.v self.swing
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
pushi.e -15
pop.v.i self.image_angle

:[11]
pushi.e 0
pop.v.i self.swingtimer

:[12]
pushi.e 0
pop.v.i self.i

:[13]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [15]

:[14]
call.i draw_self(argc=0)
popz.v
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 1
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 2
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
add.v.i
call.i sin(argc=1)
push.i 16777215
conv.i.v
push.v self.image_angle
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 2
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [13]

:[15]
b [end]

:[16]
pushi.e 0
pop.v.i self.image_angle
call.i draw_self(argc=0)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[end]