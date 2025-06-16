.localvar 2 arguments
.localvar 338 _i 242

:[0]
b [6]

> gml_Script_scr_fountain_levelup (locals=1, argc=0)
:[1]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [5]

:[2]
push.i 3901148
setowner.e
pushi.e 999
conv.i.v
pushi.e 160
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.maxhp
call.i clamp(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.maxhp
pushi.e 999
conv.i.v
pushi.e 190
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]self.maxhp
call.i clamp(argc=3)
pushi.e -5
pushi.e 2
pop.v.v [array]self.maxhp
pushi.e 999
conv.i.v
pushi.e 140
conv.i.v
pushi.e -5
pushi.e 3
push.v [array]self.maxhp
call.i clamp(argc=3)
pushi.e -5
pushi.e 3
pop.v.v [array]self.maxhp
pushi.e -5
pushi.e 66
push.v [array]self.flag
pop.v.v local._i

:[3]
pushloc.v local._i
pushi.e 2
cmp.i.v LT
bf [5]

:[4]
push.i 3901149
setowner.e
pushi.e -5
pushi.e 1
dup.i 1
push.v [array]self.at
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]global.at
popz.v
pushi.e -5
pushi.e 2
push.v [array]self.at
popz.v
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]self.at
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]global.at
popz.v
push.i 3901151
setowner.e
pushi.e -5
pushi.e 2
dup.i 1
push.v [array]self.mag
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]global.mag
popz.v
push.i 3901149
setowner.e
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]self.at
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]global.at
popz.v
push.i 3901151
setowner.e
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]self.mag
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]global.mag
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [3]

:[5]
exit.i

:[6]
push.i [function]gml_Script_scr_fountain_levelup
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_fountain_levelup
popz.v

:[end]