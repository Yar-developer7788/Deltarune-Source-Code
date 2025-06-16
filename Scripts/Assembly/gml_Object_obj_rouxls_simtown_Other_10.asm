.localvar 2 arguments
.localvar 26886 kris_houses 13956
.localvar 26887 roulx_houses 13957

:[0]
pushi.e 0
pop.v.i local.kris_houses
pushi.e 0
pop.v.i local.roulx_houses
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 16
cmp.i.v LT
bf [10]

:[2]
pushi.e 0
pop.v.i self.j

:[3]
push.v self.j
pushi.e 6
cmp.i.v LT
bf [9]

:[4]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.TileHasHouse
push.v self.j
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.v local.kris_houses
push.e 1
add.i.v
pop.v.v local.kris_houses

:[6]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.TileHasHouse
push.v self.j
conv.v.i
pushaf.e
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
push.v local.roulx_houses
push.e 1
add.i.v
pop.v.v local.roulx_houses

:[8]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [3]

:[9]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[10]
pushloc.v local.kris_houses
pushloc.v local.roulx_houses
cmp.v.v GT
bf [12]

:[11]
push.s "won"@21885
pop.v.s self.actresult
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 435
pop.v.v [array]self.flag
b [end]

:[12]
pushloc.v local.kris_houses
pushloc.v local.roulx_houses
cmp.v.v EQ
bf [14]

:[13]
push.s "tie"@26711
pop.v.s self.actresult
push.i 231204
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 435
pop.v.v [array]self.flag
b [end]

:[14]
pushloc.v local.kris_houses
pushloc.v local.roulx_houses
cmp.v.v LT
bf [end]

:[15]
push.s "lost"@26807
pop.v.s self.actresult
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 435
pop.v.v [array]self.flag

:[end]