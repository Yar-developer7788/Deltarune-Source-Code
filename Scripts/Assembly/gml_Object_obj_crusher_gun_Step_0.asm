.localvar 2 arguments

:[0]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 280
add.i.v
cmp.v.v GT
bf [2]

:[1]
push.v 631.depth
pushi.e 100
add.i.v
pop.v.v self.depth
b [end]

:[2]
push.v 631.depth
pushi.e 2
add.i.v
pop.v.v self.depth

:[end]