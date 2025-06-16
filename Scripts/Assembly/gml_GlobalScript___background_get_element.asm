.localvar 2 arguments
.localvar 11035 __bind 2964
.localvar 11017 __result 2965
.localvar 11066 __fgstring 2966
.localvar 11068 __bgstring 2967
.localvar 11069 __fglen 2968
.localvar 11070 __bglen 2969
.localvar 11021 __layerlist 2970
.localvar 11022 __layerlistlength 2971
.localvar 11023 __layerid 2972
.localvar 11024 __isforeground 2973
.localvar 6565 __i 2974
.localvar 11026 __layername 2975
.localvar 11073 __slotchr 2976
.localvar 11074 __slot 2977
.localvar 11028 __els 2978
.localvar 11029 __elslength 2979
.localvar 11032 __newback 2980

:[0]
b [25]

> gml_Script___background_get_element (locals=17, argc=1)
:[1]
push.v arg.argument0
pop.v.v local.__bind
push.i 36015243
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
pushi.e -1
conv.i.v
pushi.e -7
pushi.e 2
pop.v.v [array]self.__result
push.s "Compatibility_Foreground_"@11065
pop.v.s local.__fgstring
push.s "Compatibility_Background_"@11067
pop.v.s local.__bgstring
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
pop.v.i local.__layerid
pushi.e 0
pop.v.b local.__isforeground
pushi.e 0
pop.v.i local.__i

:[2]
pushloc.v local.__i
pushloc.v local.__layerlistlength
cmp.v.v LT
bf [15]

:[3]
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
bf [9]

:[4]
pushloc.v local.__fglen
pushi.e 1
add.i.v
pushloc.v local.__layername
call.i string_char_at(argc=2)
pop.v.v local.__slotchr
pushloc.v local.__slotchr
push.s ""@157
cmp.s.v EQ
bf [6]

:[5]
b [14]

:[6]
pushloc.v local.__slotchr
call.i real(argc=1)
pop.v.v local.__slot
pushloc.v local.__slot
pushloc.v local.__bind
cmp.v.v EQ
bf [8]

:[7]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]self.__layerlist
pop.v.v local.__layerid
pushi.e 1
pop.v.b local.__isforeground
b [15]

:[8]
b [14]

:[9]
pushloc.v local.__layername
pushloc.v local.__bgstring
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [14]

:[10]
pushloc.v local.__bglen
pushi.e 1
add.i.v
pushloc.v local.__layername
call.i string_char_at(argc=2)
pop.v.v local.__slotchr
pushloc.v local.__slotchr
push.s ""@157
cmp.s.v EQ
bf [12]

:[11]
b [14]

:[12]
pushloc.v local.__slotchr
call.i real(argc=1)
pop.v.v local.__slot
pushloc.v local.__slot
pushloc.v local.__bind
cmp.v.v EQ
bf [14]

:[13]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]self.__layerlist
pop.v.v local.__layerid
pushi.e 0
pop.v.b local.__isforeground
b [15]

:[14]
push.v local.__i
push.e 1
add.i.v
pop.v.v local.__i
b [2]

:[15]
pushloc.v local.__layerid
pushi.e -1
cmp.i.v NEQ
bf [22]

:[16]
pushloc.v local.__layerid
call.i layer_get_all_elements(argc=1)
pop.v.v local.__els
pushloc.v local.__els
call.i array_length_1d(argc=1)
pop.v.v local.__elslength
pushi.e 0
pop.v.i local.__i

:[17]
pushloc.v local.__i
pushloc.v local.__elslength
cmp.v.v LT
bf [21]

:[18]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]self.__els
call.i layer_get_element_type(argc=1)
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
push.i 36015243
setowner.e
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]self.__els
pushi.e -7
pushi.e 0
pop.v.v [array]self.__result
pushloc.v local.__layerid
pushi.e -7
pushi.e 1
pop.v.v [array]self.__result
pushloc.v local.__isforeground
pushi.e -7
pushi.e 2
pop.v.v [array]self.__result

:[20]
push.v local.__i
push.e 1
add.i.v
pop.v.v local.__i
b [17]

:[21]
b [23]

:[22]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.b.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
conv.i.v
pushi.e 0
conv.b.v
pushi.e 0
conv.b.v
pushloc.v local.__bind
call.i gml_Script___background_set_element(argc=15)
pop.v.v local.__newback
push.i 36015243
setowner.e
pushi.e -7
pushi.e 0
push.v [array]self.__newback
pushi.e -7
pushi.e 0
pop.v.v [array]self.__result
pushi.e -7
pushi.e 1
push.v [array]self.__newback
pushi.e -7
pushi.e 1
pop.v.v [array]self.__result
pushi.e 0
conv.b.v
pushi.e -7
pushi.e 2
pop.v.v [array]self.__result

:[23]
pushloc.v local.__result
ret.v

:[24]
exit.i

:[25]
push.i [function]gml_Script___background_get_element
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.__background_get_element
popz.v

:[end]