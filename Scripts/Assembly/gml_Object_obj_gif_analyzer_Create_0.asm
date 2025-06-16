.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.found_gif
pushi.e -1
pop.v.i self.mygif
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.timer
push.s "game.gif"@29998
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "game.gif"@29998
conv.s.v
call.i sprite_add(argc=6)
pop.v.v self.mygif

:[end]