.localvar 2 arguments

:[0]
push.v self.surf
call.i surface_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.surf
call.i surface_free(argc=1)
popz.v

:[2]
push.v self.spr_battleborder
call.i sprite_exists(argc=1)
conv.v.b
bf [4]

:[3]
push.v self.spr_battleborder
call.i sprite_delete(argc=1)
popz.v

:[4]
pushbltn.v builtin.room
pushi.e 191
cmp.i.v EQ
bf [end]

:[5]
push.v self.spr_border_none
call.i sprite_exists(argc=1)
conv.v.b
bf [7]

:[6]
push.v self.spr_border_none
call.i sprite_delete(argc=1)
popz.v

:[7]
push.v self.spr_border_left
call.i sprite_exists(argc=1)
conv.v.b
bf [9]

:[8]
push.v self.spr_border_left
call.i sprite_delete(argc=1)
popz.v

:[9]
push.v self.spr_border_right
call.i sprite_exists(argc=1)
conv.v.b
bf [11]

:[10]
push.v self.spr_border_right
call.i sprite_delete(argc=1)
popz.v

:[11]
push.v self.spr_border_both
call.i sprite_exists(argc=1)
conv.v.b
bf [end]

:[12]
push.v self.spr_border_both
call.i sprite_delete(argc=1)
popz.v

:[end]