.localvar 2 arguments

:[0]
push.v self.funnycheat
pushi.e 1
add.i.v
pop.v.v self.funnycheat
push.v self.funnycheat
pushi.e 5
cmp.i.v GT
bf [end]

:[1]
pushi.e -5
pushi.e 37
push.v [array]self.tempflag
pushi.e 2
cmp.i.v LT
bf [6]

:[2]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 26
cmp.i.v LT
bf [4]

:[3]
push.i 231909
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.monsterat
push.d 0.5
add.d.v
pop.i.v [array]self.monsterat
b [5]

:[4]
push.i 231909
setowner.e
pushi.e 26
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat

:[5]
pushi.e 1
pop.v.i self.hellmode
b [end]

:[6]
pushi.e -5
pushi.e 37
push.v [array]self.tempflag
pushi.e 4
cmp.i.v LT
bf [11]

:[7]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 22
cmp.i.v LT
bf [9]

:[8]
push.i 231909
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.monsterat
push.d 0.25
add.d.v
pop.i.v [array]self.monsterat
b [10]

:[9]
push.i 231909
setowner.e
pushi.e 22
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat

:[10]
pushi.e 1
pop.v.i self.hellmode
b [end]

:[11]
pushi.e -5
pushi.e 37
push.v [array]self.tempflag
pushi.e 6
cmp.i.v LT
bf [16]

:[12]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 18
cmp.i.v LT
bf [14]

:[13]
push.i 231909
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.monsterat
push.d 0.1
add.d.v
pop.i.v [array]self.monsterat
b [15]

:[14]
push.i 231909
setowner.e
pushi.e 18
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat

:[15]
b [end]

:[16]
pushi.e -5
pushi.e 37
push.v [array]self.tempflag
pushi.e 10
cmp.i.v LT
bf [21]

:[17]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 15
cmp.i.v LT
bf [19]

:[18]
push.i 231909
setowner.e
pushi.e -5
push.v self.myself
conv.v.i
dup.i 1
push.v [array]self.monsterat
push.d 0.04
add.d.v
pop.i.v [array]self.monsterat
b [20]

:[19]
push.i 231909
setowner.e
pushi.e 15
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.monsterat

:[20]
b [end]

:[21]
pushi.e -5
pushi.e 37
push.v [array]self.tempflag
pushi.e 10
cmp.i.v GTE
bf [end]

:[end]