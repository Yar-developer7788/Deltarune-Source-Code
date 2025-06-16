.localvar 2 arguments

:[0]
pushi.e -5
pushi.e 379
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
pushi.e 0
pop.v.b self.left
pushi.e 0
pop.v.b self.right
pushi.e 0
pop.v.b self.down
pushi.e 1183
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
pushi.e 1183
push.v 1183.currentPlatform
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.plat
pop.v.v self.controlled

:[3]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [8]

:[4]
push.v self.mydialoguer
call.i gml_Script_i_ex(argc=1)
pushi.e 0
cmp.b.v EQ
bf [8]

:[5]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 82
pushenv [7]

:[6]
pushi.e 5
pop.v.i self.onebuffer

:[7]
popenv [6]

:[8]
push.v self.rotate
pushi.e 1
cmp.b.v EQ
bf [10]

:[9]
push.v self.blocked
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [47]

:[12]
pushi.e 1
pop.v.i global.interact
pushi.e 1168
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [14]

:[13]
push.v self.controlled
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [15]

:[14]
push.e 0

:[15]
bf [32]

:[16]
call.i gml_Script_left_h(argc=0)
conv.v.b
bf [20]

:[17]
push.v self.controlled
pushi.e -9
pushenv [19]

:[18]
pushi.e -1
pop.v.i self.move

:[19]
popenv [18]

:[20]
call.i gml_Script_right_h(argc=0)
conv.v.b
bf [24]

:[21]
push.v self.controlled
pushi.e -9
pushenv [23]

:[22]
pushi.e 1
pop.v.i self.move

:[23]
popenv [22]

:[24]
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [27]

:[25]
push.v self.controlled
pushi.e -9
push.v [stacktop]self.phase
pushi.e 3
cmp.i.v GTE
bf [27]

:[26]
push.v self.controlled
pushi.e -9
push.v [stacktop]self.moving
pushi.e 0
cmp.i.v EQ
b [28]

:[27]
push.e 0

:[28]
bf [32]

:[29]
push.v self.controlled
pushi.e -9
push.v [stacktop]self.hole
pushi.e -9
pushenv [31]

:[30]
pushi.e 1
pop.v.i self.mousecreate
pushi.e 20
pop.v.i self.gentimer

:[31]
popenv [30]

:[32]
push.v self.controlled
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [47]

:[33]
call.i gml_Script_left_h(argc=0)
conv.v.b
bf [35]

:[34]
call.i gml_Script_right_h(argc=0)
conv.v.b
b [36]

:[35]
push.e 0

:[36]
bf [40]

:[37]
push.v self.controlled
pushi.e -9
pushenv [39]

:[38]
pushi.e 0
pop.v.i self.move

:[39]
popenv [38]

:[40]
call.i gml_Script_left_h(argc=0)
conv.v.b
not.b
bf [42]

:[41]
call.i gml_Script_right_h(argc=0)
conv.v.b
not.b
b [43]

:[42]
push.e 0

:[43]
bf [47]

:[44]
push.v self.controlled
pushi.e -9
pushenv [46]

:[45]
pushi.e 0
pop.v.i self.move

:[46]
popenv [45]

:[47]
push.v self.controlled
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [52]

:[48]
push.v self.controlled
pushi.e -9
push.v [stacktop]self.move
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
pushi.e 1
pop.v.b self.right

:[50]
push.v self.controlled
pushi.e -9
push.v [stacktop]self.move
pushi.e -1
cmp.i.v EQ
bf [52]

:[51]
pushi.e 1
pop.v.b self.left

:[52]
pushi.e 1167
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[53]
pushi.e 1167
pushenv [56]

:[54]
push.v self.gentimer
pushi.e 0
cmp.i.v GT
bf [56]

:[55]
pushi.e 1
pop.v.b other.down

:[56]
popenv [54]

:[end]