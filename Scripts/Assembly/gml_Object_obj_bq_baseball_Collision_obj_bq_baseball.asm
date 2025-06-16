.localvar 2 arguments

:[0]
push.v self.baseball_combo_timer
pushi.e 0
cmp.i.v GT
bf [end]

:[1]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [5]

:[2]
pushi.e 1
pop.v.i self.hit
push.v 777.hit_baseball
pushi.e 1
add.i.v
pop.v.v 777.hit_baseball
pushi.e 1
pop.v.i 777.hit_baseball_check
push.v 777.y
pushi.e 184
sub.i.v
pop.v.v self.y
push.v other.hit_direction
pushi.e -1
cmp.i.v EQ
bf [4]

:[3]
pushi.e -1
pop.v.i self.hit_direction
b [5]

:[4]
pushi.e 1
pop.v.i self.hit_direction

:[5]
popenv [2]

:[end]