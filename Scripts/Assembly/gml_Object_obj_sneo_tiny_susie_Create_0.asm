.localvar 2 arguments

:[0]
pushi.e 50
pop.v.i self.hp
pushi.e 0
pop.v.i self.axe_timer
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.frametype
call.i gml_Script_camerax(argc=0)
pushi.e 320
add.i.v
pop.v.v self.x
call.i gml_Script_cameray(argc=0)
pushi.e 240
add.i.v
pop.v.v self.y
pushi.e 684
conv.i.v
call.i instance_number(argc=1)
pushi.e 2
cmp.i.v EQ
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]