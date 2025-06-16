.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
push.v self.fresh
pushi.e 3
cmp.i.v EQ
bf [5]

:[1]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bt [3]

:[2]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
b [6]

:[5]
push.e 0

:[6]
bf [end]

:[7]
push.v self.mysolid
call.i gml_Script_safe_delete(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]