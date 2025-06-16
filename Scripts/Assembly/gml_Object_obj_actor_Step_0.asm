.localvar 2 arguments

:[0]
push.v self.auto_walk
pushi.e 1
cmp.i.v EQ
bf [15]

:[1]
push.v self.walk
pushi.e 1
cmp.i.v EQ
bf [15]

:[2]
pushi.e 0
pop.v.i self.v_speed
push.v self.fake_speed
pushi.e 0
cmp.i.v NEQ
bf [4]

:[3]
push.v self.fake_speed
pop.v.v self.v_speed

:[4]
push.v self.speed
pushi.e 0
cmp.i.v NEQ
bf [6]

:[5]
push.v self.speed
pop.v.v self.v_speed

:[6]
push.v self.v_speed
pushi.e 0
cmp.i.v GT
bf [13]

:[7]
push.v self.v_speed
pushi.e 10
push.v self.dz
mul.v.i
div.v.v
pop.v.v self.new_image_speed
push.v self.new_image_speed
pop.v.v self.image_speed
push.v self.new_image_speed
push.d 0.25
cmp.d.v LTE
bf [9]

:[8]
push.d 0.25
pop.v.d self.image_speed

:[9]
push.v self.new_image_speed
pushi.e 1
cmp.i.v GTE
bf [11]

:[10]
push.d 0.5
pop.v.d self.image_speed

:[11]
push.v self.stopped
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 1
pop.v.i self.image_index
pushi.e 0
pop.v.i self.stopped

:[13]
push.v self.v_speed
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
pushi.e 1
pop.v.i self.stopped
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed

:[15]
push.v self.auto_facing
pushi.e 1
cmp.i.v EQ
bf [36]

:[16]
pushi.e 0
pop.v.i self.v_vspeed
pushi.e 0
pop.v.i self.v_hspeed
push.v self.fake_speed
pushi.e 0
cmp.i.v NEQ
bf [18]

:[17]
push.v self.fake_direction
push.v self.fake_speed
call.i lengthdir_y(argc=2)
pop.v.v self.v_vspeed
push.v self.fake_direction
push.v self.fake_speed
call.i lengthdir_x(argc=2)
pop.v.v self.v_hspeed

:[18]
push.v self.hspeed
pushi.e 0
cmp.i.v NEQ
bf [20]

:[19]
push.v self.hspeed
pop.v.v self.v_hspeed

:[20]
push.v self.vspeed
pushi.e 0
cmp.i.v NEQ
bf [22]

:[21]
push.v self.vspeed
pop.v.v self.v_vspeed

:[22]
push.v self.v_vspeed
push.d 0.05
cmp.d.v GT
bf [24]

:[23]
push.v self.dsprite
pop.v.v self.sprite_index

:[24]
push.v self.v_vspeed
push.d -0.05
cmp.d.v LT
bf [26]

:[25]
push.v self.usprite
pop.v.v self.sprite_index

:[26]
push.v self.v_hspeed
call.i abs(argc=1)
push.v self.v_vspeed
call.i abs(argc=1)
cmp.v.v GT
bf [28]

:[27]
push.v self.v_hspeed
push.d 0.05
cmp.d.v GT
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
push.v self.rsprite
pop.v.v self.sprite_index

:[31]
push.v self.v_hspeed
call.i abs(argc=1)
push.v self.v_vspeed
call.i abs(argc=1)
cmp.v.v GT
bf [33]

:[32]
push.v self.v_hspeed
push.d -0.05
cmp.d.v LT
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
push.v self.lsprite
pop.v.v self.sprite_index

:[36]
push.v self.spinspeed
pushi.e 0
cmp.i.v NEQ
bf [66]

:[37]
push.v self.spintimer
pushi.e 1
conv.i.d
push.v self.spinspeed
div.v.d
add.v.v
pop.v.v self.spintimer
push.v self.spintimer
pushi.e 1
cmp.i.v GTE
bf [47]

:[38]
push.v self.facing
push.s "d"@6706
cmp.s.v EQ
bf [40]

:[39]
push.s "l"@6707
pop.v.s self.facing
b [46]

:[40]
push.v self.facing
push.s "l"@6707
cmp.s.v EQ
bf [42]

:[41]
push.s "u"@6708
pop.v.s self.facing
b [46]

:[42]
push.v self.facing
push.s "u"@6708
cmp.s.v EQ
bf [44]

:[43]
push.s "r"@6696
pop.v.s self.facing
b [46]

:[44]
push.v self.facing
push.s "r"@6696
cmp.s.v EQ
bf [46]

:[45]
push.s "d"@6706
pop.v.s self.facing

:[46]
pushi.e 0
pop.v.i self.spintimer

:[47]
push.v self.spintimer
pushi.e -1
cmp.i.v LTE
bf [57]

:[48]
push.v self.facing
push.s "d"@6706
cmp.s.v EQ
bf [50]

:[49]
push.s "r"@6696
pop.v.s self.facing
b [56]

:[50]
push.v self.facing
push.s "l"@6707
cmp.s.v EQ
bf [52]

:[51]
push.s "d"@6706
pop.v.s self.facing
b [56]

:[52]
push.v self.facing
push.s "u"@6708
cmp.s.v EQ
bf [54]

:[53]
push.s "l"@6707
pop.v.s self.facing
b [56]

