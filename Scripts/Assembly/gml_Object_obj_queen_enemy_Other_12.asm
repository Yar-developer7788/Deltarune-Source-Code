.localvar 2 arguments

:[0]
push.v self.bardlymercy
pushi.e 25
cmp.i.v GTE
bf [2]

:[1]
push.v self.phase
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bt [8]

:[4]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
push.d 0.75
mul.d.v
cmp.v.v LT
bf [6]

:[5]
push.v self.phase
pushi.e 1
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
pushi.e 1
pop.v.i self.usewineattack
pushi.e 2
pop.v.i self.phase
pushi.e 0
pop.v.i self.wirescut
pushi.e 400
pop.v.i self.shieldhp
push.v self.shieldhp
pop.v.v self.shieldmaxhp
pushi.e 6
pop.v.i self.shieldacthp
push.v self.shieldacthp
pop.v.v self.shieldactmaxhp
pushi.e 50
pop.v.i self.targetmercy

:[11]
push.v self.bardlymercy
pushi.e 50
cmp.i.v GTE
bf [13]

:[12]
push.v self.phase
pushi.e 2
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bt [19]

:[15]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
push.d 0.5
mul.d.v
cmp.v.v LT
bf [17]

:[16]
push.v self.phase
pushi.e 2
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
b [20]

:[19]
push.e 1

:[20]
bf [22]

:[21]
pushi.e 1
pop.v.i self.usewineattack
pushi.e 3
pop.v.i self.phase
pushi.e 10
pop.v.i self.shieldsize
pushi.e 0
pop.v.i self.wirescut
pushi.e 500
pop.v.i self.shieldhp
push.v self.shieldhp
pop.v.v self.shieldmaxhp
pushi.e 8
pop.v.i self.shieldacthp
push.v self.shieldacthp
pop.v.v self.shieldactmaxhp
pushi.e 75
pop.v.i self.targetmercy

:[22]
push.v self.bardlymercy
pushi.e 75
cmp.i.v GTE
bf [24]

:[23]
push.v self.phase
pushi.e 3
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bt [30]

:[26]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monstermaxhp
push.d 0.25
mul.d.v
cmp.v.v LT
bf [28]

:[27]
push.v self.phase
pushi.e 3
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
b [31]

:[30]
push.e 1

:[31]
bf [end]

:[32]
pushi.e 1
pop.v.i self.usewineattack
pushi.e 4
pop.v.i self.phase
pushi.e 12
pop.v.i self.shieldsize
pushi.e 0
pop.v.i self.wirescut
pushi.e 500
pop.v.i self.shieldhp
push.v self.shieldhp
pop.v.v self.shieldmaxhp
pushi.e 8
pop.v.i self.shieldacthp
push.v self.shieldacthp
pop.v.v self.shieldactmaxhp
pushi.e 100
pop.v.i self.targetmercy

:[end]