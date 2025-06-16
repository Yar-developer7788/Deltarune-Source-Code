.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1181
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [8]

:[2]
push.v 1181.controlled
push.v self.id
cmp.v.v EQ
bf [4]

:[3]
push.v 1181.rotate
pushi.e 1
cmp.b.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i self.mymoving
b [8]

:[7]
pushi.e 0
pop.v.i self.mymoving

:[8]
push.v self.pattern
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
pushi.e 0
push.v self.mymoving
add.v.i
pushi.e 2738
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
b [end]

:[10]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
pushi.e 2
push.v self.mymoving
add.v.i
pushi.e 2738
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]