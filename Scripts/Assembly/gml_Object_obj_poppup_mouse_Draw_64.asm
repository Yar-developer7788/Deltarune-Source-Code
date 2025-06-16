.localvar 2 arguments

:[0]
pushbltn.v builtin.mouse_x
call.i gml_Script_camerax(argc=0)
sub.v.v
pop.v.v self.x
pushbltn.v builtin.mouse_y
call.i gml_Script_cameray(argc=0)
sub.v.v
pop.v.v self.y
push.v self.useSprite
conv.v.b
bf [2]

:[1]
push.v self.active
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [end]

:[4]
call.i draw_self(argc=0)
popz.v

:[end]