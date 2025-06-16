.localvar 2 arguments
.localvar 14685 ww 20689
.localvar 14686 wh 20690

:[0]
call.i window_get_width(argc=0)
pop.v.v local.ww
call.i window_get_height(argc=0)
pop.v.v local.wh
pushloc.v local.ww
pop.v.v self.length
pushloc.v local.wh
pop.v.v self.height

:[end]