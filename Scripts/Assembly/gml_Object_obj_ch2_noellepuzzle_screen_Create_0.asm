.localvar 2 arguments

:[0]
pushi.e 0
pop.v.b self.won
push.s "?"@4913
pop.v.s self.myString
pushi.e 0
pop.v.i self.image_timer
pushi.e 0
pop.v.i self.speaker_index
pushi.e 232
conv.i.v
pushi.e 162
conv.i.v
pushi.e 0
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.unsolved

:[end]