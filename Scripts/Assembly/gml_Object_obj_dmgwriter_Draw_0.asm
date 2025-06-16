.localvar 2 arguments

:[0]
push.v self.delaytimer
push.v self.delay
cmp.v.v LT
bf [4]

:[1]
pushi.e 873
pushenv [3]

:[2]
pushi.e 0
pop.v.i self.killtimer

:[3]
popenv [2]

:[4]
push.v self.delaytimer
pushi.e 1
add.i.v
pop.v.v self.delaytimer
push.v self.delaytimer
push.v self.delay
cmp.v.v EQ
bf [6]

:[5]
pushi.e -5
pushi.e 2
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.vspeed
pushi.e 10
pop.v.i self.hspeed
push.v self.vspeed
pop.v.v self.vstart
pushi.e 90
pop.v.i self.flip

:[6]
push.v self.delaytimer
push.v self.delay
cmp.v.v GTE
bf [99]

:[7]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.v self.lightb
call.i draw_set_color(argc=1)
popz.v

:[9]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.v self.lightf
call.i draw_set_color(argc=1)
popz.v

:[11]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
push.v self.lightg
call.i draw_set_color(argc=1)
popz.v

:[13]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[15]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [17]

:[16]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[17]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [19]

:[18]
push.v self.damage
pushi.e 0
cmp.i.v LT
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
push.i 12632256
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[22]
push.v self.type
pushi.e 6
cmp.i.v EQ
bf [24]

:[23]
push.v self.lighty
call.i draw_set_color(argc=1)
popz.v

:[24]
push.v self.specialmessage
pop.v.v self.message
push.v self.damage
pushi.e 0
cmp.i.v EQ
bf [26]

:[25]
pushi.e 1
pop.v.i self.message

:[26]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [28]

:[27]
pushi.e 2
pop.v.i self.message

:[28]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [30]

:[29]
push.v self.damage
pushi.e 100
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
pushi.e 5
pop.v.i self.message

:[33]
push.v self.type
pushi.e 5
cmp.i.v NEQ
bf [35]

:[34]
pushglb.v global.damagefont
call.i draw_set_font(argc=1)
popz.v

:[35]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [37]

:[36]
pushglb.v global.damagefontgold
call.i draw_set_font(argc=1)
popz.v

:[37]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
bf [39]

:[38]
push.v self.hspeed
pushi.e 1
sub.i.v
pop.v.v self.hspeed

:[39]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
bf [41]

:[40]
push.v self.hspeed
pushi.e 1
add.i.v
pop.v.v self.hspeed

:[41]
push.v self.hspeed
call.i abs(argc=1)
pushi.e 1
cmp.i.v LT
bf [43]

:[42]
pushi.e 0
pop.v.i self.hspeed

:[43]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [52]

:[44]
push.v self.damage
call.i string(argc=1)
pop.v.v self.damagemessage
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [46]

:[45]
push.s "+"@9721
push.v self.damage
call.i string(argc=1)
add.v.s
push.s "%"@14906
add.s.v
pop.v.v self.damagemessage

:[46]
push.v self.type
pushi.e 5
cmp.i.v EQ
bf [48]

:[47]
push.v self.damage
pushi.e 0
cmp.i.v LT
b [49]

:[48]
push.e 0

:[49]
bf [51]

:[50]
push.v self.damage
call.i string(argc=1)
push.s "%"@14906
add.s.v
pop.v.v self.damagemessage

:[51]
pushi.e 1
pop.v.i self.init

:[52]
push.v self.message
pushi.e 0
cmp.i.v EQ
bf [58]

:[53]
pushi.e 1
push.v self.kill
sub.v.i
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
push.v self.spec
pushi.e 0
cmp.i.v EQ
bf [55]

