.localvar 2 arguments
.localvar 12263 _array 3926
.localvar 12264 _ascending 3928
.localvar 12265 _array_length 3929
.localvar 12266 _tempValue 3930
.localvar 12267 _loopAgain 3931
.localvar 12268 _emergencyStop 3932

:[0]
b [19]

> gml_Script_scr_array_sort (locals=6, argc=2)
:[1]
push.v arg.argument0
pop.v.v local._array
push.v arg.argument1
pop.v.v local._ascending
push.v arg.argument0
call.i array_length_1d(argc=1)
pop.v.v local._array_length
pushi.e 0
pop.v.i local._tempValue
pushi.e 1
pop.v.b local._loopAgain
pushi.e 0
pop.v.i local._emergencyStop

:[2]
pushloc.v local._loopAgain
pushi.e 1
cmp.b.v EQ
bf [4]

:[3]
pushloc.v local._emergencyStop
pushi.e 100
cmp.i.v LT
b [5]

:[4]
push.e 0

:[5]
bf [15]

:[6]
pushi.e 0
pop.v.b local._loopAgain
push.v local._emergencyStop
push.e 1
add.i.v
pop.v.v local._emergencyStop
pushi.e 1
pop.v.i self.i

:[7]
push.v self.i
pushloc.v local._array_length
cmp.v.v LT
bf [14]

:[8]
pushi.e -7
push.v self.i
conv.v.i
push.v [array]self._array
pushi.e -7
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self._array
cmp.v.v EQ
bf [11]

:[9]
b [13]

:[10]
b [13]

:[11]
pushloc.v local._ascending
pushi.e -7
push.v self.i
conv.v.i
push.v [array]self._array
pushi.e -7
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self._array
cmp.v.v LT
cmp.b.v EQ
bf [13]

:[12]
pushi.e 1
pop.v.b local._loopAgain
pushi.e -7
push.v self.i
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self._array
pop.v.v local._tempValue
push.i 49122880
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

:[13]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [7]

:[14]
b [2]

:[15]
pushloc.v local._emergencyStop
pushi.e 100
cmp.i.v GTE
bf [17]

:[16]
push.s ""@157
conv.s.v
call.i gml_Script_scr_debug_print(argc=1)
popz.v

:[17]
pushloc.v local._array
ret.v

:[18]
exit.i

:[19]
push.i [function]gml_Script_scr_array_sort
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_array_sort
popz.v

:[end]