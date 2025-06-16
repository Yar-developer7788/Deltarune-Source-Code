.localvar 2 arguments

:[0]
pushi.e 103
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 0
pop.v.i self.wirecon
pushi.e 0
pop.v.i self.wiretimer
pushi.e 0
pop.v.i self.funcon
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.destroyme
pushglb.v global.plot
pushi.e 51
cmp.i.v GTE
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v
pushi.e -1
pop.v.i self.con
b [9]

:[4]
pushi.e 103
conv.i.v
pushi.e 200
conv.i.v
pushi.e 260
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.npc1_o
push.v self.npc1_o
pushi.e -9
pushenv [6]

:[5]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[6]
popenv [5]
pushi.e 103
conv.i.v
pushi.e 280
conv.i.v
pushi.e 380
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.npc2_o
push.v self.npc2_o
pushi.e -9
pushenv [8]

:[7]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 1
pop.v.i self.con

:[9]
pushi.e 0
pop.v.i self.screencon
pushi.e 0
pop.v.i self.screenmax
pushi.e 0
pop.v.i self.screencount
pushi.e 0
pop.v.i self.susieattackcon
pushi.e 0
pop.v.i self.susieattacktimer
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm
push.i 173064
setowner.e
pushi.e 117
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.screenx
push.i 173065
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.screeny
push.i 173066
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.screenimage
push.i 173064
setowner.e
pushi.e 80
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.screenx
push.i 173065
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.screeny
push.i 173066
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.screenimage
push.i 173064
setowner.e
pushi.e 210
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.screenx
push.i 173065
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.screeny
push.i 173066
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.screenimage
push.i 173064
setowner.e
pushi.e 245
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.screenx
push.i 173065
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.screeny
push.i 173066
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.screenimage
push.i 173064
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.screenx
push.i 173065
setowner.e
pushi.e 35
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.screeny
push.i 173066
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.screenimage
push.i 173064
setowner.e
pushi.e 63
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.screenx
push.i 173065
setowner.e
pushi.e 39
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.screeny
push.i 173066
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.screenimage
push.i 173064
setowner.e
pushi.e 94
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.screenx
push.i 173065
setowner.e
pushi.e 35
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.screeny
push.i 173066
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.screenimage
push.i 173064
setowner.e
pushi.e 220
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.screenx
push.i 173065
setowner.e
pushi.e 35
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.screeny
push.i 173066
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.screenimage
push.i 173064
setowner.e
pushi.e 253
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.screenx
push.i 173065
setowner.e
pushi.e 39
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.screeny
push.i 173066
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.screenimage
push.i 173064
setowner.e
pushi.e 284
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.screenx
push.i 173065
setowner.e
pushi.e 35
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.screeny
push.i 173066
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.screenimage
push.i 173064
setowner.e
pushi.e 220
conv.i.v
pushi.e -1
pushi.e 10
pop.v.v [array]self.screenx
push.i 173065
setowner.e
pushi.e 35
conv.i.v
pushi.e -1
pushi.e 10
pop.v.v [array]self.screeny
push.i 173066
setowner.e
pushi.e 7
conv.i.v
pushi.e -1
pushi.e 10
pop.v.v [array]self.screenimage
pushi.e 11
pop.v.i self.i

:[10]
push.v self.i
pushi.e 16
cmp.i.v LT
bf [22]

:[11]
push.v self.i
pushi.e 11
cmp.i.v EQ
bf [13]

:[12]
push.i 173064
setowner.e
pushi.e 28
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.screenx
push.i 173065
setowner.e
pushi.e 67
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.screeny

:[13]
push.v self.i
pushi.e 12
cmp.i.v EQ
bf [15]

:[14]
push.i 173064
setowner.e
pushi.e 73
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.screenx
push.i 173065
setowner.e
pushi.e 34
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.screeny

:[15]
push.v self.i
pushi.e 13
cmp.i.v EQ
bf [17]

:[16]
push.i 173064
setowner.e
pushi.e 95
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.screenx
push.i 173065
setowner.e
pushi.e 74
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.screeny

:[17]
push.v self.i
pushi.e 14
cmp.i.v EQ
bf [19]

:[18]
push.i 173064
setowner.e
pushi.e 224
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.screenx
push.i 173065
setowner.e
pushi.e 76
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.screeny

:[19]
push.v self.i
pushi.e 15
cmp.i.v EQ
bf [21]

:[20]
push.i 173064
setowner.e
pushi.e 282
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.screenx
push.i 173065
setowner.e
pushi.e 78
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.screeny

:[21]
push.i 173066
setowner.e
pushi.e 6
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.screenimage
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [10]

:[22]
push.i 173064
setowner.e
pushi.e 253
conv.i.v
pushi.e -1
pushi.e 16
pop.v.v [array]self.screenx
push.i 173065
setowner.e
pushi.e 39
conv.i.v
pushi.e -1
pushi.e 16
pop.v.v [array]self.screeny
push.i 173066
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 16
pop.v.v [array]self.screenimage
push.i 173064
setowner.e
pushi.e 284
conv.i.v
pushi.e -1
pushi.e 17
pop.v.v [array]self.screenx
push.i 173065
setowner.e
pushi.e 35
conv.i.v
pushi.e -1
pushi.e 17
pop.v.v [array]self.screeny
push.i 173066
setowner.e
pushi.e 8
conv.i.v
pushi.e -1
pushi.e 17
pop.v.v [array]self.screenimage

:[end]