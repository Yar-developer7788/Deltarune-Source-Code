.localvar 2 arguments
.localvar 11157 __layers 5991
.localvar 11158 __numlayers 5992
.localvar 6565 __i 5993
.localvar 14259 __layer_id 5994
.localvar 11028 __els 5995
.localvar 11159 __numels 5996
.localvar 14260 __name 5997
.localvar 14262 __pos 5998
.localvar 14263 __lang 5999
.localvar 6374 __j 6000
.localvar 14264 __id 6001
.localvar 11160 __eltype 6002
.localvar 14266 __spr 6003

:[0]
call.i layer_get_all(argc=0)
pop.v.v local.__layers
pushloc.v local.__layers
call.i array_length_1d(argc=1)
pop.v.v local.__numlayers
pushi.e 0
pop.v.i local.__i

:[1]
pushloc.v local.__i
pushloc.v local.__numlayers
cmp.v.v LT
bf [end]

:[2]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]self.__layers
pop.v.v local.__layer_id
pushloc.v local.__layer_id
call.i layer_get_all_elements(argc=1)
pop.v.v local.__els
pushloc.v local.__els
call.i array_length_1d(argc=1)
pop.v.v local.__numels
pushloc.v local.__layer_id
call.i layer_get_name(argc=1)
pop.v.v local.__name
pushloc.v local.__name
push.s "_lang_"@14261
conv.s.v
call.i string_pos(argc=2)
pop.v.v local.__pos
pushloc.v local.__pos
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
pushloc.v local.__name
call.i string_length(argc=1)
pushloc.v local.__pos
pushi.e 8
add.i.v
cmp.v.v GT
b [5]

:[4]
push.e 0

:[5]
bf [8]

:[6]
pushi.e 2
conv.i.v
pushloc.v local.__pos
pushi.e 6
add.i.v
pushloc.v local.__name
call.i string_copy(argc=3)
pop.v.v local.__lang
pushloc.v local.__lang
pushglb.v global.lang
cmp.v.v NEQ
bf [8]

:[7]
pushi.e 0
conv.b.v
pushloc.v local.__layer_id
call.i layer_set_visible(argc=2)
popz.v
b [30]

:[8]
pushi.e 0
pop.v.i local.__j

:[9]
pushloc.v local.__j
pushloc.v local.__numels
cmp.v.v LT
bf [30]

:[10]
pushi.e -7
pushloc.v local.__j
conv.v.i
push.v [array]self.__els
pop.v.v local.__id
pushloc.v local.__id
call.i layer_get_element_type(argc=1)
pop.v.v local.__eltype
pushloc.v local.__eltype
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
b [29]

:[12]
pushloc.v local.__eltype
pushi.e 4
cmp.i.v EQ
bf [20]

:[13]
pushloc.v local.__id
call.i layer_sprite_get_sprite(argc=1)
pop.v.v local.__spr
pushloc.v local.__spr
call.i sprite_get_name(argc=1)
pop.v.v local.__name
push.s "  sprite: "@14268
pushloc.v local.__j
call.i string(argc=1)
add.v.s
push.s ": "@14269
add.s.v
pushloc.v local.__name
add.v.v
call.i show_debug_message(argc=1)
popz.v
pushloc.v local.__name
push.s "_lang_"@14261
conv.s.v
call.i string_pos(argc=2)
pop.v.v local.__pos
pushloc.v local.__pos
pushi.e 0
cmp.i.v GT
bf [15]

:[14]
pushloc.v local.__name
call.i string_length(argc=1)
pushloc.v local.__pos
pushi.e 8
add.i.v
cmp.v.v GT
b [16]

:[15]
push.e 0

:[16]
bf [19]

:[17]
pushi.e 2
conv.i.v
pushloc.v local.__pos
pushi.e 6
add.i.v
pushloc.v local.__name
call.i string_copy(argc=3)
pop.v.v local.__lang
pushloc.v local.__lang
pushglb.v global.lang
cmp.v.v NEQ
bf [19]

:[18]
pushloc.v local.__id
call.i layer_sprite_destroy(argc=1)
popz.v

:[19]
b [29]

:[20]
pushloc.v local.__eltype
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
push.s "  background: "@14271
pushloc.v local.__j
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v
b [29]

:[22]
pushloc.v local.__eltype
pushi.e 5
cmp.i.v EQ
bf [24]

:[23]
push.s "  tilemap: "@14272
pushloc.v local.__j
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v
b [29]

:[24]
pushloc.v local.__eltype
pushi.e 6
cmp.i.v EQ
bf [26]

:[25]
push.s "  particlesystem: "@14273
pushloc.v local.__j
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v
b [29]

:[26]
pushloc.v local.__eltype
pushi.e 7
cmp.i.v EQ
bf [28]

:[27]
b [29]

:[28]
push.s "  unknown: "@14274
pushloc.v local.__j
call.i string(argc=1)
add.v.s
call.i show_debug_message(argc=1)
popz.v

:[29]
push.v local.__j
push.e 1
add.i.v
pop.v.v local.__j
b [9]

:[30]
push.v local.__i
push.e 1
add.i.v
pop.v.v local.__i
b [1]

:[end]