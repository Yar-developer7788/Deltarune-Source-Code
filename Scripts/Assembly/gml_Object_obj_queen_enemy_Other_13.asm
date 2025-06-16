.localvar 2 arguments

:[0]
push.i 231884
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
push.i 231885
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
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
push.i 231204
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
bf [3]

:[2]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
pop.v.v [array]self.flag

:[3]
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [6]

:[4]
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
bf [6]

:[5]
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

:[6]
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e -5
pushi.e 41
dup.i 1
push.v [array]self.flag
pushi.e 1
add.i.v
pop.i.v [array]self.flag

:[8]
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [10]

:[9]
pushi.e -5
pushi.e 42
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
pushi.e 5
cmp.i.v EQ
bf [12]

:[11]
pushi.e -5
pushi.e 43
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
pushi.e 6
cmp.i.v EQ
bf [14]

:[13]
pushi.e -5
pushi.e 45
dup.i 1
push.v [array]self.flag
pushi.e 1
add.i.v
pop.i.v [array]self.flag
push.i 231884
setowner.e
pushi.e -5
pushi.e 3
dup.i 1
push.v [array]self.monstergold
pushi.e 24
add.i.v
pop.i.v [array]self.monstergold

:[14]
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

:[15]
push.v self.d_i
pushi.e 3
cmp.i.v LT
bf [27]

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
pushi.e -5
pushi.e 51
push.v self.d_i
add.v.i
conv.v.i
push.v [array]self.flag
pushi.e 6
cmp.i.v EQ
bf [26]

:[25]
push.v self._frozened
pushi.e 1
add.i.v
pop.v.v self._frozened

:[26]
push.v self.d_i
pushi.e 1
add.i.v
pop.v.v self.d_i
b [15]

:[27]
push.v self._frozened
pushi.e 0
cmp.i.v GT
bf [29]

:[28]
push.i 231204
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 50
pop.v.v [array]self.flag

:[29]
push.v self._pacified
pushi.e 0
cmp.i.v GT
bf [31]

:[30]
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 50
pop.v.v [array]self.flag

:[31]
push.v self._spared
pushi.e 0
cmp.i.v GT
bf [33]

:[32]
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 50
pop.v.v [array]self.flag

:[33]
push.v self._violenced
pushi.e 0
cmp.i.v GT
bf [35]

:[34]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 50
pop.v.v [array]self.flag

:[35]
pushi.e -5
pushi.e 50
push.v [array]self.flag
pushi.e 6
cmp.i.v EQ
bf [37]

:[36]
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

:[37]
pushi.e -5
pushi.e 54
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [end]

:[38]
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

:[end]