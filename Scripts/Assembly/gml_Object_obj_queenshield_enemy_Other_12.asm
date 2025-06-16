.localvar 2 arguments
.localvar 6801 c 12167
.localvar 10271 b 12168

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 14
cmp.i.v LT
bf [3]

:[2]
push.i 171113
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shieldpiece_y
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shieldpiece_y_save
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i local.c

:[4]
pushloc.v local.c
pushi.e 14
cmp.i.v LT
bf [11]

:[5]
pushi.e -1
pushi.e 13
push.v [array]self.shieldpiece_y
pushi.e -1
pushi.e 12
push.v [array]self.shieldpiece_y
pushi.e -1
pushi.e 11
push.v [array]self.shieldpiece_y
pushi.e -1
pushi.e 10
push.v [array]self.shieldpiece_y
pushi.e -1
pushi.e 9
push.v [array]self.shieldpiece_y
pushi.e -1
pushi.e 8
push.v [array]self.shieldpiece_y
pushi.e -1
pushi.e 7
push.v [array]self.shieldpiece_y
pushi.e -1
pushi.e 6
push.v [array]self.shieldpiece_y
pushi.e -1
pushi.e 5
push.v [array]self.shieldpiece_y
pushi.e -1
pushi.e 4
push.v [array]self.shieldpiece_y
pushi.e -1
pushi.e 3
push.v [array]self.shieldpiece_y
pushi.e -1
pushi.e 2
push.v [array]self.shieldpiece_y
pushi.e -1
pushi.e 1
push.v [array]self.shieldpiece_y
pushi.e -1
pushi.e 0
push.v [array]self.shieldpiece_y
call.i min(argc=14)
pop.v.v local.b
pushi.e 0
pop.v.i self.i

:[6]
push.v self.i
pushi.e 14
cmp.i.v LT
bf [10]

:[7]
pushloc.v local.b
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shieldpiece_y
cmp.v.v EQ
bf [9]

:[8]
push.i 171122
setowner.e
push.v self.i
pushi.e -1
pushloc.v local.c
conv.v.i
pop.v.v [array]self.depthorder
push.v local.c
push.e 1
add.i.v
pop.v.v local.c
push.i 171112
setowner.e
pushi.e 9999
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shieldpiece_y

:[9]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [6]

:[10]
b [4]

:[11]
pushi.e 0
pop.v.i self.i

:[12]
push.v self.i
pushi.e 14
cmp.i.v LT
bf [end]

:[13]
push.i 171112
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.shieldpiece_y_save
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shieldpiece_y
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [12]

:[end]