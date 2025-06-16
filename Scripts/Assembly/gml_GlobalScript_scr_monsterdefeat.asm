.localvar 2 arguments

:[0]
b [51]

> gml_Script_scr_monsterdefeat (locals=0, argc=0)
:[1]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [50]

:[2]
push.i 26315212
setowner.e
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]self.monstergold
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstergold
add.v.v
pop.i.v [array]self.monstergold
push.i 26315213
setowner.e
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]self.monsterexp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterexp
add.v.v
pop.i.v [array]self.monsterexp
push.i 26314802
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monster
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [5]

:[3]
push.i 26314532
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
pop.v.v [array]self.flag
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e 0
cmp.i.v LTE
bf [5]

:[4]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
pop.v.v [array]self.flag

:[5]
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [8]

:[6]
pushi.e -5
pushi.e 40
dup.i 1
push.v [array]self.flag
pushi.e 1
add.i.v
pop.i.v [array]self.flag
push.v self.fatal
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e -5
pushi.e 44
push.v [array]self.flag
popz.v
pushi.e -5
pushi.e 44
dup.i 1
push.v [array]self.flag
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]global.flag
popz.v

:[8]
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
pushi.e -5
pushi.e 41
dup.i 1
push.v [array]self.flag
pushi.e 1
add.i.v
pop.i.v [array]self.flag

:[10]
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [12]

:[11]
pushi.e -5
pushi.e 42
dup.i 1
push.v [array]self.flag
pushi.e 1
add.i.v
pop.i.v [array]self.flag

:[12]
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
push.v [array]self.flag
pushi.e 5
cmp.i.v EQ
bf [14]

:[13]
pushi.e -5
pushi.e 43
dup.i 1
push.v [array]self.flag
pushi.e 1
add.i.v
pop.i.v [array]self.flag

:[14]
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
push.v [array]self.flag
pushi.e 6
cmp.i.v EQ
bf [16]

:[15]
pushi.e -5
pushi.e 45
dup.i 1
push.v [array]self.flag
pushi.e 1
add.i.v
pop.i.v [array]self.flag
push.i 26315212
setowner.e
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]self.monstergold
pushi.e 24
add.i.v
pop.i.v [array]self.monstergold

:[16]
call.i gml_Script_scr_monsterpop(argc=0)
pushi.e 0
cmp.i.v EQ
bf [49]

:[17]
pushi.e 0
pop.v.i self._amt_add
pushi.e 0
pop.v.i self._frozened
pushi.e 0
pop.v.i self._violenced
pushi.e 0
pop.v.i self._spared
pushi.e 0
pop.v.i self._pacified
pushi.e 0
pop.v.i self.d_i

:[18]
push.v self.d_i
pushi.e 3
cmp.i.v LT
bf [30]

:[19]
pushi.e -5
pushi.e 51
push.v self.d_i
add.v.i
conv.v.i
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [21]

:[20]
push.v self._amt_add
pushi.e 1
add.i.v
pop.v.v self._amt_add

:[21]
pushi.e -5
pushi.e 51
push.v self.d_i
add.v.i
conv.v.i
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
push.v self._violenced
pushi.e 1
add.i.v
pop.v.v self._violenced

:[23]
pushi.e -5
pushi.e 51
push.v self.d_i
add.v.i
conv.v.i
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [25]

:[24]
push.v self._spared
pushi.e 1
add.i.v
pop.v.v self._spared

:[25]
pushi.e -5
pushi.e 51
push.v self.d_i
add.v.i
conv.v.i
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [27]

:[26]
push.v self._pacified
pushi.e 1
add.i.v
pop.v.v self._pacified

:[27]
pushi.e -5
pushi.e 51
push.v self.d_i
add.v.i
conv.v.i
push.v [array]self.flag
pushi.e 6
cmp.i.v EQ
bf [29]

:[28]
push.v self._frozened
pushi.e 1
add.i.v
pop.v.v self._frozened

:[29]
push.v self.d_i
pushi.e 1
add.i.v
pop.v.v self.d_i
b [18]

:[30]
push.v self._frozened
pushi.e 0
cmp.i.v GT
bf [32]

:[31]
push.i 26314532
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 50
pop.v.v [array]self.flag

:[32]
push.v self._pacified
pushi.e 0
cmp.i.v GT
bf [34]

:[33]
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 50
pop.v.v [array]self.flag

:[34]
push.v self._spared
pushi.e 0
cmp.i.v GT
bf [36]

:[35]
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 50
pop.v.v [array]self.flag

:[36]
push.v self._violenced
pushi.e 0
cmp.i.v GT
bf [38]

:[37]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 50
pop.v.v [array]self.flag

:[38]
push.v self._frozened
pushi.e 0
cmp.i.v GT
bf [45]

:[39]
push.v self._pacified
pushi.e 0
cmp.i.v GT
bt [42]

:[40]
push.v self._violenced
pushi.e 0
cmp.i.v GT
bt [42]

:[41]
push.v self._spared
pushi.e 0
cmp.i.v GT
b [43]

:[42]
push.e 1

:[43]
bf [45]

:[44]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 50
pop.v.v [array]self.flag

:[45]
pushi.e -5
pushi.e 50
push.v [array]self.flag
pushi.e 6
cmp.i.v EQ
bf [47]

:[46]
pushi.e -5
pushi.e 926
push.v [array]self.flag
popz.v
pushi.e -5
pushi.e 926
dup.i 1
push.v [array]self.flag
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]global.flag
popz.v

:[47]
pushi.e -5
pushi.e 54
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [49]

:[48]
pushi.e -5
pushi.e 50
push.v [array]self.flag
pushi.e -5
pushi.e -5
pushi.e 54
push.v [array]self.flag
conv.v.i
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 54
pop.v.v [array]self.flag

:[49]
pushi.e 11
conv.i.v
call.i event_user(argc=1)
popz.v

:[50]
exit.i

:[51]
push.i [function]gml_Script_scr_monsterdefeat
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_monsterdefeat
popz.v

:[end]