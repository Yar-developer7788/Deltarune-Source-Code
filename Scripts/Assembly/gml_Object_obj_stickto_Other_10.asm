.localvar 2 arguments

:[0]
push.v self.stickingobj
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
push.v self.stucktoobj
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[4]
push.v self.stickingobj
pushi.e -9
push.v [stacktop]self.x
push.v self.stucktoobj
pushi.e -9
push.v [stacktop]self.x
sub.v.v
pop.v.v self.relx
push.v self.stickingobj
pushi.e -9
push.v [stacktop]self.y
push.v self.stucktoobj
pushi.e -9
push.v [stacktop]self.y
sub.v.v
pop.v.v self.rely
pushi.e 1
pop.v.i self.init

:[end]