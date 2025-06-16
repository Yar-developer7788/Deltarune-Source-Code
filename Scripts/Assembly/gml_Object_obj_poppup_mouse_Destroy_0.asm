.localvar 2 arguments

:[0]
push.v self.useSprite
conv.v.b
not.b
bf [end]

:[1]
pushi.e -1
pop.v.i builtin.cursor_sprite

:[end]