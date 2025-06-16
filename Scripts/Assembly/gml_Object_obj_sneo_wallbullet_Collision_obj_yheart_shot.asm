.localvar 2 arguments

:[0]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 110
add.i.v
cmp.v.v LT
bf [2]

:[1]
exit.i

:[2]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 233
add.i.v
cmp.v.v GT
bf [4]

:[3]
exit.i

:[4]
push.v self.image_alpha
push.d 0.5
cmp.d.v LT
bf [6]

:[5]
exit.i

:[6]
call.i @@Other@@(argc=0)
pop.v.v self.hitshot
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]