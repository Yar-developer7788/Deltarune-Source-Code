.localvar 2 arguments
.localvar 12049 top_ndx 3702

:[0]
b [7]

> gml_Script_scr_84_pop (locals=1, argc=0)
:[1]
push.s "chemg_stack"@12047
conv.s.v
call.i variable_global_exists(argc=1)
conv.v.b
not.b
bf [3]

:[2]
push.i 46792704
setowner.e
pushi.e 0
conv.i.v
call.i array_create(argc=1)
pop.v.v global.chemg_stack
push.i 93687273
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
pushloc.v local.top_ndx
pushi.e 0
cmp.i.v LTE
bf [5]

:[4]
pushi.e 1
conv.b.v
push.s "stack empty"@12050
conv.s.v
call.i show_error(argc=2)
popz.v

:[5]
pushloc.v local.top_ndx
pushi.e 1
sub.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.chemg_stack
pushi.e -5
pushloc.v local.top_ndx
conv.v.i
push.v [array]self.chemg_stack
ret.v

:[6]
exit.i

:[7]
push.i [function]gml_Script_scr_84_pop
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_84_pop
popz.v

:[end]