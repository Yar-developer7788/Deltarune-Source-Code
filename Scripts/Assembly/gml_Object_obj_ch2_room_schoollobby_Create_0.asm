.localvar 2 arguments

:[0]
pushglb.v global.chapter
pushi.e 2
cmp.i.v GTE
bf [5]

:[1]
pushglb.v global.plot
pushi.e 100
cmp.i.v GTE
bf [5]

:[2]
pushi.e 903
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.sunset
push.v self.sunset
pushi.e -9
pushenv [4]

:[3]
push.d 0.4
pop.v.d self.image_alpha
pushi.e 2000
pop.v.i self.depth

:[4]
popenv [3]

:[5]
pushi.e -1
pop.v.i self.con
pushglb.v global.plot
pushi.e 8
cmp.i.v LT
bt [7]

:[6]
pushglb.v global.plot
pushi.e 9
cmp.i.v GTE
b [8]

:[7]
push.e 1

:[8]
bf [10]

:[9]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[10]
pushi.e 1
pop.v.i self.con

:[end]