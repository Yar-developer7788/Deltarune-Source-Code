.localvar 2 arguments

:[0]
push.v self.stickingobj
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.stucktoobj
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.stucktoobj
pushi.e -9
push.v [stacktop]self.depth
push.v self.relativedepth
add.v.v
push.v self.stickingobj
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.stucktoobj
pushi.e -9
push.v [stacktop]self.x
push.v self.relx
add.v.v
push.v self.stickingobj
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.stucktoobj
pushi.e -9
push.v [stacktop]self.y
push.v self.rely
add.v.v
push.v self.stickingobj
pushi.e -9
pop.v.v [stacktop]self.y
b [end]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]