.localvar 2 arguments

:[0]
call.i gml_Script_scr_depth(argc=0)
popz.v
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 40
sub.i.v
cmp.v.v LT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [6]

:[3]
push.v self.y
pushi.e 1440
cmp.i.v LT
bf [5]

:[4]
push.v self.y
push.v self.spd
add.v.v
pop.v.v self.y
b [6]

:[5]
pushi.e 1440
pop.v.i self.y
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[6]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [10]

:[7]
push.v self.x
pushi.e 1280
cmp.i.v GT
bf [9]

:[8]
push.v self.x
push.v self.spd
sub.v.v
pop.v.v self.x
b [10]

:[9]
pushi.e 1280
pop.v.i self.x
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[10]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[11]
push.v self.y
push.v self.spd
sub.v.v
pop.v.v self.y

:[end]