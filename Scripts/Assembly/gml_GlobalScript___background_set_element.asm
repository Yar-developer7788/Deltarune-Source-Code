.localvar 2 arguments
.localvar 11035 __bind 2896
.localvar 11048 __vis 2897
.localvar 11049 __fore 2898
.localvar 11050 __back 2899
.localvar 11051 __x 2900
.localvar 11052 __y 2901
.localvar 11053 __htiled 2902
.localvar 11054 __vtiled 2903
.localvar 11055 __xscale 2904
.localvar 11056 __yscale 2905
.localvar 11057 __stretch 2906
.localvar 11058 __hspeed 2907
.localvar 11060 __vspeed 2909
.localvar 11062 __blend 2911
.localvar 11064 __alpha 2913
.localvar 11014 __nearestdepth 2914
.localvar 11015 __farthestdepth 2915
.localvar 11016 __depthinc 2916
.localvar 11017 __result 2917
.localvar 11066 __fgstring 2918
.localvar 11068 __bgstring 2919
.localvar 11019 __colstring 2920
.localvar 11069 __fglen 2921
.localvar 11070 __bglen 2922
.localvar 11021 __layerlist 2923
.localvar 11022 __layerlistlength 2924
.localvar 11071 __collayer 2925
.localvar 6565 __i 2926
.localvar 11026 __layername 2929
.localvar 11073 __slotchr 2930
.localvar 11074 __slot 2931
.localvar 11077 __currdepth 2932
.localvar 11078 __depth 2933
.localvar 11079 __layerdepth 2934
.localvar 11023 __layerid 2935
.localvar 11087 __backel 2936

:[0]
b [43]

> gml_Script___background_set_element (locals=38, argc=15)
:[1]
push.v arg.argument0
pop.v.v local.__bind
push.v arg.argument1
pop.v.v local.__vis
push.v arg.argument2
pop.v.v local.__fore
push.v arg.argument3
pop.v.v local.__back
push.v arg.argument4
pop.v.v local.__x
push.v arg.argument5
pop.v.v local.__y
push.v arg.argument6
pop.v.v local.__htiled
push.v arg.argument7
pop.v.v local.__vtiled
push.v arg.argument8
pop.v.v local.__xscale
push.v arg.argument9
pop.v.v local.__yscale
push.v arg.argument10
pop.v.v local.__stretch
push.v arg.argument11
pop.v.v local.__hspeed
push.v arg.argument12
pop.v.v local.__vspeed
push.v arg.argument13
pop.v.v local.__blend
push.v arg.argument14
pop.v.v local.__alpha
push.i 1000000000
pop.v.i local.__nearestdepth
push.i -1000000000
pop.v.i local.__farthestdepth
pushi.e 100
pop.v.i local.__depthinc
push.i 35818635
setowner.e
pushi.e -1
conv.i.v
pushi.e -7
pushi.e 0
pop.v.v [array]self.__result
pushi.e -1
conv.i.v
pushi.e -7
pushi.e 1
pop.v.v [array]self.__result
push.s "Compatibility_Foreground_"@11065
pop.v.s local.__fgstring
push.s "Compatibility_Background_"@11067
pop.v.s local.__bgstring
push.s "Compatibility_Colour"@11018
pop.v.s local.__colstring
pushloc.v local.__fgstring
call.i string_length(argc=1)
pop.v.v local.__fglen
pushloc.v local.__bgstring
call.i string_length(argc=1)
pop.v.v local.__bglen
call.i layer_get_all(argc=0)
pop.v.v local.__layerlist
pushloc.v local.__layerlist
call.i array_length_1d(argc=1)
pop.v.v local.__layerlistlength
pushi.e -1
pop.v.i local.__collayer
pushi.e 0
pop.v.i local.__i

:[2]
pushloc.v local.__i
pushi.e 8
cmp.i.v LT
bf [4]

:[3]
push.i 35818670
setowner.e
pushi.e -1
conv.i.v
pushi.e -7
pushloc.v local.__i
conv.v.i
pop.v.v [array]self.__slots
push.i 35818640
setowner.e
pushi.e 0
conv.b.v
pushi.e -7
pushloc.v local.__i
conv.v.i
pop.v.v [array]self.__isforeground
push.v local.__i
push.e 1
add.i.v
pop.v.v local.__i
b [2]

