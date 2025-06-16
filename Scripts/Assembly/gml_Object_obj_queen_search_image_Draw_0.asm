.localvar 2 arguments

:[0]
push.v self.loading
pushi.e 0
cmp.i.v GT
bf [8]

:[1]
push.v self.loading
pushi.e 9
cmp.i.v EQ
bf [3]

:[2]
push.v self.sprite_index
pushi.e 3
sub.i.v
call.i sprite_get_number(argc=1)
pop.v.v self.loopindex
pushi.e 2
pop.v.i self.image_index
pushi.e 2
pop.v.i self.loopindex

:[3]
push.v self.loading
push.e 1
sub.i.v
pop.v.v self.loading
push.v self.loading
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 0
pop.v.i self.image_index
b [7]

:[5]
push.v self.loading
pushi.e 3
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
push.v self.image_index
push.e 1
add.i.v
pop.v.v self.image_index

:[7]
b [15]

:[8]
push.v self.loopindex
pushi.e 1
cmp.i.v GT
bf [10]

:[9]
call.i gml_Script_scr_queen_buffercheck(argc=0)
conv.v.b
not.b
b [11]

:[10]
push.e 0

:[11]
bf [15]

:[12]
push.v self.animtimer
push.e 1
add.i.v
pop.v.v self.animtimer
push.v self.animtimer
push.v self.loopindex
pushi.e 4
mul.i.v
cmp.v.v GTE
bf [14]

:[13]
pushi.e 0
pop.v.i self.animtimer

:[14]
push.v self.animtimer
pushi.e 4
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v self.image_index

:[15]
call.i draw_self(argc=0)
popz.v

:[end]