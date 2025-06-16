.localvar 2 arguments

:[0]
push.v self.timer
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
exit.i

:[2]
pushi.e 1
pop.v.i self.timer
pushi.e 0
pop.v.i self.destroyable
push.v self.depth
pushi.e 40
sub.i.v
pop.v.v self.depth
pushi.e 190
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.d
push.i 16777215
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.image_blend

:[end]