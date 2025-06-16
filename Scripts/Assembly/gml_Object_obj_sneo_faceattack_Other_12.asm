.localvar 2 arguments
.localvar 6482 xx 12690
.localvar 6483 yy 12691

:[0]
pushi.e 0
pop.v.i local.xx
pushi.e 0
pop.v.i local.yy
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 62
pop.v.i local.xx
pushi.e 32
pop.v.i local.yy

:[2]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 34
pop.v.i local.xx
pushi.e 64
pop.v.i local.yy

:[4]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
pushi.e 52
pop.v.i local.xx
pushi.e 102
pop.v.i local.yy

:[6]
push.v self.type
pushi.e 0
cmp.i.v NEQ
bf [end]

:[7]
pushi.e 670
conv.i.v
push.v self.y
pushloc.v local.yy
add.v.v
push.v self.x
pushloc.v local.xx
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.targ
push.v self.depth
pushi.e 999
sub.i.v
push.v self.targ
pushi.e -9
pop.v.v [stacktop]self.depth

:[end]