.localvar 2 arguments
.localvar 12263 _array 3935
.localvar 12264 _ascending 3936
.localvar 12265 _array_length 3937
.localvar 12266 _tempValue 3939
.localvar 12267 _loopAgain 3940
.localvar 12268 _emergencyStop 3941

:[0]
b [22]

> gml_Script_scr_sort_by_distance (locals=7, argc=4)
:[1]
push.v arg.argument2
pop.v.v local._array
push.v arg.argument3
pop.v.v local._ascending
push.v arg.argument0
call.i array_length_1d(argc=1)
pop.v.v local._array_length
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushloc.v local._array_length
cmp.v.v LT
bf [4]

:[3]
push.i 49188422
setowner.e
pushi.e -7
push.v self.i
conv.v.i
push.v [array]self._array
pushi.e -9
push.v [stacktop]self.y
pushi.e -7
push.v self.i
conv.v.i
push.v [array]self._array
pushi.e -9
push.v [stacktop]self.x
push.v arg.argument1
push.v arg.argument0
call.i point_distance(argc=4)
pushi.e -7
push.v self.i
conv.v.i
pop.v.v [array]self._distance_array
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
pushi.e 0
pop.v.i local._tempValue
pushi.e 1
pop.v.b local._loopAgain
pushi.e 0
pop.v.i local._emergencyStop

:[5]
pushloc.v local._loopAgain
pushi.e 1
cmp.b.v EQ
bf [7]

:[6]
pushloc.v local._emergencyStop
pushi.e 100
cmp.i.v LT
b [8]

:[7]
push.e 0

:[8]
bf [18]

:[9]
pushi.e 0
pop.v.b local._loopAgain
push.v local._emergencyStop
push.e 1
add.i.v
pop.v.v local._emergencyStop
pushi.e 1
pop.v.i self.i

:[10]
push.v self.i
pushloc.v local._array_length
cmp.v.v LT
bf [17]

:[11]
pushi.e -7
push.v self.i
conv.v.i
push.v [array]self._distance_array
pushi.e -7
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self._distance_array
cmp.v.v EQ
bf [14]

:[12]
b [16]

:[13]
b [16]

:[14]
pushloc.v local._ascending
pushi.e -7
push.v self.i
conv.v.i
push.v [array]self._distance_array
pushi.e -7
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self._distance_array
cmp.v.v LT
cmp.b.v EQ
bf [16]

:[15]
pushi.e 1
pop.v.b local._loopAgain
pushi.e -7
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self._distance_array
pop.v.v local._tempValue
push.i 49188422
setowner.e
pushi.e -7
push.v self.i
conv.v.i
push.v [array]self._distance_array
pushi.e -7
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
pop.v.v [array]self._distance_array
pushloc.v local._tempValue
pushi.e -7
push.v self.i
conv.v.i
pop.v.v [array]self._distance_array
pushi.e -7
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self._array
pop.v.v local._tempValue
push.i 49188416
setowner.e
pushi.e -7
push.v self.i
conv.v.i
push.v [array]self._array
pushi.e -7
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
pop.v.v [array]self._array
pushloc.v local._tempValue
pushi.e -7
push.v self.i
conv.v.i
pop.v.v [array]self._array

:[16]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [10]

:[17]
b [5]

:[18]
pushloc.v local._emergencyStop
pushi.e 100
cmp.i.v GTE
bf [20]

:[19]
push.s ""@157
conv.s.v
call.i gml_Script_scr_debug_print(argc=1)
popz.v

:[20]
pushloc.v local._array
ret.v

:[21]
exit.i

:[22]
push.i [function]gml_Script_scr_sort_by_distance
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_sort_by_distance
popz.v

:[end]