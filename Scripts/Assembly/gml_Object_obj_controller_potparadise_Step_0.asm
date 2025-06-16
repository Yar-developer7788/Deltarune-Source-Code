.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
pushi.e 82
pushenv [4]

:[2]
pushi.e 1151
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [4]

:[3]
push.v other.con
push.e 1
add.i.v
pop.v.v other.con

:[4]
popenv [2]

:[5]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 297
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[7]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 297
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [10]

:[9]
push.e 0

:[10]
bf [end]

:[11]
pushi.e 0
pop.v.i self.con

:[end]