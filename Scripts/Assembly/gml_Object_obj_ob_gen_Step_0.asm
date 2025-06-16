.localvar 2 arguments

:[0]
pushbltn.v builtin.room
push.l 9999999999
cmp.l.v EQ
bf [14]

:[1]
push.v self.timer
pushi.e 900
cmp.i.v GTE
bf [3]

:[2]
pushi.e 256
conv.i.v
pushi.e 240
conv.i.v
pushi.e 1202
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 256
conv.i.v
pushi.e 280
conv.i.v
pushi.e 1242
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 256
conv.i.v
pushi.e 320
conv.i.v
pushi.e 1282
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 256
conv.i.v
pushi.e 240
conv.i.v
pushi.e 962
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 256
conv.i.v
pushi.e 280
conv.i.v
pushi.e 1002
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 256
conv.i.v
pushi.e 320
conv.i.v
pushi.e 1042
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 256
conv.i.v
pushi.e 240
conv.i.v
pushi.e 722
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 256
conv.i.v
pushi.e 280
conv.i.v
pushi.e 762
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 256
conv.i.v
pushi.e 320
conv.i.v
pushi.e 802
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[3]
push.v 82.x
pushi.e 4000
cmp.i.v GTE
bf [5]

:[4]
push.v 82.x
pushi.e 1620
cmp.i.v LTE
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 1
pop.v.i 82.battlemode
b [9]

:[8]
pushi.e 0
pop.v.i 82.battlemode

:[9]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
push.v self.timer
pushi.e 1
add.i.v
pop.v.v self.timer

:[11]
push.v self.timer
pushi.e 40
cmp.i.v GTE
bf [14]

:[12]
pushi.e 0
pop.v.i self.timer
push.v self.con
pushi.e 40
mul.i.v
pop.v.v self.ch
pushi.e 256
conv.i.v
pushi.e 240
push.v self.ch
add.v.i
pushi.e 1442
push.v self.ch
sub.v.i
call.i gml_Script_instance_create(argc=3)
popz.v
push.v self.con
pushi.e 1
add.i.v
pop.v.v self.con
push.v self.con
pushi.e 2
cmp.i.v GT
bf [14]

:[13]
pushi.e 0
pop.v.i self.con

:[14]
push.v self.whitetimer
pushi.e 20
cmp.i.v GTE
bf [16]

:[15]
push.v self.whitecon
pushi.e 1
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [27]

:[18]
push.v 82.x
pushi.e 340
sub.i.v
pop.v.v self.xdiff
pushi.e 340
pop.v.i 82.x
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [22]

:[19]
push.i 133617
setowner.e
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
dup.i 4
push.v [stacktop]self.x
push.v self.xdiff
sub.v.v
pop.i.v [stacktop]self.x
pushi.e 25
pop.v.i self.i

:[20]
push.v self.i
pushi.e 0
cmp.i.v GTE
bf [22]

:[21]
push.i 231648
setowner.e
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
push.v self.i
conv.v.i
dup.i 5
push.v [array]self.remx
push.v self.xdiff
sub.v.v
pop.i.v [array]self.remx
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [20]

:[22]
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [26]

:[23]
push.i 133617
setowner.e
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
dup.i 4
push.v [stacktop]self.x
push.v self.xdiff
sub.v.v
pop.i.v [stacktop]self.x
pushi.e 25
pop.v.i self.i

:[24]
push.v self.i
pushi.e 0
cmp.i.v GTE
bf [26]

:[25]
push.i 231648
setowner.e
pushi.e -5
pushi.e 1
push.v [array]self.cinstance
pushi.e -9
push.v self.i
conv.v.i
dup.i 5
push.v [array]self.remx
push.v self.xdiff
sub.v.v
pop.i.v [array]self.remx
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [24]

:[26]
pushi.e 2
pop.v.i self.whitecon

:[27]
pushbltn.v builtin.room
push.l 9999999999999
cmp.l.v EQ
bf [end]

:[28]
push.v 82.x
pushi.e 4000
cmp.i.v GTE
bf [30]

:[29]
push.v 82.x
pushi.e 1620
cmp.i.v LTE
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
pushi.e 1
pop.v.i 82.battlemode
b [end]

:[33]
pushi.e 0
pop.v.i 82.battlemode

:[end]