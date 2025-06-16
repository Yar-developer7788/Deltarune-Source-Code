.localvar 2 arguments
.localvar 37634 hints 18984

:[0]
pushi.e 0
pop.v.i self.victory
pushi.e -5
pushi.e 378
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 377
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 1273
pushenv [6]

:[5]
pushi.e 1
pop.v.i self.inert

:[6]
popenv [5]
pushi.e 1275
pushenv [8]

:[7]
pushi.e 1
pop.v.i self.inert

:[8]
popenv [7]
pushi.e 1160
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]
pushi.e 1224
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.hints
pushloc.v local.hints
pushi.e -9
pushenv [12]

:[11]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[12]
popenv [11]
call.i instance_destroy(argc=0)
popz.v

:[end]