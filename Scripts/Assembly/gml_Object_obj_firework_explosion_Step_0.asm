.localvar 2 arguments
.localvar 107 i 8020
.localvar 19916 _expand 8028

:[0]
push.v self.time
pushi.e 1
add.i.v
pop.v.v self.time
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
push.v self.pixels
cmp.v.v LT
bf [end]

:[2]
push.i 168712
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.mypixely
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.pixelvsp
add.v.v
pop.i.v [array]self.mypixely
push.v self.maintain_shape
conv.v.b
bf [6]

:[3]
push.i 168713
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.pixelvsp
push.v self.def_grav
add.v.v
pop.i.v [array]self.pixelvsp
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.pixelvsp
push.v self.max_vsp
cmp.v.v GT
bf [5]

:[4]
push.v self.max_vsp
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.pixelvsp

:[5]
b [8]

:[6]
push.i 168713
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.pixelvsp
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.pixelgravoffset
add.v.v
pop.i.v [array]self.pixelvsp
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.pixelvsp
push.v self.max_vsp
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.pixelvspmaxoffset
add.v.v
cmp.v.v GT
bf [8]

:[7]
push.v self.max_vsp
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.pixelvspmaxoffset
add.v.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.pixelvsp

:[8]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.pixelexpandprog
pushi.e 1
cmp.i.v LT
bf [12]

:[9]
push.i 168716
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.pixelexpandprog
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.pixelexpandspd
add.v.v
pop.i.v [array]self.pixelexpandprog
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.pixelexpandprog
pushi.e 1
cmp.i.v GTE
bf [11]

:[10]
pushi.e 1
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.pixelexpandprog

:[11]
push.d 1.5707963267948966
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.pixelexpandprog
mul.v.d
call.i sin(argc=1)
pop.v.v local._expand
push.i 168718
setowner.e
pushloc.v local._expand
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.pixelexpand_h
push.i 168719
setowner.e
push.d 1.0995574287564276
pushloc.v local._expand
mul.v.d
call.i sin(argc=1)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.pixelexpand_v
b [15]

:[12]
push.i 168719
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.pixelexpand_v
push.d 0.01
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.pixelexpandspd
push.d 0.01
mul.d.v
add.v.d
add.v.v
pop.i.v [array]self.pixelexpand_v
push.i 168718
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.pixelexpand_h
push.d 0.01
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.pixelexpandspd
push.d 0.01
mul.d.v
add.v.d
add.v.v
pop.i.v [array]self.pixelexpand_h
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.pixelvsp
pushi.e 1
cmp.i.v GTE
bf [15]

:[13]
push.i 168720
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.pixelscale
push.d 0.02
sub.d.v
pop.i.v [array]self.pixelscale
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.pixelscale
pushi.e 0
cmp.i.v LTE
bf [15]

:[14]
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.pixelscale

:[15]
push.v self.maintain_shape
conv.v.b
not.b
bf [17]

:[16]
push.i 168699
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.pixelalpha
push.d 0.01
sub.d.v
pop.i.v [array]self.pixelalpha

:[17]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.pixelspritechangealarm
conv.v.b
bf [19]

:[18]
push.i 168721
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
dup.i 1
push.v [array]self.pixelspritechangealarm
pushi.e 1
sub.i.v
pop.i.v [array]self.pixelspritechangealarm

:[19]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[end]