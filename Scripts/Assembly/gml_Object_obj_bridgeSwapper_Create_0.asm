.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 0
pop.v.i self.dontskip
pushi.e 0
pop.v.i self.skip
pushi.e 0
pop.v.i self.noflare
pushi.e 0
pop.v.i self.inert
pushbltn.v builtin.room
pushi.e 214
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.skip

:[2]
push.s "a_1"@14203
pop.v.s self.bridgetarget
push.s "a_2"@14205
pop.v.s self.bridgetarget2
push.s "null"@38052
pop.v.s self.extflag
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.swapped
pushi.e 77
conv.i.v
pushi.e 84
conv.i.v
pushi.e 231
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.c_nred
pushi.e 212
conv.i.v
pushi.e 167
conv.i.v
pushi.e 39
conv.i.v
call.i make_color_rgb(argc=3)
pop.v.v self.c_nblue
pushi.e 0
pop.v.i self.timer
call.i gml_Script_scr_depth_alt(argc=0)
popz.v
push.v self.x
pushi.e 2
add.i.v
pop.v.v self.mtx
push.v self.y
pushi.e 2
add.i.v
pop.v.v self.mty
pushi.e 0
pop.v.i self.rax
pushi.e 0
pop.v.i self.ray
pushi.e 2
pop.v.i self.dir
pushi.e 0
pop.v.i self.con
push.v self.swapped
pop.v.v self.image_index

:[end]