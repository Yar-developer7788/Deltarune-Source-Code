.localvar 2 arguments

:[0]
push.v self.gentimer
pushi.e 1
sub.i.v
pop.v.v self.gentimer
push.v self.gentimer
pushi.e 0
cmp.i.v LTE
bf [2]

:[1]
pushi.e 0
pop.v.i self.mousecreate

:[2]
push.v self.gentimer
pushi.e 5
mod.i.v
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.mousecreate
pushi.e 1
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
pushi.e 1171
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[end]