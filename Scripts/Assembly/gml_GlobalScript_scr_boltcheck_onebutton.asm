.localvar 2 arguments

:[0]
b [45]

> gml_Script_scr_boltcheck_onebutton (locals=0, argc=0)
:[1]
pushi.e -1
pop.v.i self.dualbolt
pushi.e -1
pop.v.i self.dualboltid
push.i 12749218
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.pressbuffer
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.pressbuffer
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.pressbuffer
pushi.e -1
pop.v.i self.qualifybolt
pushi.e 99
pop.v.i self.close
pushi.e 999
pop.v.i self.topclose
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
push.v self.bolttotal
cmp.v.v LT
bf [13]

:[3]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltalive
pushi.e 1
cmp.i.v EQ
bf [12]

:[4]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltframe
push.v self.boltx
sub.v.v
pop.v.v self.close
push.v self.close
pushi.e 15
cmp.i.v LT
bf [6]

:[5]
push.v self.close
pushi.e -5
cmp.i.v GT
b [7]

:[6]
push.e 0

:[7]
bf [12]

:[8]
push.v self.close
push.v self.topclose
cmp.v.v EQ
bf [10]

:[9]
pushi.e 1
pop.v.i self.dualbolt
push.v self.i
pop.v.v self.dualboltid

:[10]
push.v self.close
push.v self.topclose
cmp.v.v LT
bf [12]

:[11]
push.v self.close
pop.v.v self.topclose
push.v self.i
pop.v.v self.qualifybolt

:[12]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[13]
push.v self.qualifybolt
pushi.e -1
cmp.i.v NEQ
bf [44]

:[14]
pushi.e -1
push.v self.qualifybolt
conv.v.i
push.v [array]self.boltchar
pop.v.v self.bc
push.v self.topclose
call.i abs(argc=1)
pop.v.v self.p
pushi.e 359
conv.i.v
push.v self.y
pushi.e 38
push.v self.bc
mul.v.i
add.v.v
push.v self.x
pushi.e 80
add.i.v
pushi.e -1
push.v self.qualifybolt
conv.v.i
push.v [array]self.boltframe
push.v self.boltspeed
mul.v.v
add.v.v
push.v self.boltx
push.v self.boltspeed
mul.v.v
sub.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.burstbolt
push.v self.p
pushi.e 0
cmp.i.v EQ
bf [20]

:[15]
push.i 12749229
setowner.e
pushi.e -1
push.v self.bc
conv.v.i
dup.i 1
push.v [array]self.points
pushi.e 150
add.i.v
pop.i.v [array]self.points
push.v self.burstbolt
pushi.e -9
pushenv [17]

:[16]
push.i 65535
pop.v.i self.image_blend

:[17]
popenv [16]
push.v self.burstbolt
pushi.e -9
pushenv [19]

:[18]
push.d 0.2
pop.v.d self.mag

:[19]
popenv [18]

:[20]
push.v self.p
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
pushi.e -1
push.v self.bc
conv.v.i
dup.i 1
push.v [array]self.points
pushi.e 120
add.i.v
pop.i.v [array]self.points

:[22]
push.v self.p
pushi.e 2
cmp.i.v EQ
bf [24]

:[23]
pushi.e -1
push.v self.bc
conv.v.i
dup.i 1
push.v [array]self.points
pushi.e 110
add.i.v
pop.i.v [array]self.points

:[24]
push.v self.p
pushi.e 3
cmp.i.v GTE
bf [26]

:[25]
pushi.e -1
push.v self.bc
conv.v.i
dup.i 1
push.v [array]self.points
pushi.e 100
push.v self.topclose
call.i abs(argc=1)
pushi.e 2
mul.i.v
sub.v.i
add.v.v
pop.i.v [array]self.points
pushi.e -1
push.v self.bc
conv.v.i
push.v [array]self.boltcolor
push.v self.burstbolt
pushi.e -9
pop.v.v [stacktop]self.image_blend

:[26]
push.v self.p
pushi.e 15
cmp.i.v GTE
bf [28]

:[27]
pushi.e -1
push.v self.bc
conv.v.i
push.v [array]self.charcolor
push.v self.burstbolt
pushi.e -9
pop.v.v [stacktop]self.image_blend

:[28]
push.i 12749224
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.qualifybolt
conv.v.i
pop.v.v [array]self.boltalive
push.v self.dualbolt
pushi.e 1
cmp.i.v EQ
bf [44]

:[29]
pushi.e -1
push.v self.dualboltid
conv.v.i
push.v [array]self.boltchar
pop.v.v self.bc
push.v self.topclose
call.i abs(argc=1)
pop.v.v self.p
pushi.e 359
conv.i.v
push.v self.y
pushi.e 38
push.v self.bc
mul.v.i
add.v.v
push.v self.x
pushi.e 80
add.i.v
pushi.e -1
push.v self.dualboltid
conv.v.i
push.v [array]self.boltframe
push.v self.boltspeed
mul.v.v
add.v.v
push.v self.boltx
push.v self.boltspeed
mul.v.v
sub.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.burstbolt
push.v self.p
pushi.e 0
cmp.i.v EQ
bf [35]

:[30]
push.i 12749229
setowner.e
pushi.e -1
push.v self.bc
conv.v.i
dup.i 1
push.v [array]self.points
pushi.e 150
add.i.v
pop.i.v [array]self.points
push.v self.burstbolt
pushi.e -9
pushenv [32]

:[31]
push.i 65535
pop.v.i self.image_blend

:[32]
popenv [31]
push.v self.burstbolt
pushi.e -9
pushenv [34]

:[33]
push.d 0.2
pop.v.d self.mag

:[34]
popenv [33]

:[35]
push.v self.p
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
pushi.e -1
push.v self.bc
conv.v.i
dup.i 1
push.v [array]self.points
pushi.e 120
add.i.v
pop.i.v [array]self.points

:[37]
push.v self.p
pushi.e 2
cmp.i.v EQ
bf [39]

:[38]
pushi.e -1
push.v self.bc
conv.v.i
dup.i 1
push.v [array]self.points
pushi.e 110
add.i.v
pop.i.v [array]self.points

:[39]
push.v self.p
pushi.e 3
cmp.i.v GTE
bf [41]

:[40]
pushi.e -1
push.v self.bc
conv.v.i
dup.i 1
push.v [array]self.points
pushi.e 100
push.v self.topclose
call.i abs(argc=1)
pushi.e 2
mul.i.v
sub.v.i
add.v.v
pop.i.v [array]self.points
pushi.e -1
push.v self.bc
conv.v.i
push.v [array]self.boltcolor
push.v self.burstbolt
pushi.e -9
pop.v.v [stacktop]self.image_blend

:[41]
push.v self.p
pushi.e 15
cmp.i.v GTE
bf [43]

:[42]
pushi.e -1
push.v self.bc
conv.v.i
push.v [array]self.charcolor
push.v self.burstbolt
pushi.e -9
pop.v.v [stacktop]self.image_blend

:[43]
push.i 12749224
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.dualboltid
conv.v.i
pop.v.v [array]self.boltalive

:[44]
exit.i

:[45]
push.i [function]gml_Script_scr_boltcheck_onebutton
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_boltcheck_onebutton
popz.v

:[end]