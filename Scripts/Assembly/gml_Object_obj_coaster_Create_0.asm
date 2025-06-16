.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.b self.init
pushi.e 0
pop.v.i self.con
pushi.e -1
pop.v.i self.actor
pushbltn.v builtin.room
pushi.e 186
cmp.i.v EQ
pop.v.b self.spam_car
push.v self.spam_car
conv.v.b
bf [2]

:[1]
pushi.e 2059
conv.i.v
b [3]

:[2]
pushi.e 871
conv.i.v

:[3]
pop.v.v self.default_sprite_front
push.v self.spam_car
conv.v.b
bf [5]

:[4]
pushi.e 2058
conv.i.v
b [6]

:[5]
pushi.e 873
conv.i.v

:[6]
pop.v.v self.default_sprite_back
push.v self.spam_car
conv.v.b
bf [8]

:[7]
pushi.e 2059
conv.i.v
b [9]

:[8]
pushi.e 869
conv.i.v

:[9]
pop.v.v self.hurt_sprite_front
push.v self.spam_car
conv.v.b
bf [11]

:[10]
pushi.e 2058
conv.i.v
b [12]

:[11]
pushi.e 870
conv.i.v

:[12]
pop.v.v self.hurt_sprite_back
pushi.e 1420
pop.v.i self.hurt_character_sprite
pushi.e 653
pop.v.i self.character_sprite
pushi.e 0
pop.v.i self.character_offset_x
pushi.e 0
pop.v.i self.character_offset_y
push.d 0.25
pop.v.d self.character_speed
pushi.e 1
pop.v.i self.image_speed
pushi.e -25
pop.v.i self.coaster_offset_x
pushi.e 40
pop.v.i self.coaster_offset_y
pushi.e 0
pop.v.b self.hurt
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.stop_siner
pushi.e 0
pop.v.i self.target_x
pushi.e 0
pop.v.i self.target_x_end
pushi.e 0
pop.v.b self.animate
pushi.e 0
pop.v.i self.siner0
pushi.e 0
pop.v.i self.siner_add0
pushi.e 10
pop.v.i self.siner_amplitude0
pushi.e 0
pop.v.i self.siner_direction0
push.s "sin"@6634
pop.v.s self.siner_type0
pushi.e 1
pop.v.i self.siner_visual0
pushi.e 0
pop.v.i self.sinerx
pushi.e 0
pop.v.i self.sinery
pushi.e 0
pop.v.i self.battlecoasterx

:[end]