.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i self.active
pushi.e 100
pop.v.i self.depth
pushi.e 0
pop.v.i self.cur_jewel
call.i gml_Script_camerax(argc=0)
pop.v.v self.xx
call.i gml_Script_cameray(argc=0)
pop.v.v self.yy
pushi.e 0
pop.v.i self.xadd
pushi.e 0
pop.v.i self.yadd
push.v self.id
pushi.e 0
conv.i.v
pushi.e 879
conv.i.v
call.i instance_find(argc=2)
cmp.v.v NEQ
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]