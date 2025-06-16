.localvar 2 arguments
.localvar 21173 road 9128

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 320
pop.v.i self.cx
pushi.e 10
pop.v.i self.factor
push.d 0.5
conv.d.v
pushi.e 0
conv.i.v
pushi.e 255
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.bred
push.i 1000000
pop.v.i self.depth
pushi.e 0
pop.v.i self.animsiner
pushi.e 321
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.road
pushloc.v local.road
pushi.e -9
pushenv [2]

:[1]
push.i 100000
pop.v.i self.depth

:[2]
popenv [1]

:[end]