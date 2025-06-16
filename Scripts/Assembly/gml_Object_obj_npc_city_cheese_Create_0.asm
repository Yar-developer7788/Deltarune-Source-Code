.localvar 2 arguments
.localvar 107 i 7379
.localvar 15466 xpos 7380
.localvar 14550 ypos 7381

:[0]
pushi.e 0
pop.v.i self.con
pushi.e -5
pushi.e 310
push.v [array]self.flag
conv.v.b
bf [10]

:[1]
pushi.e 0
pop.v.i local.i

:[2]
pushloc.v local.i
pushi.e 10
cmp.i.v LT
bf [7]

:[3]
pushi.e 260
pushi.e 60
pushloc.v local.i
mul.v.i
add.v.i
pop.v.v local.xpos
pushloc.v local.i
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 190
conv.i.v
b [6]

:[5]
pushi.e 240
conv.i.v

:[6]
pop.v.v local.ypos
pushi.e 1114
conv.i.v
pushloc.v local.ypos
pushloc.v local.xpos
call.i gml_Script_instance_create(argc=3)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [2]

:[7]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [9]

:[8]
pushi.e 1
pop.v.i global.interact
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[9]
b [end]

:[10]
pushi.e 240
conv.i.v
pushi.e 180
conv.i.v
pushi.e 260
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[end]