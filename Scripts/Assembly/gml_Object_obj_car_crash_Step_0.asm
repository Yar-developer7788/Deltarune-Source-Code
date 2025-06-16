.localvar 2 arguments

:[0]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 200
sub.i.v
cmp.v.v LTE
bf [2]

:[1]
pushi.e 1
pop.v.b self.cleanup

:[2]
push.v self.crash
conv.v.b
bf [5]

:[3]
push.v self.cleanup_timer
push.e 1
sub.i.v
pop.v.v self.cleanup_timer
push.v self.cleanup_timer
pushi.e 0
cmp.i.v LTE
bf [5]

:[4]
pushi.e 0
pop.v.b self.crash
pushi.e 1
pop.v.b self.cleanup

:[5]
push.v self.cleanup
conv.v.b
bf [end]

:[6]
pushi.e 0
pop.v.b self.cleanup
push.v self.explosion
pushi.e -1
cmp.i.v NEQ
bf [8]

:[7]
push.v self.explosion
call.i instance_destroy(argc=1)
popz.v

:[8]
call.i instance_destroy(argc=0)
popz.v

:[end]