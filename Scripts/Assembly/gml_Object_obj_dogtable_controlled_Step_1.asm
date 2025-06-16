.localvar 2 arguments

:[0]
push.v self.ctimer
push.e 1
add.i.v
pop.v.v self.ctimer
push.v self.vertState
pushi.e 0
cmp.i.v EQ
bf [43]

:[1]
push.v self.pauseInit
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.memvspeed
pop.v.v self.vspeed
push.v self.memhsp
pop.v.v self.hsp
push.v self.memhspeed
pop.v.v self.hspeed
pushi.e 0
pop.v.i self.pauseInit

:[3]
push.v self.vspeed
call.i abs(argc=1)
push.v self.maxvspeed
cmp.v.v LT
bf [5]

:[4]
push.v self.vspeed
pushi.e 1
push.v self.vspeed
call.i sign(argc=1)
mul.v.i
add.v.v
pop.v.v self.vspeed

:[5]
push.v self.vspeed
call.i abs(argc=1)
push.v self.maxvspeed
cmp.v.v GT
bf [7]

:[6]
push.v self.vspeed
push.d 0.9
mul.d.v
pop.v.v self.vspeed

:[7]
pushi.e 68
conv.i.v
push.v self.y
push.v self.vspeed
add.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [9]

:[8]
pushbltn.v builtin.room
pushi.e 217
cmp.i.v NEQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
push.v self.vspeed
pushi.e -1
mul.i.v
pop.v.v self.vspeed

:[12]
call.i gml_Script_left_h(argc=0)
conv.v.b
bf [20]

:[13]
push.v self.hsp
pushi.e 0
cmp.i.v GTE
bf [15]

:[14]
pushi.e -1
pop.v.i self.hsp

:[15]
push.v self.hsp
push.d 1.2
mul.d.v
pop.v.v self.hsp
pushbltn.v builtin.room
pushi.e 217
cmp.i.v NEQ
bf [17]

:[16]
push.v self.halfmaxvspeed
pop.v.v self.maxvspeed

:[17]
push.v self.ctimer
pushi.e 4
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
pushi.e 215
conv.i.v
push.v self.y
push.v self.x
pushi.e 34
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dust
push.v self.depth
pushi.e 100
add.i.v
push.v self.dust
pushi.e -9
pop.v.v [stacktop]self.depth

:[19]
b [35]

:[20]
call.i gml_Script_right_h(argc=0)
conv.v.b
bf [28]

:[21]
push.v self.hsp
pushi.e 0
cmp.i.v LTE
bf [23]

:[22]
pushi.e 1
pop.v.i self.hsp

:[23]
push.v self.hsp
push.d 1.2
mul.d.v
pop.v.v self.hsp
pushbltn.v builtin.room
pushi.e 217
cmp.i.v NEQ
bf [25]

:[24]
push.v self.halfmaxvspeed
pop.v.v self.maxvspeed

:[25]
push.v self.ctimer
pushi.e 4
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [27]

:[26]
pushi.e 215
conv.i.v
push.v self.y
push.v self.x
pushi.e 34
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dust
push.v self.depth
pushi.e 100
add.i.v
push.v self.dust
pushi.e -9
pop.v.v [stacktop]self.depth

:[27]
b [35]

:[28]
pushi.e 0
pop.v.i self.image_angle
push.v self.hsp
push.d 0.1
cmp.d.v GT
bf [30]

:[29]
push.v self.hsp
push.d 0.9
mul.d.v
pop.v.v self.hsp
b [33]

:[30]
push.v self.hsp
push.d -0.1
cmp.d.v LT
bf [32]

:[31]
push.v self.hsp
push.d 0.9
mul.d.v
pop.v.v self.hsp
b [33]

:[32]
pushi.e 0
pop.v.i self.hsp

:[33]
push.v self.realmaxvspeed
pop.v.v self.maxvspeed
push.v self.ctimer
pushi.e 4
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [35]

:[34]
pushi.e 215
conv.i.v
push.v self.y
push.v self.x
pushi.e 34
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dust1
push.v self.depth
pushi.e 100
add.i.v
push.v self.dust1
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 215
conv.i.v
push.v self.y
push.v self.x
pushi.e 34
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dust2
push.v self.depth
pushi.e 100
add.i.v
push.v self.dust2
pushi.e -9
pop.v.v [stacktop]self.depth

:[35]
call.i gml_Script_left_h(argc=0)
conv.v.b
bf [37]

:[36]
call.i gml_Script_right_h(argc=0)
conv.v.b
b [38]

:[37]
push.e 0

:[38]
bf [41]

:[39]
pushi.e 0
pop.v.i self.image_angle
pushi.e 0
pop.v.i self.hsp
pushbltn.v builtin.room
pushi.e 217
cmp.i.v NEQ
bf [41]

:[40]
push.v self.halfmaxvspeed
pop.v.v self.maxvspeed

:[41]
pushi.e 16
conv.i.v
pushi.e -16
conv.i.v
push.v self.hsp
call.i clamp(argc=3)
pop.v.v self.hsp
push.v self.hsp
pop.v.v self.hspeed
pushi.e 68
conv.i.v
push.v self.y
push.v self.x
push.v self.hspeed
add.v.v
call.i place_meeting(argc=3)
conv.v.b
bf [43]

:[42]
push.v self.hsp
pushi.e 2
conv.i.d
div.d.v
neg.v
pop.v.v self.hsp
push.v self.hsp
pop.v.v self.hspeed

:[43]
push.v self.vertState
pushi.e 1
cmp.i.v EQ
bf [47]

:[44]
push.v self.pauseInit
pushi.e 0
cmp.i.v EQ
bf [46]

:[45]
push.v self.vspeed
pop.v.v self.memvspeed
push.v self.hsp
pop.v.v self.memhsp
push.v self.hspeed
pop.v.v self.memhspeed
pushi.e 1
pop.v.i self.pauseInit

:[46]
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hsp
pushi.e 0
pop.v.i self.hspeed

:[47]
push.v self.drawtype
pushi.e 0
cmp.i.v EQ
bf [49]

:[48]
call.i gml_Script_scr_depth_alt(argc=0)
popz.v

:[49]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
push.v self.drawtype
pushi.e 0
cmp.i.v EQ
b [52]

:[51]
push.e 0

:[52]
bf [54]

:[53]
push.v self.x
pushi.e 24
sub.i.v
pop.v.v 82.x
push.v self.y
pushi.e 60
sub.i.v
pop.v.v 82.y

:[54]
pushglb.v global.interact
pushi.e 0
cmp.i.v NEQ
bf [56]

:[55]
pushi.e 1
pop.v.i self.vertState

:[56]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [end]

:[57]
pushi.e 0
pop.v.i self.vertState

:[end]