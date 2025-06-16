.localvar 2 arguments
.localvar 67 heroobj 39
.localvar 78 heroballoon 40

:[0]
b [25]

> gml_Script_scr_heroblcon (locals=2, argc=1)
:[1]
push.i -69420
pop.v.i local.heroobj
push.v arg.argument0
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [15]

:[2]
dup.v 0
push.s "kris"@68
cmp.s.v EQ
bt [15]

:[3]
dup.v 0
push.s "kr"@69
cmp.s.v EQ
bt [15]

:[4]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [16]

:[5]
dup.v 0
push.s "susie"@70
cmp.s.v EQ
bt [16]

:[6]
dup.v 0
push.s "su"@71
cmp.s.v EQ
bt [16]

:[7]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [17]

:[8]
dup.v 0
push.s "ralsei"@72
cmp.s.v EQ
bt [17]

:[9]
dup.v 0
push.s "ra"@73
cmp.s.v EQ
bt [17]

:[10]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [18]

:[11]
dup.v 0
push.s "noelle"@74
cmp.s.v EQ
bt [18]

:[12]
dup.v 0
push.s "no"@75
cmp.s.v EQ
bt [18]

:[13]
b [19]

:[14]
b [20]

:[15]
pushi.e 372
pop.v.i local.heroobj
b [20]

:[16]
pushi.e 373
pop.v.i local.heroobj
b [20]

:[17]
pushi.e 374
pop.v.i local.heroobj
b [20]

:[18]
pushi.e 375
pop.v.i local.heroobj
b [20]

:[19]
push.i -69420
pop.v.i local.heroobj
b [20]

:[20]
popz.v
pushloc.v local.heroobj
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [23]

:[21]
pushi.e 10
conv.i.v
pushloc.v local.heroobj
pushi.e -9
push.v [stacktop]self.y
pushi.e 40
add.i.v
pushloc.v local.heroobj
pushi.e -9
push.v [stacktop]self.x
pushi.e 100
add.i.v
call.i gml_Script_scr_enemyblcon(argc=3)
pop.v.v local.heroballoon
pushi.e -1
pushloc.v local.heroballoon
pushi.e -9
pop.v.i [stacktop]self.side
pushloc.v local.heroballoon
ret.v

:[22]
b [24]

:[23]
pushi.e 0
conv.b.v
ret.v

:[24]
exit.i

:[25]
push.i [function]gml_Script_scr_heroblcon
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_heroblcon
popz.v

:[end]