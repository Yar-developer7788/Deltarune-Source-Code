.localvar 2 arguments
.localvar 11034 __prop 2983
.localvar 11035 __bind 2984
.localvar 11038 __backinfo 2985
.localvar 11041 __res 2986
.localvar 11096 __backid 2987
.localvar 11023 __layerid 2988
.localvar 11097 __isfore 2989

:[0]
b [42]

> gml_Script___background_get_internal (locals=7, argc=3)
:[1]
push.v arg.argument0
pop.v.v local.__prop
push.v arg.argument1
pop.v.v local.__bind
push.v arg.argument2
pop.v.v local.__backinfo
pushi.e -7
pushi.e 0
push.v [array]self.__backinfo
pushi.e -1
cmp.i.v EQ
bt [3]

:[2]
pushi.e -7
pushi.e 0
push.v [array]self.__backinfo
pushi.e -7
pushi.e 1
push.v [array]self.__backinfo
call.i layer_background_exists(argc=2)
pushi.e 0
cmp.b.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [7]

:[5]
pushloc.v local.__bind
call.i gml_Script___background_get_element(argc=1)
pop.v.v local.__backinfo
pushi.e -7
pushi.e 0
push.v [array]self.__backinfo
pushi.e -1
cmp.i.v EQ
bf [7]

:[6]
pushi.e -1
conv.i.v
ret.v

:[7]
pushi.e -1
pop.v.i local.__res
pushi.e -7
pushi.e 0
push.v [array]self.__backinfo
pop.v.v local.__backid
pushi.e -7
pushi.e 1
push.v [array]self.__backinfo
pop.v.v local.__layerid
pushi.e -7
pushi.e 2
push.v [array]self.__backinfo
pop.v.v local.__isfore
pushloc.v local.__prop
dup.v 0
push.l 0
cmp.l.v EQ
bt [24]

:[8]
dup.v 0
push.l 1
cmp.l.v EQ
bt [25]

:[9]
dup.v 0
push.l 2
cmp.l.v EQ
bt [26]

:[10]
dup.v 0
push.l 3
cmp.l.v EQ
bt [27]

:[11]
dup.v 0
push.l 4
cmp.l.v EQ
bt [28]

:[12]
dup.v 0
push.l 5
cmp.l.v EQ
bt [29]

:[13]
dup.v 0
push.l 6
cmp.l.v EQ
bt [30]

:[14]
dup.v 0
push.l 7
cmp.l.v EQ
bt [31]

:[15]
dup.v 0
push.l 8
cmp.l.v EQ
bt [32]

:[16]
dup.v 0
push.l 9
cmp.l.v EQ
bt [33]

:[17]
dup.v 0
push.l 10
cmp.l.v EQ
bt [34]

:[18]
dup.v 0
push.l 11
cmp.l.v EQ
bt [35]

:[19]
dup.v 0
push.l 12
cmp.l.v EQ
bt [36]

:[20]
dup.v 0
push.l 13
cmp.l.v EQ
bt [37]

:[21]
dup.v 0
push.l 14
cmp.l.v EQ
bt [38]

:[22]
b [39]

:[23]
b [40]

:[24]
pushloc.v local.__layerid
call.i layer_get_visible(argc=1)
pop.v.v local.__res
b [40]

:[25]
pushloc.v local.__isfore
pop.v.v local.__res
b [40]

:[26]
pushloc.v local.__backid
call.i layer_background_get_sprite(argc=1)
pop.v.v local.__res
b [40]

:[27]
pushloc.v local.__layerid
call.i layer_get_x(argc=1)
pop.v.v local.__res
b [40]

:[28]
pushloc.v local.__layerid
call.i layer_get_y(argc=1)
pop.v.v local.__res
b [40]

:[29]
pushloc.v local.__backid
call.i layer_background_get_index(argc=1)
call.i sprite_get_width(argc=1)
pop.v.v local.__res
b [40]

:[30]
pushloc.v local.__backid
call.i layer_background_get_index(argc=1)
call.i sprite_get_height(argc=1)
pop.v.v local.__res
b [40]

:[31]
pushloc.v local.__backid
call.i layer_background_get_htiled(argc=1)
pop.v.v local.__res
b [40]

:[32]
pushloc.v local.__backid
call.i layer_background_get_vtiled(argc=1)
pop.v.v local.__res
b [40]

:[33]
pushloc.v local.__backid
call.i layer_background_get_xscale(argc=1)
pop.v.v local.__res
b [40]

:[34]
pushloc.v local.__backid
call.i layer_background_get_yscale(argc=1)
pop.v.v local.__res
b [40]

:[35]
pushloc.v local.__layerid
call.i layer_get_hspeed(argc=1)
pop.v.v local.__res
b [40]

:[36]
pushloc.v local.__layerid
call.i layer_get_vspeed(argc=1)
pop.v.v local.__res
b [40]

:[37]
pushloc.v local.__backid
call.i layer_background_get_blend(argc=1)
pop.v.v local.__res
b [40]

:[38]
pushloc.v local.__backid
call.i layer_background_get_alpha(argc=1)
pop.v.v local.__res
b [40]

:[39]
b [40]

:[40]
popz.v
pushloc.v local.__res
ret.v

:[41]
exit.i

:[42]
push.i [function]gml_Script___background_get_internal
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.__background_get_internal
popz.v

:[end]