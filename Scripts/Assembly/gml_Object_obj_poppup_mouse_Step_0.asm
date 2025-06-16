.localvar 2 arguments

:[0]
push.v self.active
pushi.e 0
cmp.b.v EQ
bf [5]

:[1]
push.v self.x
pushbltn.v builtin.mouse_x
cmp.v.v NEQ
bt [3]

:[2]
push.v self.y
pushbltn.v builtin.mouse_y
cmp.v.v NEQ
b [4]

:[3]
push.e 1

:[4]
b [6]

:[5]
push.e 0

:[6]
bf [end]

:[7]
pushi.e 1
pop.v.b self.active
push.v self.useSprite
conv.v.b
not.b
bf [end]

:[8]
pushi.e 1665
pop.v.i builtin.cursor_sprite

:[end]