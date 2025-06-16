.localvar 2 arguments

:[0]
pushi.e 99
pop.v.i self.con
pushi.e 0
pop.v.i self.pcon
pushi.e 0
pop.v.i self.ptimer
pushi.e 1546
conv.i.v
pushi.e 440
conv.i.v
pushi.e 500
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.puzzle
push.v self.puzzle
pushi.e -9
pushenv [2]

:[1]
pushi.e 3
pop.v.i self.max_suit
pushi.e 0
pop.v.i self.drawclue
push.i 175231
setowner.e
pushi.e 9
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.sol
pushi.e 9
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.sol
pushi.e 9
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.sol
pushi.e 9
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.sol

:[2]
popenv [1]
pushglb.v global.plot
pushi.e 75
cmp.i.v LT
bf [4]

:[3]
pushi.e 0
pop.v.i self.con
b [4]

:[4]
push.i 175232
setowner.e
pushi.e 3612
conv.i.v
pushi.e 280
conv.i.v
pushi.e 520
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.spiken
pushi.e 3612
conv.i.v
pushi.e 280
conv.i.v
pushi.e 560
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.spiken
pushi.e -1
pushi.e 0
push.v [array]self.spiken
pushi.e -9
pushenv [6]

:[5]
push.i 970000
pop.v.i self.depth

:[6]
popenv [5]
pushi.e -1
pushi.e 1
push.v [array]self.spiken
pushi.e -9
pushenv [8]

:[7]
push.i 970000
pop.v.i self.depth

:[8]
popenv [7]
pushi.e -5
pushi.e 234
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [12]

:[9]
pushi.e 1660
conv.i.v
pushi.e 280
conv.i.v
pushi.e 520
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.blockn
push.v self.blockn
pushi.e -9
pushenv [11]

:[10]
pushi.e 2
pop.v.i self.image_xscale

:[11]
popenv [10]
b [17]

:[12]
pushi.e -1
pushi.e 0
push.v [array]self.spiken
pushi.e -9
pushenv [14]

:[13]
pushi.e 1
pop.v.i self.image_index

:[14]
popenv [13]
pushi.e -1
pushi.e 1
push.v [array]self.spiken
pushi.e -9
pushenv [16]

:[15]
pushi.e 1
pop.v.i self.image_index

:[16]
popenv [15]

:[17]
pushi.e -5
pushi.e 235
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[18]
pushi.e 1660
conv.i.v
pushi.e 400
conv.i.v
pushi.e 1040
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.blocke
push.v self.blocke
pushi.e -9
pushenv [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
popenv [19]
push.v self.blocke
pushi.e -9
pushenv [22]

:[21]
pushi.e 2
pop.v.i self.image_yscale

:[22]
popenv [21]
b [end]

:[end]