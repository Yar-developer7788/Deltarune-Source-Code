.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.leavecon
pushi.e 0
pop.v.i self.leavetimer
pushi.e 0
pop.v.i self.noellemarker
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [12]

:[2]
pushbltn.v builtin.room
pushi.e 123
cmp.i.v EQ
bf [8]

:[3]
pushi.e 103
conv.i.v
pushi.e 139
conv.i.v
pushi.e 523
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.werewire_npc
pushi.e 1252
push.v self.werewire_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e -2
push.v self.werewire_npc
pushi.e -9
pop.v.i [stacktop]self.image_xscale
push.v self.werewire_npc
pushi.e -9
pushenv [5]

:[4]
push.i 98000
pop.v.i self.depth

:[5]
popenv [4]
pushglb.v global.plot
pushi.e 68
cmp.i.v LT
bf [7]

:[6]
pushi.e 724
conv.i.v
pushi.e 245
conv.i.v
pushi.e 2100
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.noellemarker
pushi.e 0
push.v self.noellemarker
pushi.e -9
pop.v.i [stacktop]self.image_speed
b [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
pushbltn.v builtin.room
pushi.e 124
cmp.i.v EQ
bf [12]

:[9]
pushglb.v global.plot
pushi.e 69
cmp.i.v LT
bf [11]

:[10]
pushi.e 724
conv.i.v
pushi.e 670
conv.i.v
pushi.e 920
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.noellemarker
pushi.e 0
push.v self.noellemarker
pushi.e -9
pop.v.i [stacktop]self.image_speed
b [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
push.v self.noellemarker
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[13]
push.v self.noellemarker
pushi.e -9
pushenv [15]

:[14]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[15]
popenv [14]

:[end]