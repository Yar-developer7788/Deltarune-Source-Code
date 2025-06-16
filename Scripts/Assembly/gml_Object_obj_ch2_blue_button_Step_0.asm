.localvar 2 arguments
.localvar 36646 checkPress 19725

:[0]
push.v self.pressed
conv.v.b
bf [2]

:[1]
exit.i

:[2]
pushi.e 0
pop.v.i local.checkPress
pushi.e 82
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [5]

:[3]
push.v self.pressed
conv.v.b
not.b
bf [5]

:[4]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [9]

:[7]
pushi.e 82
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [9]

:[8]
pushi.e 1
pop.v.i local.checkPress

:[9]
pushloc.v local.checkPress
conv.v.b
bf [end]

:[10]
push.v self.pressed
pushi.e 0
cmp.i.v EQ
bf [end]

:[11]
pushi.e 1
pop.v.i self.pressed
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]