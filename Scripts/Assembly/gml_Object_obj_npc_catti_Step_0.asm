.localvar 2 arguments

:[0]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [2]

:[1]
call.i event_inherited(argc=0)
popz.v

:[2]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i self.con
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[7]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [10]

:[9]
push.e 0

:[10]
bf [end]

:[11]
pushi.e -1
pop.v.i self.con

:[end]