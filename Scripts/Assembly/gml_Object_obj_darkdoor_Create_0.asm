.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.open
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.xsin
pushi.e 0
pop.v.i self.con
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [16]

:[1]
pushglb.v global.plot
pushi.e 5
cmp.i.v LT
bf [9]

:[2]
pushi.e 1
pop.v.i self.con
pushi.e 82
pushenv [4]

:[3]
pushi.e 0
pop.v.i self.visible

:[4]
popenv [3]
pushi.e 663
conv.i.v
pushi.e 198
conv.i.v
pushi.e 290
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.k
pushi.e 980
conv.i.v
pushi.e 190
conv.i.v
pushi.e 310
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.s
pushi.e 1
pop.v.i global.interact
push.v self.s
pushi.e -9
pushenv [6]

:[5]
pushi.e -1
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.image_speed

:[6]
popenv [5]
push.v self.k
pushi.e -9
pushenv [8]

:[7]
pushi.e -1
pop.v.i self.vspeed
push.d 0.2
pop.v.d self.image_speed

:[8]
popenv [7]
push.i 68097
setowner.e
pushi.e 90
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
b [12]

:[9]
pushi.e 68
conv.i.v
pushi.e 100
conv.i.v
pushi.e 280
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.block
pushi.e 4
push.v self.block
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 904
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.sunset
push.v self.sunset
pushi.e -9
pushenv [11]

:[10]
push.d 0.4
pop.v.d self.image_alpha
pushi.e 2000
pop.v.i self.depth

:[11]
popenv [10]

:[12]
pushglb.v global.plot
pushi.e 250
cmp.i.v EQ
bf [16]

:[13]
pushi.e 82
pushenv [15]

:[14]
push.v 159.x
pop.v.v self.x
push.v 159.y
pop.v.v self.y

:[15]
popenv [14]
pushi.e 1
pop.v.i global.interact
pushi.e 40
pop.v.i self.con

:[16]
pushglb.v global.chapter
pushi.e 2
cmp.i.v GTE
bf [end]

:[17]
pushglb.v global.plot
pushi.e 100
cmp.i.v GTE
bf [end]

:[18]
pushi.e 904
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.sunset
push.v self.sunset
pushi.e -9
pushenv [20]

:[19]
push.d 0.4
pop.v.d self.image_alpha
pushi.e 2000
pop.v.i self.depth

:[20]
popenv [19]
pushi.e 179
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [end]

:[21]
pushi.e 179
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[end]