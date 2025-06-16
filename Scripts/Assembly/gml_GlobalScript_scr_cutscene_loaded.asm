.localvar 2 arguments
.localvar 10224 __loadedState 2353

:[0]
b [6]

> gml_Script_scr_cutscene_loaded (locals=1, argc=0)
:[1]
pushi.e 0
pop.v.i local.__loadedState
pushi.e 898
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[2]
push.v 898.loadedState
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i local.__loadedState

:[4]
pushloc.v local.__loadedState
ret.v

:[5]
exit.i

:[6]
push.i [function]gml_Script_scr_cutscene_loaded
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_cutscene_loaded
popz.v

:[end]