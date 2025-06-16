.localvar 2 arguments

:[0]
pushi.e 638
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[1]
push.v 638.x
push.v 638.headoffset_x
add.v.v
pop.v.v self.x
push.v 638.y
push.v 638.headoffset_y
add.v.v
pop.v.v self.y

:[end]