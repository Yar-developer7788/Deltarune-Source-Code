.localvar 2 arguments
.localvar 11151 objID 3013
.localvar 11152 ret 3014

:[0]
b [8]

> gml_Script_object_get_depth (locals=2, argc=1)
:[1]
push.v arg.argument0
pop.v.v local.objID
pushi.e 0
pop.v.i local.ret
pushloc.v local.objID
pushi.e 0
cmp.i.v GTE
bf [3]

:[2]
pushloc.v local.objID
pushglb.v global.__objectID2Depth
call.i array_length_1d(argc=1)
cmp.v.v LT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e -5
pushloc.v local.objID
conv.v.i
push.v [array]self.__objectID2Depth
pop.v.v local.ret

:[6]
pushloc.v local.ret
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_object_get_depth
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.object_get_depth
popz.v

:[end]