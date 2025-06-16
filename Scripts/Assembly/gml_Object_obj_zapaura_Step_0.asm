.localvar 2 arguments

:[0]
push.v self.actor
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[1]
push.v self.actor
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.x
push.v self.actor
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.y

:[end]