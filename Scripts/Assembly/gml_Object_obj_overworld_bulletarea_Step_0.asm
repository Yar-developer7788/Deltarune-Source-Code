.localvar 2 arguments

:[0]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v self.ignorebuffer
pushi.e 0
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [29]

:[4]
pushi.e 0
pop.v.i 82.battlemode
pushi.e 0
pop.v.i self.cancel
push.v self.onlyActiveIfBulletsExist
conv.v.b
bf [6]

:[5]
pushi.e 255
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 1
pop.v.i self.cancel

:[9]
push.v self.onlyActiveIfSpecialObjectExists
conv.v.b
bf [11]

:[10]
push.v self.specialObject
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 1
pop.v.i self.cancel

:[14]
push.v self.cancel
pushi.e 0
cmp.i.v EQ
bf [29]

:[15]
push.v 82.bbox_right
push.v self.x
cmp.v.v GTE
bf [19]

:[16]
push.v 82.bbox_left
push.v self.x
push.v self.sprite_width
add.v.v
cmp.v.v LTE
bf [19]

:[17]
push.v 82.bbox_bottom
push.v self.y
cmp.v.v GTE
bf [19]

:[18]
push.v 82.bbox_top
push.v self.y
push.v self.sprite_height
add.v.v
cmp.v.v LTE
b [20]

:[19]
push.e 0

:[20]
bf [29]

:[21]
push.v self.id
pop.v.v 268.checkid
pushi.e 268
pushenv [24]

:[22]
push.v self.id
push.v self.checkid
cmp.v.v NEQ
bf [24]

:[23]
pushi.e 2
pop.v.i self.ignorebuffer

:[24]
popenv [22]
pushi.e 1
pop.v.i 82.battlemode
push.v self.keepHidden
pushi.e 0
cmp.i.v EQ
bf [29]

:[25]
pushi.e 268
pushenv [28]

:[26]
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [28]

:[27]
pushi.e 1
pop.v.i self.showArea

:[28]
popenv [26]

:[29]
push.v self.ignorebuffer
push.e 1
sub.i.v
pop.v.v self.ignorebuffer
push.v 82.battlemode
pushi.e 0
cmp.i.v EQ
bf [31]

:[30]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
b [32]

:[31]
pushi.e 0
pop.v.i self.timer

:[32]
push.v self.timer
pushi.e 60
cmp.i.v GTE
bf [36]

:[33]
pushi.e 277
pushenv [35]

:[34]
pushi.e 0
pop.v.i self.charcon

:[35]
popenv [34]

:[36]
pushi.e 0
pop.v.i self.image_alpha

:[end]