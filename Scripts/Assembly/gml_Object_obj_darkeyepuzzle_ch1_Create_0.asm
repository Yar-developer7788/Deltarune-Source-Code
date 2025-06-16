.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.total
pushi.e -5
pushi.e 201
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
push.i 175501
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.eye
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.eye
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.eye
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [4]

:[3]
push.i 165773
setowner.e
pushi.e 4173
conv.i.v
push.v self.y
pushi.e 110
add.i.v
push.v self.x
pushi.e 30
add.i.v
push.v self.i
pushi.e 110
mul.i.v
add.v.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shine
push.i 133655
setowner.e
push.d 0.1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shine
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 133637
setowner.e
push.i 800000
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shine
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
pushi.e 1660
conv.i.v
pushi.e 320
conv.i.v
pushi.e 960
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.block
pushi.e 2
push.v self.block
pushi.e -9
pop.v.i [stacktop]self.image_yscale
b [end]

:[5]
pushi.e 44
pop.v.i self.con
push.i 175501
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.eye
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.eye
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.eye
pushi.e 0
pop.v.i self.i

:[6]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [8]

:[7]
pushi.e 4193
conv.i.v
pushi.e 320
conv.i.v
pushi.e 960
push.v self.i
pushi.e 40
mul.i.v
add.v.i
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.glass
push.i 950000
push.v self.glass
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 4193
conv.i.v
pushi.e 360
conv.i.v
pushi.e 960
push.v self.i
pushi.e 40
mul.i.v
add.v.i
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.glass
push.i 950000
push.v self.glass
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [6]

:[8]
pushi.e 1552
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]

:[end]