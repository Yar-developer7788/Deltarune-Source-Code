.localvar 2 arguments
.localvar 107 i 8476

:[0]
push.s "spr_queenscreen"@12031
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
pop.v.v self.sprite_index
pushi.e 0
pop.v.b self.extflag
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 4
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.dismiss
push.i 100000
pop.v.i self.depth
pushi.e 1
pop.v.i self.activecon
pushi.e 0
pop.v.i self.tasquecon
pushi.e 0
pop.v.i self.tasquetimer
pushi.e 0
pop.v.i self.tasquetriggered
pushi.e 4
pop.v.i self.tasquespeed
pushi.e 0
pop.v.i self.tasquex
pushi.e 0
pop.v.i self.tasquey
pushi.e 0
pop.v.i self.tasquedir
pushi.e 0
pop.v.i self.extspawnflag
pushi.e 0
pop.v.i self.count
pushi.e 0
pop.v.b self.brokenscreen
pushi.e 0
pop.v.i self.bluecheckcon
pushi.e 0
pop.v.i self.bluechecktimer
pushi.e 0
pop.v.i self.init
push.v self.image_index
pushi.e 30
cmp.i.v EQ
bf [4]

:[1]
pushi.e 0
pop.v.i self.brokeAlpha
pushi.e 1
pop.v.b self.brokenscreen
pushi.e 0
pop.v.i self.timer2
pushi.e 30
pop.v.i self.r
push.v self.x
pop.v.v self.xx
push.v self.y
pop.v.v self.yy
push.v self.r
push.v self.r
neg.v
call.i random_range(argc=2)
pop.v.v self.image_angle
pushi.e 0
pop.v.i local.i

:[2]
pushloc.v local.i
pushi.e 10
cmp.i.v LT
bf [4]

:[3]
push.i 166013
setowner.e
push.v self.r
push.v self.r
neg.v
call.i random_range(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.xx
push.i 166014
setowner.e
push.v self.r
push.v self.r
neg.v
call.i random_range(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.yy
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [2]

:[4]
pushbltn.v builtin.room
pushi.e 91
cmp.i.v EQ
bf [6]

:[5]
push.v self.image_index
pushi.e 9
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [10]

:[8]
pushi.e -5
pushi.e 526
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [10]

:[9]
pushi.e 11
pop.v.i self.image_index

:[10]
pushbltn.v builtin.room
pushi.e 103
cmp.i.v EQ
bf [12]

:[11]
push.v self.image_index
pushi.e 9
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [16]

:[14]
pushi.e -5
pushi.e 539
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [16]

:[15]
pushi.e 11
pop.v.i self.image_index

:[16]
push.v self.extflag
pushi.e 4
cmp.i.v EQ
bf [end]

:[17]
pushbltn.v builtin.room
pushi.e 103
cmp.i.v EQ
bf [20]

:[18]
pushi.e -5
pushi.e 367
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
pushbltn.v builtin.room
pushi.e 107
cmp.i.v EQ
bf [23]

:[21]
pushi.e -5
pushi.e 420
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
pushbltn.v builtin.room
pushi.e 97
cmp.i.v EQ
bf [end]

:[24]
pushi.e -5
pushi.e 407
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[25]
call.i instance_destroy(argc=0)
popz.v

:[end]