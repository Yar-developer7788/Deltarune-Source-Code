.localvar 2 arguments

:[0]
b [42]

> gml_Script_scr_isphase (locals=0, argc=1)
:[1]
pushi.e 0
pop.v.i self.__isphase
push.v arg.argument0
push.s "menu"@6386
cmp.s.v EQ
bf [3]

:[2]
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i self.__isphase

:[6]
push.v arg.argument0
push.s "acting"@6387
cmp.s.v EQ
bf [8]

:[7]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 1
pop.v.i self.__isphase

:[11]
push.v arg.argument0
push.s "victory"@6368
cmp.s.v EQ
bf [13]

:[12]
pushglb.v global.myfight
pushi.e 7
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 1
pop.v.i self.__isphase

:[16]
push.v arg.argument0
push.s "attack"@6388
cmp.s.v EQ
bt [18]

:[17]
push.v arg.argument0
push.s "fight"@6389
cmp.s.v EQ
b [19]

:[18]
push.e 1

:[19]
bf [22]

:[20]
pushglb.v global.myfight
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e 1
pop.v.i self.__isphase

:[22]
push.v arg.argument0
push.s "spell"@222
cmp.s.v EQ
bt [24]

:[23]
push.v arg.argument0
push.s "item"@229
cmp.s.v EQ
b [25]

:[24]
push.e 1

:[25]
bf [28]

:[26]
pushglb.v global.myfight
pushi.e 4
cmp.i.v EQ
bf [28]

:[27]
pushi.e 1
pop.v.i self.__isphase

:[28]
push.v arg.argument0
push.s "enemytalk"@6390
cmp.s.v EQ
bt [30]

:[29]
push.v arg.argument0
push.s "balloon"@6391
cmp.s.v EQ
b [31]

:[30]
push.e 1

:[31]
bf [34]

:[32]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
pushi.e 1
pop.v.i self.__isphase

:[34]
push.v arg.argument0
push.s "enemyattack"@6392
cmp.s.v EQ
bt [36]

:[35]
push.v arg.argument0
push.s "bullets"@6393
cmp.s.v EQ
b [37]

:[36]
push.e 1

:[37]
bf [40]

:[38]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [40]

:[39]
pushi.e 1
pop.v.i self.__isphase

:[40]
push.v self.__isphase
ret.v

:[41]
exit.i

:[42]
push.i [function]gml_Script_scr_isphase
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_isphase
popz.v

:[end]