.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.creator
pushi.e -1
cmp.i.v NEQ
bf [4]

:[3]
push.v self.creator
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
push.v self.creator
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.x
push.v self.creator
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.y

:[end]