:[4]
pushi.e 0
pop.v.i local.__i

:[5]
pushloc.v local.__i
pushloc.v local.__layerlistlength
cmp.v.v LT
bf [21]

:[6]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]self.__layerlist
call.i layer_get_name(argc=1)
pop.v.v local.__layername
pushloc.v local.__layername
pushloc.v local.__fgstring
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [10]

:[7]
pushloc.v local.__fglen
pushi.e 1
add.i.v
pushloc.v local.__layername
call.i string_char_at(argc=2)
pop.v.v local.__slotchr
pushloc.v local.__slotchr
push.s ""@157
cmp.s.v EQ
bf [9]

:[8]
b [20]

:[9]
pushloc.v local.__slotchr
call.i real(argc=1)
pop.v.v local.__slot
push.i 35818670
setowner.e
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]self.__layerlist
pushi.e -7
pushloc.v local.__slot
conv.v.i
pop.v.v [array]self.__slots
push.i 35818640
setowner.e
pushi.e 1
conv.b.v
pushi.e -7
pushloc.v local.__slot
conv.v.i
pop.v.v [array]self.__isforeground
b [20]

:[10]
pushloc.v local.__layername
pushloc.v local.__bgstring
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [14]

:[11]
pushloc.v local.__bglen
pushi.e 1
add.i.v
pushloc.v local.__layername
call.i string_char_at(argc=2)
pop.v.v local.__slotchr
pushloc.v local.__slotchr
push.s ""@157
cmp.s.v EQ
bf [13]

:[12]
b [20]

:[13]
pushloc.v local.__slotchr
call.i real(argc=1)
pop.v.v local.__slot
push.i 35818670
setowner.e
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]self.__layerlist
pushi.e -7
pushloc.v local.__slot
conv.v.i
pop.v.v [array]self.__slots
push.i 35818640
setowner.e
pushi.e 0
conv.b.v
pushi.e -7
pushloc.v local.__slot
conv.v.i
pop.v.v [array]self.__isforeground
b [20]

:[14]
pushloc.v local.__layername
pushloc.v local.__colstring
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [16]

:[15]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]self.__layerlist
pop.v.v local.__collayer
pushloc.v local.__farthestdepth
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]self.__layerlist
call.i layer_depth(argc=2)
popz.v
b [20]

:[16]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]self.__layerlist
call.i layer_get_depth(argc=1)
pop.v.v local.__currdepth
pushloc.v local.__currdepth
pushloc.v local.__nearestdepth
cmp.v.v LT
bf [18]

:[17]
pushloc.v local.__currdepth
pop.v.v local.__nearestdepth

:[18]
pushloc.v local.__currdepth
pushloc.v local.__farthestdepth
cmp.v.v GT
bf [20]

:[19]
pushloc.v local.__currdepth
pop.v.v local.__farthestdepth

:[20]
push.v local.__i
push.e 1
add.i.v
pop.v.v local.__i
b [5]

:[21]
push.v local.__farthestdepth
pushloc.v local.__depthinc
pushi.e 1000
add.i.v
add.v.v
pop.v.v local.__farthestdepth
push.v local.__nearestdepth
pushloc.v local.__depthinc
sub.v.v
pop.v.v local.__nearestdepth
push.i 2147483600
conv.i.v
pushloc.v local.__farthestdepth
call.i max(argc=2)
pop.v.v local.__farthestdepth
push.i -2147482000
conv.i.v
pushloc.v local.__nearestdepth
call.i min(argc=2)
pop.v.v local.__nearestdepth
pushi.e 0
pop.v.i local.__i

:[22]
pushloc.v local.__i
pushi.e 8
cmp.i.v LT
bf [29]

:[23]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]self.__slots
pushi.e -1
cmp.i.v NEQ
bf [28]

:[24]
pushi.e 0
pop.v.i local.__depth
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]self.__isforeground
pushi.e 1
cmp.b.v EQ
bf [26]

:[25]
pushloc.v local.__nearestdepth
pushloc.v local.__i
pushloc.v local.__depthinc
mul.v.v
sub.v.v
pop.v.v local.__depth
b [27]

:[26]
pushloc.v local.__farthestdepth
pushloc.v local.__depthinc
sub.v.v
pushloc.v local.__slot
pushloc.v local.__depthinc
mul.v.v
sub.v.v
pop.v.v local.__depth

