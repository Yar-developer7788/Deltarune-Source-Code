.localvar 2 arguments

:[0]
b [33]

> gml_Script_scr_monsterdefeat_ch1 (locals=0, argc=0)
:[1]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [32]

:[2]
push.i 117148108
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
push.i 117148109
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
push.i 117147698
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
push.i 117147428
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
bf [7]

:[6]
pushi.e -5
pushi.e 40
dup.i 1
push.v [array]self.flag
pushi.e 1
add.i.v
pop.i.v [array]self.flag

:[7]
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e -5
pushi.e 41
dup.i 1
push.v [array]self.flag
pushi.e 1
add.i.v
pop.i.v [array]self.flag

:[9]
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
pushi.e -5
pushi.e 42
dup.i 1
push.v [array]self.flag
pushi.e 1
add.i.v
pop.i.v [array]self.flag

:[11]
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
push.v [array]self.flag
pushi.e 5
cmp.i.v EQ
bf [13]

:[12]
pushi.e -5
pushi.e 43
dup.i 1
push.v [array]self.flag
pushi.e 1
add.i.v
pop.i.v [array]self.flag

:[13]
call.i gml_Script_scr_monsterpop_ch1(argc=0)
pushi.e 0
cmp.i.v EQ
bf [31]

:[14]
pushi.e 0
pop.v.i self._amt_add
pushi.e 0
pop.v.i self._violenced
pushi.e 0
pop.v.i self._spared
pushi.e 0
pop.v.i self._pacified
pushi.e 0
pop.v.i self.d_i

:[15]
push.v self.d_i
pushi.e 3
cmp.i.v LT
bf [25]

:[16]
pushi.e -5
pushi.e 51
push.v self.d_i
add.v.i
conv.v.i
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [18]

:[17]
push.v self._amt_add
pushi.e 1
add.i.v
pop.v.v self._amt_add

:[18]
pushi.e -5
pushi.e 51
push.v self.d_i
add.v.i
conv.v.i
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
push.v self._violenced
pushi.e 1
add.i.v
pop.v.v self._violenced

:[20]
pushi.e -5
pushi.e 51
push.v self.d_i
add.v.i
conv.v.i
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [22]

:[21]
push.v self._spared
pushi.e 1
add.i.v
pop.v.v self._spared

:[22]
pushi.e -5
pushi.e 51
push.v self.d_i
add.v.i
conv.v.i
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [24]

:[23]
push.v self._pacified
pushi.e 1
add.i.v
pop.v.v self._pacified

:[24]
push.v self.d_i
pushi.e 1
add.i.v
pop.v.v self.d_i
b [15]

:[25]
push.v self._pacified
pushi.e 0
cmp.i.v GT
bf [27]

:[26]
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 50
pop.v.v [array]self.flag

:[27]
push.v self._spared
pushi.e 0
cmp.i.v GT
bf [29]

:[28]
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 50
pop.v.v [array]self.flag

:[29]
push.v self._violenced
pushi.e 0
cmp.i.v GT
bf [31]

:[30]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 50
pop.v.v [array]self.flag

:[31]
pushi.e 11
conv.i.v
call.i event_user(argc=1)
popz.v

:[32]
exit.i

:[33]
push.i [function]gml_Script_scr_monsterdefeat_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_monsterdefeat_ch1
popz.v

:[end]