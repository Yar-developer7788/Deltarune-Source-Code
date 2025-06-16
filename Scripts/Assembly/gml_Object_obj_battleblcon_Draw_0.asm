.localvar 2 arguments
.localvar 27788 checkstring 15042
.localvar 14540 spacing 15043
.localvar 24606 stringlength 15044
.localvar 27789 newmaxlength 15045
.localvar 27790 currentlength 15046
.localvar 11611 ii 15047
.localvar 14919 mychar 15048

:[0]
push.v self.mywriter
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [end]

:[1]
push.v self.depth
pushi.e 5
sub.i.v
push.v self.mywriter
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.remmsgno
push.v 64.msgno
cmp.v.v NEQ
bf [3]

:[2]
pushi.e 0
pop.v.i self.reformatted

:[3]
push.v self.auto_length
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i self.init
pushi.e 1
pop.v.i self.reformatted

:[5]
push.v self.reformatted
pushi.e 0
cmp.i.v EQ
bf [46]

:[6]
push.v self.mywriter
pushi.e -9
push.v [stacktop]self.formatted
pushi.e 1
cmp.i.v EQ
bf [46]

:[7]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.v self.mywriter
pushi.e -9
push.v [stacktop]self.writingx
pop.v.v self.initwritingx
push.v self.mywriter
pushi.e -9
push.v [stacktop]self.writingy
pop.v.v self.initwritingy
pushi.e 1
pop.v.i self.init

:[9]
push.v self.mywriter
pushi.e -9
push.v [stacktop]self.writingx
pop.v.v self.writingx
push.v self.mywriter
pushi.e -9
push.v [stacktop]self.writingy
pop.v.v self.writingy
push.v self.mywriter
pushi.e -9
push.v [stacktop]self.stringmax
pop.v.v self.stringmax
push.v self.mywriter
pushi.e -9
push.v [stacktop]self.hspace
pop.v.v self.hspace
push.v self.mywriter
pushi.e -9
push.v [stacktop]self.vspace
pop.v.v self.vspace
push.v self.mywriter
pushi.e -9
push.v [stacktop]self.linecount
pop.v.v self.linecount
push.v self.stringmax
push.v self.hspace
mul.v.v
pushi.e 10
add.i.v
pop.v.v self.balloonwidth
push.v self.linecount
pushi.e 1
add.i.v
push.v self.vspace
mul.v.v
pushi.e 5
add.i.v
pop.v.v self.balloonheight
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [42]

:[10]
push.v self.mywriter
pushi.e -9
push.v [stacktop]self.mystring
pop.v.v local.checkstring
push.v self.mywriter
pushi.e -9
push.v [stacktop]self.hspace
pop.v.v local.spacing
pushloc.v local.checkstring
call.i string_length(argc=1)
pop.v.v local.stringlength
pushi.e 0
pop.v.i local.newmaxlength
pushi.e 0
pop.v.i local.currentlength
pushi.e 1
pop.v.i local.ii

:[11]
pushloc.v local.ii
pushloc.v local.stringlength
pushi.e 1
add.i.v
cmp.v.v LT
bf [41]

:[12]
pushloc.v local.ii
pushloc.v local.checkstring
call.i string_char_at(argc=2)
pop.v.v local.mychar
pushloc.v local.mychar
push.s "&"@6153
cmp.s.v EQ
bt [14]

:[13]
pushloc.v local.mychar
push.s "\n"@150
cmp.s.v EQ
b [15]

:[14]
push.e 1

:[15]
bf [17]

:[16]
pushi.e 0
pop.v.i local.currentlength
b [38]

:[17]
pushloc.v local.mychar
push.s "^"@6154
cmp.s.v EQ
bt [19]

:[18]
pushloc.v local.mychar
push.s "*"@6161
cmp.s.v EQ
b [20]

:[19]
push.e 1

:[20]
bf [22]

:[21]
push.v local.ii
push.e 1
add.i.v
pop.v.v local.ii
b [38]

:[22]
pushloc.v local.mychar
push.s "\\"@6159
cmp.s.v EQ
bf [24]

:[23]
push.v local.ii
pushi.e 2
add.i.v
pop.v.v local.ii
b [38]

:[24]
pushloc.v local.mychar
push.s "/"@4448
cmp.s.v EQ
bt [26]

