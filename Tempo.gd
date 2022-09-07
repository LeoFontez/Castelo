extends Label


var timer = 0
var timer_on = false

func _process(delta):
	if(timer_on):
		timer += delta
		
		var secs = fmod(timer,60)
		var mins = fmod(timer, 60*60) / 60
		
		var time_passed = "%02d : %02d" % [mins, secs]
		text = time_passed
pass

func _on_Timer_timeout():
	var timer_on = true
