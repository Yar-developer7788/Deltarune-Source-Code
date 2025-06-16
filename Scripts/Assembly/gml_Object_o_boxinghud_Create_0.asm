.localvar 2 arguments

:[0]
pushi.e -5
pop.v.i self.depth
pushi.e 50
pop.v.i self.topyy
pushi.e 160
pop.v.i self.bottomyy
pushi.e 2
pop.v.i self.sub_healthbar_count
pushi.e 0
pop.v.i self.healthbar_flash
pushi.e 0
pop.v.i self.hide_ui
pushi.e 0
pop.v.i self.hide_ui_quick
push.v 777.wireframe_boxing
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i 842.sub_healthbar_count

:[2]
pushbltn.v builtin.room
pushi.e 93
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.arcade
b [end]

:[4]
pushi.e 0
pop.v.i self.arcade

:[end]