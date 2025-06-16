.localvar 2 arguments

:[0]
push.v self.parent
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
push.v self.length
pushi.e 36
cmp.i.v LT
bf [4]

:[3]
push.v self.length
pushi.e 2
add.i.v
pop.v.v self.length

:[4]
push.v self.parent
pushi.e -9
push.v [stacktop]self.x
push.v self.place
push.v self.length
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v self.parent
pushi.e -9
push.v [stacktop]self.y
push.v self.place
push.v self.length
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y
push.v self.hp
pushi.e 0
cmp.i.v EQ
bf [end]

:[5]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]