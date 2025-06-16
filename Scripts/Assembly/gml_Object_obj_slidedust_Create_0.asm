.localvar 2 arguments

:[0]
push.d 0.5
pop.v.d self.image_speed
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushbltn.v builtin.room
pushi.e 216
cmp.i.v EQ
bt [2]

:[1]
pushbltn.v builtin.room
pushi.e 217
cmp.i.v EQ
b [3]

:[2]
push.e 1

:[3]
bf [end]

:[4]
pushi.e 2300
pop.v.i self.sprite_index
pushi.e -2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=2)
pop.v.v self.image_xscale
pushi.e -2
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=2)
pop.v.v self.image_yscale
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]