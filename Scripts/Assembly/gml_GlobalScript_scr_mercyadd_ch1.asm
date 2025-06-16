.localvar 2 arguments

:[0]
b [4]

> gml_Script_scr_mercyadd_ch1 (locals=0, argc=2)
:[1]
push.i 110200934
setowner.e
pushi.e -5
push.v arg.argument0
conv.v.i
dup.i 1
push.v [array]self.mercymod
push.v arg.argument1
add.v.v
pop.i.v [array]self.mercymod
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.mercymod
pushi.e 0
cmp.i.v LT
bf [3]

:[2]
pushi.e 0
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.mercymod

:[3]
exit.i

:[4]
push.i [function]gml_Script_scr_mercyadd_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_mercyadd_ch1
popz.v

:[end]