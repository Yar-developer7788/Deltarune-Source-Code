.localvar 2 arguments
.localvar 11034 __prop 2939
.localvar 11035 __bind 2940
.localvar 11036 __val 2941
.localvar 11038 __backinfo 2942
.localvar 11096 __backid 2944
.localvar 11023 __layerid 2945
.localvar 11097 __isfore 2946
.localvar 11099 __visible 2947
.localvar 11101 __index 2948
.localvar 11053 __htiled 2949
.localvar 11054 __vtiled 2950
.localvar 11057 __stretch 2951
.localvar 11062 __blend 2952
.localvar 11064 __alpha 2953
.localvar 11055 __xscale 2954
.localvar 11056 __yscale 2955
.localvar 11051 __x 2956
.localvar 11052 __y 2957
.localvar 11058 __hspeed 2958
.localvar 11060 __vspeed 2959

:[0]
b [39]

> gml_Script___background_set_internal (locals=20, argc=4)
:[1]
push.v arg.argument0
pop.v.v local.__prop
push.v arg.argument1
pop.v.v local.__bind
push.v arg.argument2
pop.v.v local.__val
push.v arg.argument3
pop.v.v local.__backinfo
pushi.e -7
pushi.e 0
push.v [array]self.__backinfo
pushi.e -1
cmp.i.v EQ
bf [3]

:[2]
pushi.e -1
conv.i.v
ret.v

:[3]
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
push.l 1
cmp.l.v EQ
bf [7]

:[4]
pushloc.v local.__val
call.i round(argc=1)
pushloc.v local.__isfore
call.i round(argc=1)
cmp.v.v NEQ
bf [6]

:[5]
pushloc.v local.__layerid
call.i layer_get_visible(argc=1)
pop.v.v local.__visible
pushloc.v local.__backid
call.i layer_background_get_sprite(argc=1)
pop.v.v local.__index
pushloc.v local.__backid
call.i layer_background_get_htiled(argc=1)
pop.v.v local.__htiled
pushloc.v local.__backid
call.i layer_background_get_vtiled(argc=1)
pop.v.v local.__vtiled
pushloc.v local.__backid
call.i layer_background_get_stretch(argc=1)
pop.v.v local.__stretch
pushloc.v local.__backid
call.i layer_background_get_blend(argc=1)
pop.v.v local.__blend
pushloc.v local.__backid
call.i layer_background_get_alpha(argc=1)
pop.v.v local.__alpha
pushloc.v local.__backid
call.i layer_background_get_xscale(argc=1)
pop.v.v local.__xscale
pushloc.v local.__backid
call.i layer_background_get_yscale(argc=1)
pop.v.v local.__yscale
pushloc.v local.__layerid
call.i layer_get_x(argc=1)
pop.v.v local.__x
pushloc.v local.__layerid
call.i layer_get_y(argc=1)
pop.v.v local.__y
pushloc.v local.__layerid
call.i layer_get_hspeed(argc=1)
pop.v.v local.__hspeed
pushloc.v local.__layerid
call.i layer_get_vspeed(argc=1)
pop.v.v local.__vspeed
pushloc.v local.__alpha
pushloc.v local.__blend
pushloc.v local.__vspeed
pushloc.v local.__hspeed
pushloc.v local.__stretch
pushloc.v local.__yscale
pushloc.v local.__xscale
pushloc.v local.__vtiled
pushloc.v local.__htiled
pushloc.v local.__y
pushloc.v local.__x
pushloc.v local.__index
pushloc.v local.__val
pushloc.v local.__visible
pushloc.v local.__bind
call.i gml_Script___background_set_element(argc=15)
popz.v

:[6]
b [37]

:[7]
pushloc.v local.__prop
dup.v 0
push.l 0
cmp.l.v EQ
bt [21]

:[8]
dup.v 0
push.l 2
cmp.l.v EQ
bt [22]

:[9]
dup.v 0
push.l 3
cmp.l.v EQ
bt [25]

:[10]
dup.v 0
push.l 4
cmp.l.v EQ
bt [26]

:[11]
dup.v 0
push.l 7
cmp.l.v EQ
bt [27]

:[12]
dup.v 0
push.l 8
cmp.l.v EQ
bt [28]

:[13]
dup.v 0
push.l 9
cmp.l.v EQ
bt [29]

:[14]
dup.v 0
push.l 10
cmp.l.v EQ
bt [30]

:[15]
dup.v 0
push.l 11
cmp.l.v EQ
bt [31]

:[16]
dup.v 0
push.l 12
cmp.l.v EQ
bt [32]

:[17]
dup.v 0
push.l 13
cmp.l.v EQ
bt [33]

:[18]
dup.v 0
push.l 14
cmp.l.v EQ
bt [34]

:[19]
b [35]

:[20]
b [36]

:[21]
pushloc.v local.__val
pushloc.v local.__layerid
call.i layer_set_visible(argc=2)
popz.v
pushloc.v local.__val
pushloc.v local.__backid
call.i layer_background_visible(argc=2)
popz.v
b [36]

:[22]
pushloc.v local.__val
pushloc.v local.__backid
call.i layer_background_change(argc=2)
popz.v
pushloc.v local.__val
call.i sprite_exists(argc=1)
conv.v.b
bf [24]

:[23]
push.i 16777215
conv.i.v
pushloc.v local.__backid
call.i layer_background_blend(argc=2)
popz.v
pushi.e 1
conv.i.v
pushloc.v local.__backid
call.i layer_background_alpha(argc=2)
popz.v

:[24]
b [36]

:[25]
pushloc.v local.__val
pushloc.v local.__layerid
call.i layer_x(argc=2)
popz.v
b [36]

:[26]
pushloc.v local.__val
pushloc.v local.__layerid
call.i layer_y(argc=2)
popz.v
b [36]

:[27]
pushloc.v local.__val
pushloc.v local.__backid
call.i layer_background_htiled(argc=2)
popz.v
b [36]

:[28]
pushloc.v local.__val
pushloc.v local.__backid
call.i layer_background_vtiled(argc=2)
popz.v
b [36]

:[29]
pushloc.v local.__val
pushloc.v local.__backid
call.i layer_background_xscale(argc=2)
popz.v
b [36]

:[30]
pushloc.v local.__val
pushloc.v local.__backid
call.i layer_background_yscale(argc=2)
popz.v
b [36]

:[31]
pushloc.v local.__val
pushloc.v local.__layerid
call.i layer_hspeed(argc=2)
popz.v
b [36]

:[32]
pushloc.v local.__val
pushloc.v local.__layerid
call.i layer_vspeed(argc=2)
popz.v
b [36]

:[33]
pushloc.v local.__val
pushloc.v local.__backid
call.i layer_background_blend(argc=2)
popz.v
b [36]

:[34]
pushloc.v local.__val
pushloc.v local.__backid
call.i layer_background_alpha(argc=2)
popz.v
b [36]

:[35]
b [36]

:[36]
popz.v

:[37]
pushi.e -1
conv.i.v
ret.v

:[38]
exit.i

:[39]
push.i [function]gml_Script___background_set_internal
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.__background_set_internal
popz.v

:[end]