:[27]
pushloc.v local.__depth
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]self.__slots
call.i layer_depth(argc=2)
popz.v

:[28]
push.v local.__i
push.e 1
add.i.v
pop.v.v local.__i
b [22]

:[29]
pushloc.v local.__collayer
pushi.e -1
cmp.i.v NEQ
bf [31]

:[30]
pushloc.v local.__farthestdepth
pushloc.v local.__collayer
call.i layer_depth(argc=2)
popz.v

:[31]
pushloc.v local.__bind
pushi.e -1
cmp.i.v EQ
bf [33]

:[32]
pushloc.v local.__colstring
pop.v.v local.__layername
pushloc.v local.__farthestdepth
pop.v.v local.__layerdepth
b [36]

:[33]
pushloc.v local.__fore
pushi.e 1
cmp.b.v EQ
bf [35]

:[34]
pushloc.v local.__fgstring
pushloc.v local.__bind
call.i string(argc=1)
add.v.v
pop.v.v local.__layername
pushloc.v local.__nearestdepth
pushloc.v local.__bind
pushloc.v local.__depthinc
mul.v.v
sub.v.v
pop.v.v local.__layerdepth
b [36]

:[35]
pushloc.v local.__bgstring
pushloc.v local.__bind
call.i string(argc=1)
add.v.v
pop.v.v local.__layername
pushloc.v local.__farthestdepth
pushloc.v local.__depthinc
sub.v.v
pushloc.v local.__bind
pushloc.v local.__depthinc
mul.v.v
sub.v.v
pop.v.v local.__layerdepth

:[36]
pushloc.v local.__bind
pushi.e -1
cmp.i.v EQ
bf [38]

:[37]
pushloc.v local.__collayer
pop.v.v local.__layerid
b [39]

:[38]
pushi.e -7
pushloc.v local.__bind
conv.v.i
push.v [array]self.__slots
pop.v.v local.__layerid

:[39]
pushloc.v local.__layerid
pushi.e -1
cmp.i.v NEQ
bf [41]

:[40]
pushloc.v local.__layerid
call.i layer_destroy(argc=1)
popz.v

:[41]
pushloc.v local.__layername
pushloc.v local.__layerdepth
call.i layer_create(argc=2)
pop.v.v local.__layerid
pushloc.v local.__x
pushloc.v local.__layerid
call.i layer_x(argc=2)
popz.v
pushloc.v local.__y
pushloc.v local.__layerid
call.i layer_y(argc=2)
popz.v
pushloc.v local.__hspeed
pushloc.v local.__layerid
call.i layer_hspeed(argc=2)
popz.v
pushloc.v local.__vspeed
pushloc.v local.__layerid
call.i layer_vspeed(argc=2)
popz.v
pushloc.v local.__back
pushloc.v local.__layerid
call.i layer_background_create(argc=2)
pop.v.v local.__backel
pushloc.v local.__vis
pushloc.v local.__backel
call.i layer_background_visible(argc=2)
popz.v
pushloc.v local.__htiled
pushloc.v local.__backel
call.i layer_background_htiled(argc=2)
popz.v
pushloc.v local.__vtiled
pushloc.v local.__backel
call.i layer_background_vtiled(argc=2)
popz.v
pushloc.v local.__xscale
pushloc.v local.__backel
call.i layer_background_xscale(argc=2)
popz.v
pushloc.v local.__yscale
pushloc.v local.__backel
call.i layer_background_yscale(argc=2)
popz.v
pushloc.v local.__stretch
pushloc.v local.__backel
call.i layer_background_stretch(argc=2)
popz.v
pushloc.v local.__blend
pushloc.v local.__backel
call.i layer_background_blend(argc=2)
popz.v
pushloc.v local.__alpha
pushloc.v local.__backel
call.i layer_background_alpha(argc=2)
popz.v
push.i 35818635
setowner.e
pushloc.v local.__backel
pushi.e -7
pushi.e 0
pop.v.v [array]self.__result
pushloc.v local.__layerid
pushi.e -7
pushi.e 1
pop.v.v [array]self.__result
pushloc.v local.__result
ret.v

:[42]
exit.i

:[43]
push.i [function]gml_Script___background_set_element
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.__background_set_element
popz.v

:[end]