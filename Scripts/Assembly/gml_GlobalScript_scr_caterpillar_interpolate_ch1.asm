.localvar 2 arguments

:[0]
b [5]

> gml_Script_scr_caterpillar_interpolate_ch1 (locals=0, argc=0)
:[1]
push.i 56527072
setowner.e
push.v 1351.x
pushi.e -1
pushi.e 0
pop.v.v [array]self.remx
push.i 56527073
setowner.e
push.v 1351.y
pushi.e -1
pushi.e 0
pop.v.v [array]self.remy
push.i 56526665
setowner.e
pushglb.v global.facing
pushi.e -1
pushi.e 0
pop.v.v [array]self.facing
push.v self.target
pop.v.v self.i

:[2]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
pushi.e 2
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.facing
push.i 56527072
setowner.e
push.v 1351.x
push.v self.x
push.v 1351.x
sub.v.v
push.v self.i
push.v self.target
div.v.v
mul.v.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.remx
push.i 56527073
setowner.e
push.v 1351.y
push.v self.y
push.v 1351.y
sub.v.v
push.v self.i
push.v self.target
div.v.v
mul.v.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.remy
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [2]

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_caterpillar_interpolate_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_caterpillar_interpolate_ch1
popz.v

:[end]