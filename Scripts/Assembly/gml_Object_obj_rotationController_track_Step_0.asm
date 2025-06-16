.localvar 2 arguments

:[0]
push.v self.buffer
pushi.e -5
cmp.i.v GT
bf [2]

:[1]
push.v self.buffer
push.e 1
sub.i.v
pop.v.v self.buffer

:[2]
push.v self.timer
pushi.e 999
cmp.i.v LT
bf [4]

:[3]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[4]
push.v self.mytimer
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
push.v self.mytimer
push.e 1
sub.i.v
pop.v.v self.mytimer

:[6]
pushi.e 0
pop.v.b self.left
pushi.e 0
pop.v.b self.right
pushi.e 0
pop.v.b self.down
push.v self.rotate
pushi.e 1
cmp.b.v EQ
bf [56]

:[7]
pushi.e 1
pop.v.i global.interact
call.i gml_Script_down_p(argc=0)
conv.v.b
bf [13]

:[8]
push.v self.controlled
pushi.e -9
push.v [stacktop]self.moving
pushi.e 0
cmp.i.v EQ
bf [13]

:[9]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [13]

:[10]
push.v self.mytimer
pushi.e 0
cmp.i.v LTE
bf [13]

:[11]
pushi.e 1168
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [13]

:[12]
push.v self.buffer
pushi.e 0
cmp.i.v LT
b [14]

:[13]
push.e 0

:[14]
bf [18]

:[15]
pushi.e 20
pop.v.i self.mytimer
pushi.e 3
pop.v.i self.buffer
pushi.e 1167
pushenv [17]

:[16]
pushi.e 10
pop.v.i self.cooldown
pushi.e 0
push.v other.controlled
pushi.e -9
pop.v.i [stacktop]self.move
pushi.e 1
pop.v.b other.down
pushi.e 1
pop.v.i self.mousecreate
pushi.e 20
pop.v.i self.gentimer

:[17]
popenv [16]

:[18]
push.v 1167.image_index
pushi.e 5
cmp.i.v EQ
bf [21]

:[19]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [21]

:[20]
push.v self.mytimer
pushi.e 0
cmp.i.v LTE
b [22]

:[21]
push.e 0

:[22]
bf [27]

:[23]
call.i gml_Script_left_h(argc=0)
conv.v.b
bf [25]

:[24]
pushi.e 3
pop.v.i self.buffer
pushi.e -1
push.v self.controlled
pushi.e -9
pop.v.i [stacktop]self.move

:[25]
call.i gml_Script_right_h(argc=0)
conv.v.b
bf [27]

:[26]
pushi.e 3
pop.v.i self.buffer
pushi.e 1
push.v self.controlled
pushi.e -9
pop.v.i [stacktop]self.move

:[27]
pushi.e 1168
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bt [30]

:[28]
call.i gml_Script_d_ex(argc=0)
conv.v.b
bt [30]

:[29]
push.v self.mytimer
pushi.e 0
cmp.i.v GT
b [31]

:[30]
push.e 1

:[31]
bf [33]

:[32]
pushi.e 0
push.v self.controlled
pushi.e -9
pop.v.i [stacktop]self.move

:[33]
call.i gml_Script_left_h(argc=0)
conv.v.b
bf [35]

:[34]
call.i gml_Script_right_h(argc=0)
conv.v.b
b [36]

:[35]
push.e 0

:[36]
bt [41]

:[37]
call.i gml_Script_left_h(argc=0)
conv.v.b
not.b
bf [39]

:[38]
call.i gml_Script_right_h(argc=0)
conv.v.b
not.b
b [40]

:[39]
push.e 0

:[40]
b [42]

:[41]
push.e 1

:[42]
bf [44]

:[43]
pushi.e 0
pop.v.b self.left
pushi.e 0
pop.v.b self.right
pushi.e 0
push.v self.controlled
pushi.e -9
pop.v.i [stacktop]self.move

:[44]
call.i gml_Script_button1_p(argc=0)
conv.v.b
bt [46]

:[45]
call.i gml_Script_button2_p(argc=0)
conv.v.b
b [47]

:[46]
push.e 1

:[47]
bf [53]

:[48]
push.v self.timer
pushi.e 1
cmp.i.v GT
bf [53]

:[49]
push.v self.mytimer
pushi.e 0
cmp.i.v LTE
bf [53]

:[50]
pushi.e 1168
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [53]

:[51]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [53]

:[52]
push.v self.buffer
pushi.e 0
cmp.i.v LT
b [54]

:[53]
push.e 0

:[54]
bf [56]

:[55]
pushi.e 3
pop.v.i self.buffer
pushi.e 0
pop.v.b self.rotate
pushi.e 0
push.v self.controlled
pushi.e -9
pop.v.i [stacktop]self.move
pushi.e 0
pop.v.i global.interact

:[56]
push.v self.controlled
pushi.e -9
push.v [stacktop]self.move
pushi.e 1
cmp.i.v EQ
bf [58]

:[57]
pushi.e 1
pop.v.b self.right

:[58]
push.v self.controlled
pushi.e -9
push.v [stacktop]self.move
pushi.e -1
cmp.i.v EQ
bf [60]

:[59]
pushi.e 1
pop.v.b self.left

:[60]
push.v self.rotate
push.v self.controlled
pushi.e -9
pop.v.v [stacktop]self.image_index
pushi.e 1167
pushenv [63]

:[61]
push.v self.gentimer
pushi.e 0
cmp.i.v GT
bf [63]

:[62]
pushi.e 1
pop.v.b other.down

:[63]
popenv [61]

:[end]