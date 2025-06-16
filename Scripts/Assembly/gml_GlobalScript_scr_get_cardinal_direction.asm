.localvar 2 arguments

:[0]
b [33]

> gml_Script_scr_get_cardinal_direction (locals=0, argc=1)
:[1]
push.s "n"@9912
pop.v.s self._mycardinal
push.v arg.argument0
pop.v.v self._mydegree

:[2]
push.v self._mydegree
pushi.e 360
cmp.i.v GT
bt [4]

:[3]
push.v self._mydegree
pushi.e 0
cmp.i.v LT
b [5]

:[4]
push.e 1

:[5]
bf [11]

:[6]
push.v self._mydegree
pushi.e 360
cmp.i.v GT
bf [8]

:[7]
push.v self._mydegree
pushi.e 360
sub.i.v
pop.v.v self._mydegree

:[8]
push.v self._mydegree
pushi.e 0
cmp.i.v LT
bf [10]

:[9]
push.v self._mydegree
pushi.e 360
add.i.v
pop.v.v self._mydegree

:[10]
b [2]

:[11]
push.v self._mydegree
pushi.e 315
cmp.i.v GTE
bt [13]

:[12]
push.v self._mydegree
pushi.e 45
cmp.i.v LTE
b [14]

:[13]
push.e 1

:[14]
bf [16]

:[15]
push.s "r"@6696
pop.v.s self._mycardinal

:[16]
push.v self._mydegree
pushi.e 45
cmp.i.v GTE
bf [18]

:[17]
push.v self._mydegree
pushi.e 135
cmp.i.v LTE
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
push.s "u"@6708
pop.v.s self._mycardinal

:[21]
push.v self._mydegree
pushi.e 135
cmp.i.v GTE
bf [23]

:[22]
push.v self._mydegree
pushi.e 225
cmp.i.v LTE
b [24]

:[23]
push.e 0

:[24]
bf [26]

:[25]
push.s "l"@6707
pop.v.s self._mycardinal

:[26]
push.v self._mydegree
pushi.e 225
cmp.i.v GTE
bf [28]

:[27]
push.v self._mydegree
pushi.e 315
cmp.i.v LTE
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
push.s "d"@6706
pop.v.s self._mycardinal

:[31]
push.v self._mycardinal
ret.v

:[32]
exit.i

:[33]
push.i [function]gml_Script_scr_get_cardinal_direction
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_get_cardinal_direction
popz.v

:[end]