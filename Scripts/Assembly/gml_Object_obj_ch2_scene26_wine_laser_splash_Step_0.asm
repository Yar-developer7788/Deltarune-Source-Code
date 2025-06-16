.localvar 2 arguments

:[0]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 500
add.i.v
cmp.v.v GT
bt [3]

:[1]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 700
add.i.v
cmp.v.v GT
bt [3]

:[2]
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 60
sub.i.v
cmp.v.v LT
b [4]

:[3]
push.e 1

:[4]
bf [end]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]