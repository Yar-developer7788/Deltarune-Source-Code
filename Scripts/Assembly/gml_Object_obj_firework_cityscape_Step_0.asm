.localvar 2 arguments
.localvar 9579 y_pos 8063
.localvar 9578 x_pos 8064

:[0]
push.v self.layer_y_pos
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.i local.y_pos
pushi.e 0
pop.v.i local.x_pos
pushi.e 196
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [6]

:[2]
pushi.e 196
pushenv [5]

:[3]
push.v self.sprite_index
pushi.e 3137
cmp.i.v EQ
bf [5]

:[4]
push.v self.y
pop.v.v local.y_pos
push.v self.x
pop.v.v local.x_pos

:[5]
popenv [3]

:[6]
pushloc.v local.y_pos
pop.v.v self.layer_y_pos
pushloc.v local.x_pos
pop.v.v self.layer_x_pos

:[end]