:[54]
push.v self.facing
push.s "r"@6696
cmp.s.v EQ
bf [56]

:[55]
push.s "u"@6708
pop.v.s self.facing

:[56]
pushi.e 0
pop.v.i self.spintimer

:[57]
push.v self.facing
push.s "d"@6706
cmp.s.v EQ
bf [59]

:[58]
push.v self.dsprite
pop.v.v self.sprite_index

:[59]
push.v self.facing
push.s "r"@6696
cmp.s.v EQ
bf [61]

:[60]
push.v self.rsprite
pop.v.v self.sprite_index

:[61]
push.v self.facing
push.s "u"@6708
cmp.s.v EQ
bf [63]

:[62]
push.v self.usprite
pop.v.v self.sprite_index

:[63]
push.v self.facing
push.s "l"@6707
cmp.s.v EQ
bf [65]

:[64]
push.v self.lsprite
pop.v.v self.sprite_index

:[65]
b [67]

:[66]
pushi.e 0
pop.v.i self.spintimer

:[67]
push.v self.debug_killtimer
pushi.e 0
cmp.i.v GT
bf [70]

:[68]
push.v self.debug_killtimer
push.e 1
sub.i.v
pop.v.v self.debug_killtimer
push.v self.debug_killtimer
pushi.e 0
cmp.i.v LTE
bf [70]

:[69]
call.i instance_destroy(argc=0)
popz.v

:[70]
push.v self.auto_depth
pushi.e 1
cmp.i.v EQ
bf [72]

:[71]
call.i gml_Script_scr_depth(argc=0)
popz.v
push.v self.depth
push.v self.depthbonus
add.v.v
pop.v.v self.depth

:[72]
pushi.e 0
pop.v.i self.sinerx
pushi.e 0
pop.v.i self.sinery
push.v self.siner_add0
pushi.e 0
cmp.i.v NEQ
bf [79]

:[73]
push.v self.siner0
push.v self.siner_add0
add.v.v
pop.v.v self.siner0
push.v self.siner_type0
push.s "sin"@6634
cmp.s.v EQ
bf [75]

:[74]
push.v self.siner0
call.i sin(argc=1)
push.v self.siner_amplitude0
mul.v.v
pop.v.v self.sinmove
b [76]

:[75]
push.v self.siner0
call.i cos(argc=1)
push.v self.siner_amplitude0
mul.v.v
pop.v.v self.sinmove

:[76]
push.v self.siner_visual0
pushi.e 1
cmp.i.v EQ
bf [78]

:[77]
push.v self.sinerx
push.v self.siner_direction0
push.v self.sinmove
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.sinerx
push.v self.sinery
push.v self.siner_direction0
push.v self.sinmove
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.sinery
b [79]

:[78]
push.v self.x
push.v self.siner_direction0
push.v self.sinmove
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner_direction0
push.v self.sinmove
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y

:[79]
push.v self.siner_add1
pushi.e 0
cmp.i.v NEQ
bf [86]

:[80]
push.v self.siner1
push.v self.siner_add1
add.v.v
pop.v.v self.siner1
push.v self.siner_type1
push.s "sin"@6634
cmp.s.v EQ
bf [82]

:[81]
push.v self.siner1
call.i sin(argc=1)
push.v self.siner_amplitude1
mul.v.v
pop.v.v self.sinmove
b [83]

:[82]
push.v self.siner1
call.i cos(argc=1)
push.v self.siner_amplitude1
mul.v.v
pop.v.v self.sinmove

:[83]
push.v self.siner_visual1
pushi.e 1
cmp.i.v EQ
bf [85]

:[84]
push.v self.sinerx
push.v self.siner_direction1
push.v self.sinmove
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.sinerx
push.v self.sinery
push.v self.siner_direction1
push.v self.sinmove
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.sinery
b [86]

:[85]
push.v self.x
push.v self.siner_direction1
push.v self.sinmove
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner_direction1
push.v self.sinmove
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v self.y

:[86]
push.v self.shakeamt
pushi.e 0
cmp.i.v GT
bf [90]

:[87]
push.v self.shaketimer
push.e 1
sub.i.v
pop.v.v self.shaketimer
push.v self.shaketimer
pushi.e 0
cmp.i.v LTE
bf [89]

:[88]
push.v self.shakeamt
push.v self.shakeamt
neg.v
call.i random_range(argc=2)
pop.v.v self.shakex
push.v self.shakeamt
push.v self.shakeamt
neg.v
call.i random_range(argc=2)
pop.v.v self.shakey
push.v self.shaketime
pop.v.v self.shaketimer

:[89]
b [91]

:[90]
pushi.e 0
pop.v.i self.shakex
pushi.e 0
pop.v.i self.shakey

:[91]
push.v self.stepsound
pushi.e 1
cmp.i.v EQ
bf [end]

:[92]
push.v self.stepsound_count
pushi.e 0
cmp.i.v EQ
bf [94]

:[93]
pushi.e 191
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
pop.v.i self.stepsound_count
b [96]

:[94]
push.v self.stepsound_count
pushi.e 1
cmp.i.v EQ
bf [96]

:[95]
pushi.e 192
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.stepsound_count

:[96]
pushi.e 0
pop.v.i self.stepsound

:[end]