:[25]
pushloc.v local.mychar
push.s "%"@14906
cmp.s.v EQ
b [27]

:[26]
push.e 1

:[27]
bf [29]

:[28]
b [38]

:[29]
pushloc.v local.mychar
call.i ord(argc=1)
pushi.e 256
cmp.i.v LT
bt [34]

:[30]
pushloc.v local.mychar
call.i ord(argc=1)
push.i 65377
cmp.i.v GTE
bf [32]

:[31]
pushloc.v local.mychar
call.i ord(argc=1)
push.i 65439
cmp.i.v LTE
b [33]

:[32]
push.e 0

:[33]
b [35]

:[34]
push.e 1

:[35]
bf [37]

:[36]
push.v local.currentlength
pushloc.v local.spacing
push.d 0.5
mul.d.v
add.v.v
pop.v.v local.currentlength
b [38]

:[37]
push.v local.currentlength
pushloc.v local.spacing
add.v.v
pop.v.v local.currentlength

:[38]
pushloc.v local.currentlength
pushloc.v local.newmaxlength
cmp.v.v GTE
bf [40]

:[39]
pushloc.v local.currentlength
pop.v.v local.newmaxlength

:[40]
push.v local.ii
pushi.e 1
add.i.v
pop.v.v local.ii
b [11]

:[41]
pushloc.v local.newmaxlength
pushi.e 10
add.i.v
pop.v.v self.balloonwidth

:[42]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
push.v self.initwritingx
push.v self.balloonwidth
pushi.e 20
add.i.v
sub.v.v
push.v self.mywriter
pushi.e -9
pop.v.v [stacktop]self.writingx
push.v self.initwritingy
push.v self.balloonheight
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.mywriter
pushi.e -9
pop.v.v [stacktop]self.writingy
push.v self.initwritingx
push.v self.balloonwidth
pushi.e 20
add.i.v
sub.v.v
pop.v.v self.writingx
push.v self.initwritingy
push.v self.balloonheight
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.writingy

:[44]
push.v self.side
pushi.e -1
cmp.i.v EQ
bf [46]

:[45]
pushi.e 20
pop.v.i self.xoffset
push.v self.initwritingx
push.v self.mywriter
pushi.e -9
pop.v.v [stacktop]self.writingx
push.v self.initwritingy
push.v self.balloonheight
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.v self.mywriter
pushi.e -9
pop.v.v [stacktop]self.writingy
push.v self.initwritingx
pop.v.v self.writingx
push.v self.initwritingy
push.v self.balloonheight
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.writingy

:[46]
push.v self.auto_length
pushi.e 0
cmp.i.v EQ
bf [48]

:[47]
call.i draw_self(argc=0)
popz.v

:[48]
push.v self.auto_length
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
push.v self.init
pushi.e 1
cmp.i.v EQ
b [51]

:[50]
push.e 0

:[51]
bf [59]

:[52]
pushi.e 1
pop.v.i self.blconscale
push.v self.balloonheight
pushi.e 40
cmp.i.v LT
bf [54]

:[53]
push.d 0.5
pop.v.d self.blconscale

:[54]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [56]

:[55]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.blconscale
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
pushi.e 4
conv.i.v
pushi.e 2229
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[56]
push.v self.side
pushi.e -1
cmp.i.v EQ
bf [58]

:[57]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.blconscale
pushi.e -1
conv.i.v
push.v self.y
push.v self.x
push.v self.xoffset
sub.v.v
pushi.e 4
conv.i.v
pushi.e 2229
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[58]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.writingy
push.v self.balloonheight
add.v.v
pushi.e 5
sub.i.v
push.v self.writingx
push.v self.balloonwidth
add.v.v
push.v self.writingy
pushi.e 5
sub.i.v
push.v self.writingx
pushi.e 10
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.b.v
push.v self.writingy
push.v self.balloonheight
add.v.v
push.v self.writingx
push.v self.balloonwidth
add.v.v
pushi.e 5
sub.i.v
push.v self.writingy
pushi.e 10
sub.i.v
push.v self.writingx
pushi.e 5
sub.i.v
call.i draw_rectangle(argc=5)
popz.v

:[59]
push.v self.mywriter
pushi.e -9
push.v [stacktop]self.msgno
pop.v.v self.remmsgno

:[end]