.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.timer
pushi.e 30
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
call.i gml_Script_scr_afterimagefast(argc=0)
pop.v.v self.my_new
push.i 4235519
push.v self.my_new
pushi.e -9
pop.v.i [stacktop]self.image_blend
push.v self.image_angle
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.v self.my_new
pushi.e -9
dup.i 4
push.v [stacktop]self.image_angle
pushi.e -3
conv.i.v
pushi.e 3
conv.i.v
call.i random_range(argc=2)
push.d 1.4285714285714286
conv.d.v
push.d 0.7
conv.d.v
call.i random_range(argc=2)
mul.v.v
add.v.v
pop.i.v [stacktop]self.image_angle

:[6]
pushi.e 2
push.d 1.4285714285714286
conv.d.v
push.d 0.7
conv.d.v
call.i random_range(argc=2)
mul.v.i
push.v self.my_new
pushi.e -9
pop.v.v [stacktop]self.image_xscale
pushi.e 2
push.d 1.4285714285714286
conv.d.v
push.d 0.7
conv.d.v
call.i random_range(argc=2)
mul.v.i
push.v self.my_new
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.d 0.8
conv.d.v
push.d 0.6
conv.d.v
call.i random_range(argc=2)
push.v self.my_new
pushi.e -9
pop.v.v [stacktop]self.image_alpha

:[end]