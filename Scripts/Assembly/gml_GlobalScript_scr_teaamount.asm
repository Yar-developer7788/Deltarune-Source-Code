.localvar 2 arguments
.localvar 9128 __healamt 1488

:[0]
b [47]

> gml_Script_scr_teaamount (locals=1, argc=2)
:[1]
pushi.e 10
pop.v.i local.__healamt
push.v arg.argument0
pushi.e 1
cmp.i.v EQ
bf [10]

:[2]
push.v arg.argument1
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 10
pop.v.i local.__healamt

:[4]
push.v arg.argument1
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 120
pop.v.i local.__healamt

:[6]
push.v arg.argument1
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 120
pop.v.i local.__healamt

:[8]
push.v arg.argument1
pushi.e 4
cmp.i.v EQ
bf [10]

:[9]
pushi.e 70
pop.v.i local.__healamt

:[10]
push.v arg.argument0
pushi.e 2
cmp.i.v EQ
bf [19]

:[11]
push.v arg.argument1
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 120
pop.v.i local.__healamt

:[13]
push.v arg.argument1
pushi.e 2
cmp.i.v EQ
bf [15]

:[14]
pushi.e 10
pop.v.i local.__healamt

:[15]
push.v arg.argument1
pushi.e 3
cmp.i.v EQ
bf [17]

:[16]
pushi.e 120
pop.v.i local.__healamt

:[17]
push.v arg.argument1
pushi.e 4
cmp.i.v EQ
bf [19]

:[18]
pushi.e 400
pop.v.i local.__healamt

:[19]
push.v arg.argument0
pushi.e 3
cmp.i.v EQ
bf [28]

:[20]
push.v arg.argument1
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e 60
pop.v.i local.__healamt

:[22]
push.v arg.argument1
pushi.e 2
cmp.i.v EQ
bf [24]

:[23]
pushi.e 120
pop.v.i local.__healamt

:[24]
push.v arg.argument1
pushi.e 3
cmp.i.v EQ
bf [26]

:[25]
pushi.e 10
pop.v.i local.__healamt

:[26]
push.v arg.argument1
pushi.e 4
cmp.i.v EQ
bf [28]

:[27]
pushi.e 50
pop.v.i local.__healamt

:[28]
push.v arg.argument0
pushi.e 4
cmp.i.v EQ
bf [37]

:[29]
push.v arg.argument1
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
pushi.e 70
pop.v.i local.__healamt

:[31]
push.v arg.argument1
pushi.e 2
cmp.i.v EQ
bf [33]

:[32]
pushi.e 120
pop.v.i local.__healamt

:[33]
push.v arg.argument1
pushi.e 3
cmp.i.v EQ
bf [35]

:[34]
pushi.e 50
pop.v.i local.__healamt

:[35]
push.v arg.argument1
pushi.e 4
cmp.i.v EQ
bf [37]

:[36]
pushi.e 10
pop.v.i local.__healamt

:[37]
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
pushloc.v local.__healamt
pushi.e 40
cmp.i.v LT
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
pushi.e 40
pop.v.i local.__healamt

:[42]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [45]

:[43]
pushi.e 777
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [45]

:[44]
pushi.e 100
pop.v.i local.__healamt

:[45]
pushloc.v local.__healamt
ret.v

:[46]
exit.i

:[47]
push.i [function]gml_Script_scr_teaamount
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_teaamount
popz.v

:[end]