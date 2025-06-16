.localvar 2 arguments

:[0]
pushi.e -1
pushi.e 0
push.v [array]self.eye
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
pushi.e -1
pushi.e 1
push.v [array]self.eye
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e -1
pushi.e 2
push.v [array]self.eye
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [10]

:[5]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[10]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [24]

:[11]
pushi.e 4
pop.v.i self.con
pushi.e 0
pop.v.i self.i

:[12]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [14]

:[13]
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
b [12]

:[14]
push.v self.block
pushi.e -9
pushenv [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
popenv [15]
pushi.e 379
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 1468
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 1
pop.v.i global.facing
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.i

:[17]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [21]

:[18]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shine
pushi.e -9
pushenv [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
popenv [19]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [17]

:[21]
pushi.e 1552
pushenv [23]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
popenv [22]

:[24]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [end]

:[25]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 201
pop.v.v [array]self.flag
pushi.e 0
pop.v.i global.interact
pushi.e 6
pop.v.i self.con

:[end]