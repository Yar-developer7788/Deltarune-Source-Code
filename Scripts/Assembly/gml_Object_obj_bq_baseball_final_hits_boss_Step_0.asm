.localvar 2 arguments

:[0]
push.v self.image_angle
pushi.e 3
add.i.v
pop.v.v self.image_angle
push.v self.y
pushi.e -820
cmp.i.v GT
bf [2]

:[1]
push.v self.state
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
pushi.e 823
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 1
pop.v.i self.state

:[end]