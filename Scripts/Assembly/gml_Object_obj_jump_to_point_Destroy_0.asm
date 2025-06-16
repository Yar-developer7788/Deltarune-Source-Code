.localvar 2 arguments

:[0]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.body_obj
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [5]

:[2]
push.v self.body_obj
pushi.e -9
pushenv [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
popenv [3]

:[5]
push.v self.target
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[6]
push.v self.target
pushi.e -9
pushenv [8]

:[7]
pushi.e 1
pop.v.i self.visible

:[8]
popenv [7]
push.v self.endx
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.endy
push.v self.target
pushi.e -9
pop.v.v [stacktop]self.y

:[end]