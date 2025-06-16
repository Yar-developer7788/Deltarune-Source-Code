.localvar 2 arguments

:[0]
b [24]

> gml_Script_scr_makecaterpillar (locals=0, argc=4)
:[1]
push.i 40208611
setowner.e
pushi.e 276
conv.i.v
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_instance_create(argc=3)
pushi.e -5
push.v arg.argument3
conv.v.i
pop.v.v [array]self.cinstance
push.i 40208424
setowner.e
pushi.e 12
push.v arg.argument3
pushi.e 12
mul.i.v
add.v.i
pushi.e -5
push.v arg.argument3
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pop.v.v [stacktop]self.target
push.v arg.argument2
pushi.e 3
cmp.i.v EQ
bf [6]

:[2]
pushi.e -5
push.v arg.argument3
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pushenv [5]

:[3]
pushi.e 1012
pop.v.i self.usprite
pushi.e 1010
pop.v.i self.dsprite
pushi.e 1015
pop.v.i self.rsprite
pushi.e 1013
pop.v.i self.lsprite
pushglb.v global.chapter
pushi.e 2
cmp.i.v GTE
bf [5]

:[4]
push.s "ralsei"@72
pop.v.s self.name
pushi.e 799
pop.v.i self.usprite
pushi.e 785
pop.v.i self.dsprite
pushi.e 795
pop.v.i self.rsprite
pushi.e 791
pop.v.i self.lsprite

:[5]
popenv [3]

:[6]
push.v arg.argument2
pushi.e 4
cmp.i.v EQ
bf [14]

:[7]
pushi.e -5
push.v arg.argument3
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pushenv [13]

:[8]
push.s "noelle"@74
pop.v.s self.name
pushi.e 728
pop.v.i self.usprite
pushi.e 718
pop.v.i self.dsprite
pushi.e 724
pop.v.i self.rsprite
pushi.e 719
pop.v.i self.lsprite
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [10]

:[9]
pushglb.v global.plot
pushi.e 95
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
pushi.e 720
pop.v.i self.dsprite
pushi.e 725
pop.v.i self.rsprite
pushi.e 727
pop.v.i self.lsprite

:[13]
popenv [8]

:[14]
push.v arg.argument2
pushi.e 5
cmp.i.v EQ
bf [18]

:[15]
pushi.e -5
push.v arg.argument3
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pushenv [17]

:[16]
push.s "berdly"@4870
pop.v.s self.name
pushi.e 676
pop.v.i self.usprite
pushi.e 668
pop.v.i self.dsprite
pushi.e 674
pop.v.i self.rsprite
pushi.e 670
pop.v.i self.lsprite

:[17]
popenv [16]

:[18]
push.v arg.argument2
pushi.e 6
cmp.i.v EQ
bf [22]

:[19]
pushi.e -5
push.v arg.argument3
conv.v.i
push.v [array]self.cinstance
pushi.e -9
pushenv [21]

:[20]
push.s "starwalker"@9591
pop.v.s self.name
pushi.e 1209
pop.v.i self.usprite
pushi.e 1209
pop.v.i self.dsprite
pushi.e 1209
pop.v.i self.rsprite
pushi.e 1209
pop.v.i self.lsprite

:[21]
popenv [20]

:[22]
pushi.e -5
push.v arg.argument3
conv.v.i
push.v [array]self.cinstance
ret.v

:[23]
exit.i

:[24]
push.i [function]gml_Script_scr_makecaterpillar
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_makecaterpillar
popz.v

:[end]