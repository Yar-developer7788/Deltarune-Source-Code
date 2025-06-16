.localvar 2 arguments

:[0]
b [8]

> gml_Script_scr_caterpillar_interpolate (locals=0, argc=0)
:[1]
push.v 82.y
push.v 82.x
push.v self.y
push.v self.x
call.i point_direction(argc=4)
call.i gml_Script_scr_get_cardinal_direction(argc=1)
call.i gml_Script_scr_facing_letter_to_number(argc=1)
pop.v.v self._newfacing
push.i 10520800
setowner.e
push.v 82.x
pushi.e -1
pushi.e 0
pop.v.v [array]self.remx
push.i 10520801
setowner.e
push.v 82.y
pushi.e -1
pushi.e 0
pop.v.v [array]self.remy
push.i 10520393
setowner.e
push.v self._newfacing
pushi.e -1
pushi.e 0
pop.v.v [array]self.facing
push.v self.target
pop.v.v self._iaia

:[2]
push.v self._iaia
pushi.e 0
cmp.i.v GT
bf [7]

:[3]
push.i 10520800
setowner.e
push.v self._iaia
push.v self.target
div.v.v
push.v self.x
push.v 82.x
call.i lerp(argc=3)
pushi.e -1
push.v self._iaia
conv.v.i
pop.v.v [array]self.remx
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.i 10520801
setowner.e
push.v self._iaia
push.v self.target
div.v.v
push.v self.y
pushi.e 16
add.i.v
push.v 82.y
call.i lerp(argc=3)
pushi.e -1
push.v self._iaia
conv.v.i
pop.v.v [array]self.remy
b [6]

:[5]
push.i 10520801
setowner.e
push.v self._iaia
push.v self.target
div.v.v
push.v self.y
pushi.e 6
add.i.v
push.v 82.y
call.i lerp(argc=3)
pushi.e -1
push.v self._iaia
conv.v.i
pop.v.v [array]self.remy

:[6]
push.i 10520393
setowner.e
push.v self._newfacing
pushi.e -1
push.v self._iaia
conv.v.i
pop.v.v [array]self.facing
push.v self._iaia
pushi.e 1
sub.i.v
pop.v.v self._iaia
b [2]

:[7]
exit.i

:[8]
push.i [function]gml_Script_scr_caterpillar_interpolate
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_caterpillar_interpolate
popz.v

:[end]