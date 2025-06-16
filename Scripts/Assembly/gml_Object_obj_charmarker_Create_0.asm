.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.lastmarker
push.v self.y
pop.v.v self.goal_y_pos
pushbltn.v builtin.room
conv.v.b
not.b
pushi.e 133
cmp.i.b EQ
bf [end]

:[1]
call.i gml_Script_cameray(argc=0)
pop.v.v self.y
pushi.e 10
pop.v.i self.image_yscale

:[end]