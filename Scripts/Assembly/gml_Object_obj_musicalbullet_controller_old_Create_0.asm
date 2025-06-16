.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
push.v 710.musical_bullet_difficulty
pop.v.v self.difficulty
push.v 710.musical_bullet_difficulty
push.e 1
add.i.v
pop.v.v 710.musical_bullet_difficulty
pushi.e 16
pop.v.i self.bullettimermax
push.v self.difficulty
pushi.e 1
cmp.i.v GTE
bf [2]

:[1]
pushi.e 16
pop.v.i self.bullettimermax

:[2]
push.v self.difficulty
pushi.e 2
cmp.i.v GTE
bf [4]

:[3]
pushi.e 16
pop.v.i self.bullettimermax

:[4]
push.v self.bullettimermax
pushi.e 1
sub.i.v
pop.v.v self.timer
pushi.e 1
pop.v.i self.enemy_count
pushi.e 0
pop.v.i self.skip_bullet
pushi.e 0
pop.v.i self.skip_bullet_count
pushi.e 0
pop.v.i self.sfxtimer
pushi.e 0
pop.v.i self.made
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.stop_song

:[end]