.localvar 2 arguments

:[0]
call.i draw_self(argc=0)
popz.v
push.v self.con
pushi.e -2
cmp.i.v EQ
bf [end]

:[1]
push.v self.waittime
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.waitpeak
push.v self.timer
push.v self.waitpeak
cmp.v.v LT
bf [3]

:[2]
push.v self.fakealpha
pushi.e 1
conv.i.d
push.v self.waitpeak
div.v.d
add.v.v
pop.v.v self.fakealpha
b [4]

:[3]
push.v self.fakealpha
pushi.e 1
conv.i.d
push.v self.waitpeak
div.v.d
sub.v.v
pop.v.v self.fakealpha

:[4]
push.v self.fakealpha
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.ystart
push.v self.xstart
pushi.e 0
conv.i.v
pushi.e 1876
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]