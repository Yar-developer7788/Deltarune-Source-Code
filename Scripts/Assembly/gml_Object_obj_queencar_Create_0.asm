.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.swan
pushbltn.v builtin.room
pushi.e 200
cmp.i.v GTE
bf [6]

:[1]
pushi.e 1
pop.v.i self.swan
pushi.e 2381
pop.v.i self.sprite_index
push.d 0.1
pop.v.d self.image_speed
pushglb.v global.plot
pushi.e 140
cmp.i.v EQ
bf [3]

:[2]
pushi.e -5
pushi.e 343
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 3294
pop.v.i self.sprite_index

:[6]
pushi.e 80
pop.v.i self.swanmaincharax
pushi.e 20
pop.v.i self.swanmaincharay
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.contimer
pushi.e 0
pop.v.i self.active
pushi.e 2
pop.v.i self.wx
pushi.e 0
pop.v.i self.wy
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.msgtimer
pushi.e 0
pop.v.i self.dotalk
pushi.e 0
pop.v.i self.dospecialtalk
pushi.e 0
pop.v.i self.dobackwardstalk
pushi.e 0
pop.v.i self.talkcon
pushi.e 0
pop.v.i self.specialtalkcon
pushi.e 0
pop.v.i self.backwardstalkcon
pushi.e 0
pop.v.b self.pause_x_move
pushi.e 0
pop.v.b self.pause_y_move
pushi.e 0
pop.v.b self.pause_auto_talk

:[end]