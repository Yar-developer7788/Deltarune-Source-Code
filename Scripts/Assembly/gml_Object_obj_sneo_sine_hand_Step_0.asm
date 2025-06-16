.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.image_alpha
pushi.e 1
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.image_alpha
push.d 0.04
add.d.v
pop.v.v self.image_alpha

:[5]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.image_alpha
push.d 0.04
sub.d.v
pop.v.v self.image_alpha

:[7]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.v self.image_alpha
pushi.e 0
cmp.i.v LT
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 21
sub.i.v
cmp.v.v LT
bf [14]

:[13]
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
pushi.e 21
add.i.v
pop.v.v self.x

:[14]
push.v self.siner
push.d 0.4
add.d.v
pop.v.v self.siner
push.v self.ystart
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 20
mul.i.v
add.v.v
pop.v.v self.y

:[end]