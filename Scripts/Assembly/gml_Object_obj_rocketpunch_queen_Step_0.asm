.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 795
conv.i.v
push.v self.y
pushi.e 132
sub.i.v
push.v self.x
pushi.e 8
sub.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.rocketpunch
push.v self.hspeed
push.v self.rocketpunch
pushi.e -9
pop.v.v [stacktop]self.hspeed
push.v self.vspeed
push.v self.rocketpunch
pushi.e -9
pop.v.v [stacktop]self.vspeed
push.v self.friction
push.v self.rocketpunch
pushi.e -9
pop.v.v [stacktop]self.friction
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.timer

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [end]

:[4]
pushi.e 1
push.v self.rocketpunch
pushi.e -9
pop.v.i [stacktop]self.con
push.d 0.5
push.v self.rocketpunch
pushi.e -9
pop.v.d [stacktop]self.friction
pushi.e -8
pop.v.i self.vspeed
pushi.e -4
pop.v.i self.friction
pushi.e 2
pop.v.i self.con

:[end]