.localvar 2 arguments

:[0]
push.v self.washit
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.washit
pushi.e 128
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.anim
pushi.e 2275
push.v self.anim
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]