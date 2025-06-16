.localvar 2 arguments

:[0]
push.v self.image_timer
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
pushi.e 1
pop.v.i self.speaker_index
push.v self.image_timer
push.e 1
sub.i.v
pop.v.v self.image_timer
push.v self.image_timer
pushi.e 0
cmp.i.v EQ
bf [end]

:[2]
pushi.e 0
pop.v.i self.speaker_index

:[end]