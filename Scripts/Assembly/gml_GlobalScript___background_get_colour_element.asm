.localvar 2 arguments
.localvar 11014 __nearestdepth 2865
.localvar 11015 __farthestdepth 2866
.localvar 11016 __depthinc 2867
.localvar 11017 __result 2869
.localvar 11019 __colstring 2870
.localvar 11021 __layerlist 2871
.localvar 11022 __layerlistlength 2873
.localvar 11023 __layerid 2874
.localvar 11024 __isforeground 2875
.localvar 6565 __i 2876
.localvar 11026 __layername 2877
.localvar 11028 __els 2878
.localvar 11029 __elslength 2880
.localvar 11032 __newback 2881

:[0]
b [16]

> gml_Script___background_get_colour_element (locals=14, argc=0)
:[1]
pushi.e -15000
pop.v.i local.__nearestdepth
pushi.e 15999
pop.v.i local.__farthestdepth
pushi.e 100
pop.v.i local.__depthinc
push.i 35622027
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
push.s "Compatibility_Colour"@11018
pop.v.s local.__colstring
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
bf [6]

:[3]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]self.__layerlist
call.i layer_get_name(argc=1)
pop.v.v local.__layername
pushloc.v local.__layername
pushloc.v local.__colstring
call.i string_pos(argc=2)
pushi.e 0
cmp.i.v GT
bf [5]

:[4]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]self.__layerlist
pop.v.v local.__layerid
b [6]

:[5]
push.v local.__i
push.e 1
add.i.v
pop.v.v local.__i
b [2]

:[6]
pushloc.v local.__layerid
pushi.e -1
cmp.i.v NEQ
bf [13]

:[7]
pushloc.v local.__layerid
call.i layer_get_all_elements(argc=1)
pop.v.v local.__els
pushloc.v local.__els
call.i array_length_1d(argc=1)
pop.v.v local.__elslength
pushi.e 0
pop.v.i local.__i

:[8]
pushloc.v local.__i
pushloc.v local.__elslength
cmp.v.v LT
bf [12]

:[9]
pushi.e -7
pushloc.v local.__i
conv.v.i
push.v [array]self.__els
call.i layer_get_element_type(argc=1)
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.i 35622027
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

:[11]
push.v local.__i
push.e 1
add.i.v
pop.v.v local.__i
b [8]

:[12]
b [14]

:[13]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
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
pushi.e -1
conv.i.v
call.i gml_Script___background_set_element(argc=15)
pop.v.v local.__newback
push.i 35622027
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

:[14]
pushloc.v local.__result
ret.v

:[15]
exit.i

:[16]
push.i [function]gml_Script___background_get_colour_element
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.__background_get_colour_element
popz.v

:[end]