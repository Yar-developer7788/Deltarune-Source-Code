.localvar 2 arguments

:[0]
push.v self.animate
conv.v.b
bf [2]

:[1]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner

:[2]
push.v self.hurt
conv.v.b
not.b
bf [6]

:[3]
push.v self.default_sprite_back
pushi.e -1
cmp.i.v NEQ
bf [5]

:[4]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.sinery
add.v.v
push.v self.coaster_offset_y
add.v.v
push.v self.x
push.v self.sinerx
add.v.v
push.v self.coaster_offset_x
add.v.v
push.v self.image_index
push.v self.default_sprite_back
call.i draw_sprite_ext(argc=9)
popz.v

:[5]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.sinery
add.v.v
push.v self.character_offset_y
add.v.v
push.v self.x
push.v self.sinerx
add.v.v
push.v self.character_offset_x
add.v.v
push.v self.actor
pushi.e -9
push.v [stacktop]self.image_index
push.v self.actor
pushi.e -9
push.v [stacktop]self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.sinery
add.v.v
push.v self.coaster_offset_y
add.v.v
push.v self.x
push.v self.sinerx
add.v.v
push.v self.coaster_offset_x
add.v.v
push.v self.image_index
push.v self.default_sprite_front
call.i draw_sprite_ext(argc=9)
popz.v
b [end]

:[6]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.coaster_offset_y
add.v.v
push.v self.x
push.v self.coaster_offset_x
add.v.v
push.v self.image_index
push.v self.hurt_sprite_back
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.sinery
add.v.v
push.v self.character_offset_y
add.v.v
push.v self.x
push.v self.sinerx
add.v.v
push.v self.character_offset_x
add.v.v
push.v self.image_index
push.v self.hurt_character_sprite
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.coaster_offset_y
add.v.v
push.v self.x
push.v self.coaster_offset_x
add.v.v
push.v self.image_index
push.v self.hurt_sprite_front
call.i draw_sprite_ext(argc=9)
popz.v

:[end]