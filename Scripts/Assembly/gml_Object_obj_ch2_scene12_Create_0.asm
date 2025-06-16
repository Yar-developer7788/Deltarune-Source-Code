.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
pushglb.v global.plot
pushi.e 66
cmp.i.v LT
bf [10]

:[3]
pushi.e -1
pop.v.i self.con
pushi.e 84
conv.i.v
pushi.e 350
conv.i.v
pushi.e 408
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.dogcone1
push.v self.dogcone1
pushi.e -9
pushenv [5]

:[4]
push.i 1000150
pop.v.i self.depth

:[5]
popenv [4]
pushi.e 84
conv.i.v
push.v self.dogcone1
pushi.e -9
push.v [stacktop]self.y
push.v self.dogcone1
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.dogcone2
push.v self.dogcone2
pushi.e -9
pushenv [7]

:[6]
push.i 1000150
pop.v.i self.depth

:[7]
popenv [6]
pushi.e 84
conv.i.v
push.v self.dogcone1
pushi.e -9
push.v [stacktop]self.y
push.v self.dogcone1
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.dogcone3
push.v self.dogcone3
pushi.e -9
pushenv [9]

:[8]
push.i 1000150
pop.v.i self.depth

:[9]
popenv [8]

:[10]
pushglb.v global.plot
pushi.e 66
cmp.i.v GTE
bf [end]

:[11]
pushi.e 84
conv.i.v
pushi.e 350
conv.i.v
pushi.e 368
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.dogcone1
push.v self.dogcone1
pushi.e -9
pushenv [13]

:[12]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[13]
popenv [12]
pushi.e 84
conv.i.v
pushi.e 350
conv.i.v
push.v self.dogcone1
pushi.e -9
push.v [stacktop]self.x
pushi.e 40
sub.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.dogcone2
push.v self.dogcone2
pushi.e -9
pushenv [15]

:[14]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[15]
popenv [14]
pushi.e 84
conv.i.v
pushi.e 350
conv.i.v
push.v self.dogcone1
pushi.e -9
push.v [stacktop]self.x
pushi.e 80
sub.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.dogcone3
push.v self.dogcone3
pushi.e -9
pushenv [17]

:[16]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[17]
popenv [16]

:[end]