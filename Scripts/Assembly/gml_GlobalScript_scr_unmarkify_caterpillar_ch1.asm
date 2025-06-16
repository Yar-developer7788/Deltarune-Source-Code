.localvar 2 arguments

:[0]
b [48]

> gml_Script_scr_unmarkify_caterpillar_ch1 (locals=0, argc=0)
:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 2
cmp.i.v LT
bf [47]

:[3]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.cinstance
call.i instance_exists(argc=1)
conv.v.b
bf [46]

:[4]
pushi.e -5
push.v self.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [25]

:[5]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.x
push.v self.s
pushi.e -9
push.v [stacktop]self.x
cmp.v.v NEQ
bt [7]

:[6]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.y
push.v self.s
pushi.e -9
push.v [stacktop]self.x
cmp.v.v NEQ
b [8]

:[7]
push.e 1

:[8]
bf [12]

:[9]
push.i 112986609
setowner.e
push.v self.s
pushi.e -9
push.v [stacktop]self.x
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pop.v.v [stacktop]self.x
push.i 112986610
setowner.e
push.v self.s
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
add.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pushenv [11]

:[10]
call.i gml_Script_scr_caterpillar_interpolate_ch1(argc=0)
popz.v

:[11]
popenv [10]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.cinstance
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 10
sub.i.v
pop.i.v [stacktop]self.y

:[12]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pushenv [22]

:[13]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
push.v self.dsprite
pop.v.v self.sprite_index

:[15]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
push.v self.rsprite
pop.v.v self.sprite_index

:[17]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [19]

:[18]
push.v self.usprite
pop.v.v self.sprite_index

:[19]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [21]

:[20]
push.v self.lsprite
pop.v.v self.sprite_index

:[21]
pushi.e 1
pop.v.i self.visible

:[22]
popenv [13]
push.v self.s
pushi.e -9
pushenv [24]

:[23]
call.i instance_destroy(argc=0)
popz.v

:[24]
popenv [23]

:[25]
pushi.e -5
push.v self.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [46]

:[26]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.x
push.v self.r
pushi.e -9
push.v [stacktop]self.x
cmp.v.v NEQ
bt [28]

:[27]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.y
push.v self.r
pushi.e -9
push.v [stacktop]self.x
cmp.v.v NEQ
b [29]

:[28]
push.e 1

:[29]
bf [33]

:[30]
push.i 112986609
setowner.e
push.v self.r
pushi.e -9
push.v [stacktop]self.x
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pop.v.v [stacktop]self.x
push.i 112986610
setowner.e
push.v self.r
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
add.i.v
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pushenv [32]

:[31]
call.i gml_Script_scr_caterpillar_interpolate_ch1(argc=0)
popz.v

:[32]
popenv [31]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.cinstance
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 10
sub.i.v
pop.i.v [stacktop]self.y

:[33]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pushenv [43]

:[34]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
push.v self.dsprite
pop.v.v self.sprite_index

:[36]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [38]

:[37]
push.v self.rsprite
pop.v.v self.sprite_index

:[38]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [40]

:[39]
push.v self.usprite
pop.v.v self.sprite_index

:[40]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [42]

:[41]
push.v self.lsprite
pop.v.v self.sprite_index

:[42]
pushi.e 1
pop.v.i self.visible

:[43]
popenv [34]
push.v self.r
pushi.e -9
pushenv [45]

:[44]
call.i instance_destroy(argc=0)
popz.v

:[45]
popenv [44]

:[46]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[47]
exit.i

:[48]
push.i [function]gml_Script_scr_unmarkify_caterpillar_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_unmarkify_caterpillar_ch1
popz.v

:[end]