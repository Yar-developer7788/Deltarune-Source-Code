.localvar 2 arguments

:[0]
push.v self.hideshooty
conv.v.b
bf [2]

:[1]
push.i 236842
setowner.e
pushi.e 0
conv.i.v
push.v self.sneo
pushi.e -9
pushi.e 1
pop.v.v [array]self.partframe

:[2]
pushi.e 697
pushenv [4]

:[3]
pushi.e 0
pop.v.i self.makeheartinit
pushi.e 0
pop.v.i self.makeheartalt
pushi.e 1
pop.v.i self.partmode
pushi.e 0
pop.v.i self.heart_release_con

:[4]
popenv [3]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.v self.difficulty
pushi.e 3
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [11]

:[8]
pushi.e 697
pushenv [10]

:[9]
pushi.e 4
conv.i.v
call.i gml_Script_scr_move_to_rememberxy(argc=1)
popz.v

:[10]
popenv [9]
b [12]

:[11]
push.v self.sneo
pushi.e -9
push.v [stacktop]self.xstart
push.v self.sneo
pushi.e -9
pop.v.v [stacktop]self.x

:[12]
push.v self.type
push.d 8.5
cmp.d.v EQ
bf [19]

:[13]
push.v self.krishp
pushi.e -5
pushi.e 1
push.v [array]self.hp
cmp.v.v NEQ
bt [16]

:[14]
push.v self.sushp
pushi.e -5
pushi.e 2
push.v [array]self.hp
cmp.v.v NEQ
bt [16]

:[15]
push.v self.ralhp
pushi.e -5
pushi.e 3
push.v [array]self.hp
cmp.v.v NEQ
b [17]

:[16]
push.e 1

:[17]
bf [19]

:[18]
pushi.e 0
pop.v.i 697.nothitduringphonehands

:[19]
push.v self.mercyaccumulated
pushi.e 0
cmp.i.v GT
bf [end]

:[20]
pushi.e 697
pushenv [25]

:[21]
push.i 231526
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.mercymod
push.v 698.mercyaccumulated
add.v.v
pop.i.v [array]self.mercymod
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 0
cmp.i.v LT
bf [23]

:[22]
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod

:[23]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 99
cmp.i.v GTE
bf [25]

:[24]
pushi.e 99
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.mercymod

:[25]
popenv [21]

:[end]