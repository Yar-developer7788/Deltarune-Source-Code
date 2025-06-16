.localvar 2 arguments

:[0]
push.v self.current_index
push.e 1
add.i.v
pop.v.v self.current_index
push.v self.current_index
push.v self.sign_sprite
call.i sprite_get_number(argc=1)
pushi.e 1
sub.i.v
cmp.v.v LT
bf [end]

:[1]
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]