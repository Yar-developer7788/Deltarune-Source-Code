.localvar 2 arguments

:[0]
push.v self.x
call.i gml_Script_camerax(argc=0)
cmp.v.v LT
bt [2]

:[1]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LT
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
pushi.e 52
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[6]
push.v self.x
push.v 52.wallspeed
add.v.v
pop.v.v self.x

:[end]