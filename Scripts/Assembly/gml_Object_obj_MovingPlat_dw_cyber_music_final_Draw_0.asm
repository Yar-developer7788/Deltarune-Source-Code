.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
pushi.e 82
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [7]

:[1]
push.v 82.battlemode
pushi.e 1
cmp.i.v EQ
bf [5]

:[2]
push.v self.myalpha
pushi.e 1
cmp.i.v NEQ
bf [4]

:[3]
push.d 0.25
conv.d.v
pushi.e 1
conv.i.v
push.v self.myalpha
call.i lerp(argc=3)
pop.v.v self.myalpha

:[4]
b [7]

:[5]
push.v self.myalpha
pushi.e 0
cmp.i.v NEQ
bf [7]

:[6]
push.d 0.35
conv.d.v
pushi.e 0
conv.i.v
push.v self.myalpha
call.i lerp(argc=3)
pop.v.v self.myalpha

:[7]
push.v self.myalpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
pushi.e 3314
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]