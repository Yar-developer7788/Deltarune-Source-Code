.localvar 2 arguments

:[0]
b [31]

> gml_Script_scr_boltcheck_ch1 (locals=0, argc=1)
:[1]
push.i 58100130
setowner.e
pushi.e 5
conv.i.v
pushi.e -1
pushi.e -5
push.v arg.argument0
conv.v.i
push.v [array]self.char
conv.v.i
pop.v.v [array]self.pressbuffer
pushi.e -1
pop.v.i self.qualifybolt
pushi.e 99
pop.v.i self.close
pushi.e 99
pop.v.i self.topclose
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
push.v self.bolttotal
cmp.v.v LT
bf [14]

:[3]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltchar
push.v arg.argument0
cmp.v.v EQ
bf [5]

:[4]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.boltalive
pushi.e 1
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [13]

:[7]
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
bf [9]

:[8]
push.v self.close
pushi.e -5
cmp.i.v GT
b [10]

:[9]
push.e 0

:[10]
bf [13]

:[11]
push.v self.close
push.v self.topclose
cmp.v.v LT
bf [13]

:[12]
push.v self.close
pop.v.v self.topclose
push.v self.i
pop.v.v self.qualifybolt

:[13]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[14]
push.v self.qualifybolt
pushi.e -1
cmp.i.v NEQ
bf [30]

:[15]
push.v self.topclose
call.i abs(argc=1)
pop.v.v self.p
pushi.e 1521
conv.i.v
push.v self.y
pushi.e 38
push.v arg.argument0
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
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.burstbolt
push.v self.p
pushi.e 0
cmp.i.v EQ
bf [21]

:[16]
push.i 58100141
setowner.e
pushi.e -1
push.v arg.argument0
conv.v.i
dup.i 1
push.v [array]self.points
pushi.e 150
add.i.v
pop.i.v [array]self.points
push.v self.burstbolt
pushi.e -9
pushenv [18]

:[17]
push.i 65535
pop.v.i self.image_blend

:[18]
popenv [17]
push.v self.burstbolt
pushi.e -9
pushenv [20]

:[19]
push.d 0.2
pop.v.d self.mag

:[20]
popenv [19]

:[21]
push.v self.p
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
pushi.e -1
push.v arg.argument0
conv.v.i
dup.i 1
push.v [array]self.points
pushi.e 120
add.i.v
pop.i.v [array]self.points

:[23]
push.v self.p
pushi.e 2
cmp.i.v EQ
bf [25]

:[24]
pushi.e -1
push.v arg.argument0
conv.v.i
dup.i 1
push.v [array]self.points
pushi.e 110
add.i.v
pop.i.v [array]self.points

:[25]
push.v self.p
pushi.e 3
cmp.i.v GTE
bf [27]

:[26]
pushi.e -1
push.v arg.argument0
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
push.v arg.argument0
conv.v.i
push.v [array]self.boltcolor
push.v self.burstbolt
pushi.e -9
pop.v.v [stacktop]self.image_blend

:[27]
push.v self.p
pushi.e 15
cmp.i.v GTE
bf [29]

:[28]
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.charcolor
push.v self.burstbolt
pushi.e -9
pop.v.v [stacktop]self.image_blend

:[29]
push.i 58100136
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.qualifybolt
conv.v.i
pop.v.v [array]self.boltalive

:[30]
exit.i

:[31]
push.i [function]gml_Script_scr_boltcheck_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_boltcheck_ch1
popz.v

:[end]