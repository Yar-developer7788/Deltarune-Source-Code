.localvar 2 arguments

:[0]
pushi.e 1
pop.v.b self.visible
pushi.e 0
pop.v.i self.saucerCount
pushi.e 0
pop.v.i self.complete
pushi.e -5
pushi.e 139
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.b self.dothis
b [end]

:[2]
pushi.e 0
pop.v.b self.dothis
pushi.e 260
pushenv [4]

:[3]
pushi.e 260
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.my_new
pushi.e 6
push.v self.my_new
pushi.e -9
pop.v.i [stacktop]self.mode
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]
pushi.e 266
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[5]
pushi.e 266
pushenv [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
popenv [6]

:[end]