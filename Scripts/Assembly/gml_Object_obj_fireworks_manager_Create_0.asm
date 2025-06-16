.localvar 2 arguments

:[0]
pushi.e 30
pop.v.i builtin.room_speed
pushi.e 0
pop.v.i self.time
call.i ds_map_create(argc=0)
pop.v.v global.firework_sprite_pixel_data
push.i 168682
setowner.e
pushi.e 2431
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.current_sprites
pushi.e 2432
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.current_sprites
pushi.e 2433
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.current_sprites
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.b self.is_active
pushbltn.v builtin.room
pushi.e 106
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.b self.is_active

:[2]
pushbltn.v builtin.room
pushi.e 102
cmp.i.v EQ
bf [4]

:[3]
pushi.e -5
pushi.e 357
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
pop.v.b self.is_active

:[4]
push.i 168683
setowner.e
pushi.e 2431
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.fireworksprite
pushi.e 2432
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.fireworksprite
pushi.e 2433
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.fireworksprite
pushi.e 0
pop.v.i self.fireworkcount
pushi.e 0
pop.v.b self.finished

:[end]