:[54]
pushi.e 0
conv.i.v
push.v self.stretch
push.v self.kill
add.v.v
pushi.e 2
push.v self.stretch
sub.v.i
push.v self.damagemessage
push.v self.y
push.v self.x
pushi.e 30
add.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[55]
push.v self.spec
pushi.e 1
cmp.i.v EQ
bf [57]

:[56]
pushi.e 90
conv.i.v
push.v self.stretch
push.v self.kill
add.v.v
pushi.e 2
push.v self.stretch
sub.v.i
push.v self.damagemessage
push.v self.y
push.v self.x
pushi.e 30
add.i.v
call.i draw_text_transformed(argc=6)
popz.v

:[57]
pushi.e 0
conv.i.v
call.i draw_set_halign(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
b [76]

:[58]
push.v self.message
pushi.e 1
cmp.i.v EQ
bf [60]

:[59]
pushi.e 1
push.v self.kill
sub.v.i
call.i draw_get_color(argc=0)
pushi.e 0
conv.i.v
push.v self.stretch
push.v self.kill
add.v.v
pushi.e 2
push.v self.stretch
sub.v.i
push.v self.y
push.v self.x
pushi.e 30
add.i.v
pushi.e 0
conv.i.v
push.v self.message_sprite
call.i draw_sprite_ext(argc=9)
popz.v

:[60]
push.v self.message
pushi.e 2
cmp.i.v EQ
bf [62]

:[61]
pushi.e 1
push.v self.kill
sub.v.i
pushi.e 255
conv.i.v
pushi.e 0
conv.i.v
push.v self.stretch
push.v self.kill
add.v.v
pushi.e 2
push.v self.stretch
sub.v.i
push.v self.y
push.v self.x
pushi.e 30
add.i.v
pushi.e 1
conv.i.v
push.v self.message_sprite
call.i draw_sprite_ext(argc=9)
popz.v

:[62]
push.v self.message
pushi.e 3
cmp.i.v EQ
bf [64]

:[63]
pushi.e 1
push.v self.kill
sub.v.i
push.i 65280
conv.i.v
pushi.e 0
conv.i.v
push.v self.stretch
push.v self.kill
add.v.v
pushi.e 2
push.v self.stretch
sub.v.i
push.v self.y
push.v self.x
pushi.e 30
add.i.v
pushi.e 2
conv.i.v
push.v self.message_sprite
call.i draw_sprite_ext(argc=9)
popz.v

:[64]
push.v self.message
pushi.e 4
cmp.i.v EQ
bf [66]

:[65]
pushi.e 1
push.v self.kill
sub.v.i
push.i 65280
conv.i.v
pushi.e 0
conv.i.v
push.v self.stretch
push.v self.kill
add.v.v
pushi.e 2
push.v self.stretch
sub.v.i
push.v self.y
push.v self.x
pushi.e 30
add.i.v
pushi.e 3
conv.i.v
push.v self.message_sprite
call.i draw_sprite_ext(argc=9)
popz.v

:[66]
push.v self.message
pushi.e 5
cmp.i.v EQ
bf [68]

:[67]
pushi.e 1
push.v self.kill
sub.v.i
push.i 65280
conv.i.v
pushi.e 0
conv.i.v
push.v self.stretch
push.v self.kill
add.v.v
pushi.e 2
push.v self.stretch
sub.v.i
push.v self.y
push.v self.x
pushi.e 30
add.i.v
pushi.e 5
conv.i.v
push.v self.message_sprite
call.i draw_sprite_ext(argc=9)
popz.v

:[68]
push.v self.message
pushi.e 6
cmp.i.v EQ
bf [70]

:[69]
pushi.e 1
push.v self.kill
sub.v.i
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.stretch
push.v self.kill
add.v.v
pushi.e 2
push.v self.stretch
sub.v.i
push.v self.y
push.v self.x
pushi.e 30
add.i.v
pushi.e 8
conv.i.v
push.v self.message_sprite
call.i draw_sprite_ext(argc=9)
popz.v

:[70]
push.v self.message
pushi.e 7
cmp.i.v EQ
bf [72]

:[71]
pushi.e 1
push.v self.kill
sub.v.i
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.stretch
push.v self.kill
add.v.v
pushi.e 2
push.v self.stretch
sub.v.i
push.v self.y
push.v self.x
pushi.e 30
add.i.v
pushi.e 9
conv.i.v
push.v self.message_sprite
call.i draw_sprite_ext(argc=9)
popz.v

:[72]
push.v self.message
pushi.e 8
cmp.i.v EQ
bf [74]

:[73]
pushi.e 1
push.v self.kill
sub.v.i
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.stretch
push.v self.kill
add.v.v
pushi.e 2
push.v self.stretch
sub.v.i
push.v self.y
push.v self.x
pushi.e 30
add.i.v
pushi.e 10
conv.i.v
push.v self.message_sprite
call.i draw_sprite_ext(argc=9)
popz.v

:[74]
push.v self.message
pushi.e 9
cmp.i.v EQ
bf [76]

:[75]
pushi.e 1
push.v self.kill
sub.v.i
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.stretch
push.v self.kill
add.v.v
pushi.e 2
push.v self.stretch
sub.v.i
push.v self.y
push.v self.x
pushi.e 30
add.i.v
pushi.e 11
conv.i.v
push.v self.message_sprite
call.i draw_sprite_ext(argc=9)
popz.v

:[76]
push.v self.bounces
pushi.e 2
cmp.i.v LT
bf [78]

:[77]
push.v self.vspeed
pushi.e 1
add.i.v
pop.v.v self.vspeed

:[78]
push.v self.y
push.v self.ystart
cmp.v.v GT
bf [81]

:[79]
push.v self.bounces
pushi.e 2
cmp.i.v LT
bf [81]

:[80]
push.v self.killactive
pushi.e 0
cmp.i.v EQ
b [82]

:[81]
push.e 0

:[82]
bf [84]

:[83]
push.v self.ystart
pop.v.v self.y
push.v self.vstart
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.vspeed
push.v self.bounces
pushi.e 1
add.i.v
pop.v.v self.bounces

:[84]
push.v self.bounces
pushi.e 2
cmp.i.v GTE
bf [86]

:[85]
push.v self.killactive
pushi.e 0
cmp.i.v EQ
b [87]

:[86]
push.e 0

:[87]
bf [89]

:[88]
pushi.e 0
pop.v.i self.vspeed
push.v self.ystart
pop.v.v self.y

:[89]
push.v self.stretchgo
pushi.e 1
cmp.i.v EQ
bf [91]

:[90]
push.v self.stretch
push.d 0.4
add.d.v
pop.v.v self.stretch

:[91]
push.v self.stretch
push.d 1.2
cmp.d.v GTE
bf [93]

:[92]
pushi.e 1
pop.v.i self.stretch
pushi.e 0
pop.v.i self.stretchgo

:[93]
push.v self.killtimer
pushi.e 1
add.i.v
pop.v.v self.killtimer
push.v self.killtimer
pushi.e 35
cmp.i.v GT
bf [95]

:[94]
pushi.e 1
pop.v.i self.killactive

:[95]
push.v self.killactive
pushi.e 1
cmp.i.v EQ
bf [97]

:[96]
push.v self.kill
push.d 0.08
add.d.v
pop.v.v self.kill
push.v self.y
pushi.e 4
sub.i.v
pop.v.v self.y

:[97]
push.v self.kill
pushi.e 1
cmp.i.v GT
bf [99]

:[98]
call.i instance_destroy(argc=0)
popz.v

:[99]
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [end]

:[100]
push.v self.stayincamera
pushi.e 1
cmp.i.v EQ
bf [end]

:[101]
push.v self.x
push.v self.xx
pushi.e 600
add.i.v
cmp.v.v GTE
bf [end]

:[102]
push.v self.xx
pushi.e 600
add.i.v
pop.v.v self.x

:[end]