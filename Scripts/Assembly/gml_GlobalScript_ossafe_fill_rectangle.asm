.localvar 2 arguments
.localvar 10805 x1 3572
.localvar 10806 y1 3573
.localvar 10807 x2 3574
.localvar 10808 y2 3575
.localvar 11908 temp 3576

:[0]
b [11]

> gml_Script_ossafe_fill_rectangle (locals=5, argc=4)
:[1]
push.v arg.argument0
pop.v.v local.x1
push.v arg.argument1
pop.v.v local.y1
push.v arg.argument2
pop.v.v local.x2
push.v arg.argument3
pop.v.v local.y2
pushloc.v local.x1
pushloc.v local.x2
cmp.v.v GT
bf [3]

:[2]
pushloc.v local.x1
pop.v.v local.temp
pushloc.v local.x2
pop.v.v local.x1
pushloc.v local.temp
pop.v.v local.x2

:[3]
pushloc.v local.y1
pushloc.v local.y2
cmp.v.v GT
bf [5]

:[4]
pushloc.v local.y1
pop.v.v local.temp
pushloc.v local.y2
pop.v.v local.y1
pushloc.v local.temp
pop.v.v local.y2

:[5]
pushbltn.v builtin.os_type
pushi.e 14
cmp.i.v EQ
bt [7]

:[6]
pushbltn.v builtin.os_type
pushi.e 12
cmp.i.v EQ
b [8]

:[7]
push.e 1

:[8]
bf [10]

:[9]
push.v local.x2
push.e 1
add.i.v
pop.v.v local.x2
push.v local.y2
push.e 1
add.i.v
pop.v.v local.y2

:[10]
pushi.e 0
conv.b.v
pushloc.v local.y2
pushloc.v local.x2
pushloc.v local.y1
pushloc.v local.x1
call.i draw_rectangle(argc=5)
popz.v
exit.i

:[11]
push.i [function]gml_Script_ossafe_fill_rectangle
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.ossafe_fill_rectangle
popz.v

:[end]