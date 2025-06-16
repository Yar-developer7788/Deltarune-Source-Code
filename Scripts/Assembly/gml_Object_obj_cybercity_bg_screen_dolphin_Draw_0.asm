.localvar 2 arguments

:[0]
push.v self.frametimer
push.e 1
add.i.v
pop.v.v self.frametimer
pushi.e 2
pop.v.i self.frametimerthreshold
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 4
pop.v.i self.frametimerthreshold

:[2]
push.v self.frametimer
push.v self.frametimerthreshold
cmp.v.v GTE
bf [12]

:[3]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [6]

:[4]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.d 0.5
conv.d.v
pushi.e 3
conv.i.v
push.v self.image_xscale
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.v self.image_xscale
pop.v.v self.image_yscale
push.v self.image_xscale
push.d 2.5
cmp.d.v GTE
bf [6]

:[5]
pushi.e 1
pop.v.i self.con

:[6]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [9]

:[7]
push.d 0.5
conv.d.v
pushi.e 2
conv.i.v
push.v self.image_xscale
call.i lerp(argc=3)
pop.v.v self.image_xscale
push.v self.image_xscale
pop.v.v self.image_yscale
push.v self.image_xscale
call.i abs(argc=1)
pushi.e 2
sub.i.v
push.d 0.05
cmp.d.v LTE
bf [9]

:[8]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 2
pop.v.i self.con

:[9]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [11]

:[10]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.y
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.2
mul.d.v
add.v.v
pop.v.v self.y
push.v self.ystart
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.y
push.v self.xstart
pushi.e 2
conv.i.v
pushi.e -2
conv.i.v
call.i random_range(argc=2)
add.v.v
pop.v.v self.x

:[11]
pushi.e 0
pop.v.i self.frametimer

:[12]
push.v self.animtimer
push.e 1
add.i.v
pop.v.v self.animtimer
push.v self.animtimer
pushi.e 15
cmp.i.v EQ
bf [14]

:[13]
push.v self.image_index
push.e 1
add.i.v
pop.v.v self.image_index

:[14]
push.v self.animtimer
pushi.e 30
cmp.i.v EQ
bf [16]

:[15]
push.v self.image_index
push.e 1
sub.i.v
pop.v.v self.image_index
pushi.e 0
pop.v.i self.animtimer

:[16]
call.i draw_self(argc=0)
popz.v

:[end]