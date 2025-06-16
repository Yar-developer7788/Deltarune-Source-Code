.localvar 2 arguments
.localvar 12049 top_ndx 4597
.localvar 107 i 4598

:[0]
b [7]

> gml_Script_scr_84_push_ch1 (locals=2, argc=0)
:[1]
push.s "chemg_stack"@12047
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
not.b
bf [3]

:[2]
push.i 65601536
setowner.e
pushi.e 0
conv.i.v
call.i array_create(argc=1)
pop.v.v global.chemg_stack
push.i 131304937
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.chemg_stack

:[3]
pushi.e -5
pushi.e 0
push.v [array]self.chemg_stack
pop.v.v local.top_ndx
pushi.e 0
pop.v.i local.i

:[4]
pushloc.v local.i
pushbltn.v builtin.argument_count
cmp.v.v LT
bf [6]

:[5]
pushi.e -15
pushloc.v local.i
conv.v.i
push.v [array]self.argument
pushi.e -5
pushloc.v local.top_ndx
pushloc.v local.i
add.v.v
pushi.e 1
add.i.v
conv.v.i
pop.v.v [array]self.chemg_stack
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [4]

:[6]
pushloc.v local.top_ndx
pushbltn.v builtin.argument_count
add.v.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.chemg_stack
exit.i

:[7]
push.i [function]gml_Script_scr_84_push_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_84_push_ch1
popz.v

:[end]