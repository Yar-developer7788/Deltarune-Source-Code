.localvar 2 arguments
.localvar 11078 __depth 3033
.localvar 11051 __x 3034
.localvar 11052 __y 3035
.localvar 11157 __layers 3036
.localvar 11158 __numlayers 3037
.localvar 6565 __i 3038
.localvar 11028 __els 3039
.localvar 11159 __numels 3040
.localvar 6374 __j 3041
.localvar 11160 __eltype 3042

:[0]
b [12]

> gml_Script_tile_layer_shift (locals=10, argc=3)
:[1]
push.v arg.argument0
pop.v.v local.__depth
push.v arg.argument1
pop.v.v local.__x
push.v arg.argument2
pop.v.v local.__y
call.i layer_get_all(argc=0)
pop.v.v local.__layers
pushloc.v local.__layers
call.i array_length_1d(argc=1)
pop.v.v local.__numlayers
pushi.e 0
pop.v.i local.__i

:[2]
pushloc.v local.__i
pushloc.v local.__numlayers
cmp.v.v LT
bf [11]

:[3]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]self.__layers
call.i layer_get_depth(argc=1)
pushloc.v local.__depth
cmp.v.v NEQ
bf [5]

:[4]
b [10]

:[5]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]self.__layers
call.i layer_get_all_elements(argc=1)
pop.v.v local.__els
pushloc.v local.__els
call.i array_length_1d(argc=1)
pop.v.v local.__numels
pushi.e 0
pop.v.i local.__j

:[6]
pushloc.v local.__j
pushloc.v local.__numels
cmp.v.v LT
bf [10]

:[7]
pushi.e -7
pushloc.v local.__j
conv.v.i
push.v [array]self.__els
call.i layer_get_element_type(argc=1)
pop.v.v local.__eltype
pushloc.v local.__eltype
pushi.e 7
cmp.i.v EQ
bf [9]

:[8]
pushi.e -7
pushloc.v local.__j
conv.v.i
push.v [array]self.__els
call.i layer_tile_get_x(argc=1)
pushloc.v local.__x
add.v.v
pushi.e -7
pushloc.v local.__j
conv.v.i
push.v [array]self.__els
call.i layer_tile_x(argc=2)
popz.v
pushi.e -7
pushloc.v local.__j
conv.v.i
push.v [array]self.__els
call.i layer_tile_get_y(argc=1)
pushloc.v local.__y
add.v.v
pushi.e -7
pushloc.v local.__j
conv.v.i
push.v [array]self.__els
call.i layer_tile_y(argc=2)
popz.v

:[9]
push.v local.__j
push.e 1
add.i.v
pop.v.v local.__j
b [6]

:[10]
push.v local.__i
push.e 1
add.i.v
pop.v.v local.__i
b [2]

:[11]
exit.i

:[12]
push.i [function]gml_Script_tile_layer_shift
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.tile_layer_shift
popz.v

:[end]