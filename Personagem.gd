extends KinematicBody2D

var contadorPlacar = 0
var contadorVida = 3
var velocity = Vector2()
export(int) var speed = 200

func _ready():
	
	get_parent().get_node("Placar").text = "Pontos: " + str(contadorPlacar)
	get_parent().get_node("Vida").text = "Vidas: " + str(contadorVida)
	
func get_input():
	
	velocity = Vector2()
	
	if Input.is_action_pressed('ui_right'):
		velocity.x += 1
	
	if Input.is_action_pressed('ui_left'):
		velocity.x -= 1
	
	if Input.is_action_pressed('ui_up'):
		velocity.y -= 1
	
	if Input.is_action_pressed('ui_down'):
		velocity.y += 1
			
	velocity = velocity.normalized() * speed
	return velocity
	
	
	
func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
	

func _on_AreaPersonagem_body_entered(body):
	
	if "Lava" in body.name:
		contadorVida -= 1
		get_parent().get_node("Vida").text= "Vidas: " + str(contadorVida)
	
	if "Bruxa" in body.name:
		contadorVida -= 1
		get_parent().get_node("Vida").text = "Vidas: " + str(contadorVida)
	
	if "Abobora" in body.name:
		contadorVida -= 1
		get_parent().get_node("Vida").text = "Vidas: " + str(contadorVida)
	
	if "Fantasma" in body.name:
		contadorVida -= 1
		get_parent().get_node("Vida").text = "Vidas: " + str(contadorVida)
	
	if "Coracao01" in body.name:
		get_parent().get_node("Coracao01").hide() 
		get_parent().get_node("Coracao01/ColisaoCoracao01").set_deferred("disabled", true)
		
		contadorVida += 1
		get_parent().get_node("Vida").text= "Vidas: " + str(contadorVida)
	
	if "Coracao02" in body.name:
		get_parent().get_node("Coracao02").hide()
		get_parent().get_node("Coracao02/ColisaoCoracao02").set_deferred("disabled", true)
		
		contadorVida += 1
		get_parent().get_node("Vida").text= "Vidas: " + str(contadorVida)
	
	if "Coracao03" in body.name:
		get_parent().get_node("Coracao03").hide() #esconder objeto 
		get_parent().get_node("Coracao03/ColisaoCoracao03").set_deferred("disabled", true)
		
		contadorVida += 1
		get_parent().get_node("Vida").text= "Vidas: " + str(contadorVida)
	
	if "Estrela01" in body.name:
		get_parent().get_node("Estrela01").hide()
		get_parent().get_node("Estrela01/ColisaoEstrela01").set_deferred("disabled", true)
		
		contadorPlacar +=1
		get_parent().get_node("Placar").text = "Pontos: " + str(contadorPlacar)
	
	if "Estrela02" in body.name:
		get_parent().get_node("Estrela02").hide()
		get_parent().get_node("Estrela02/ColisaoEstrela02").set_deferred("disabled", true)
		
		contadorPlacar +=1
		get_parent().get_node("Placar").text = "Pontos: " + str(contadorPlacar)
	
	if "Estrela03" in body.name:
		get_parent().get_node("Estrela03").hide()
		get_parent().get_node("Estrela03/ColisaoEstrela03").set_deferred("disabled", true)
		
		contadorPlacar +=1
		get_parent().get_node("Placar").text = "Pontos: " + str(contadorPlacar)
	
	if "Estrela04" in body.name:
		get_parent().get_node("Estrela04").hide()
		get_parent().get_node("Estrela04/ColisaoEstrela04").set_deferred("disabled", true)
		
		contadorPlacar +=1
		get_parent().get_node("Placar").text = "Pontos: " + str(contadorPlacar)
		
	if "Estrela05" in body.name:
		get_parent().get_node("Estrela05").hide()
		get_parent().get_node("Estrela05/ColisaoEstrela05").set_deferred("disabled", true)
		
		contadorPlacar +=1
		get_parent().get_node("Placar").text = "Pontos: " + str(contadorPlacar)				
		
	if "Estrela06" in body.name:
		get_parent().get_node("Estrela06").hide()
		get_parent().get_node("Estrela06/ColisaoEstrela06").set_deferred("disabled", true)
		
		contadorPlacar +=1
		get_parent().get_node("Placar").text = "Pontos: " + str(contadorPlacar)				
		
	if "Estrela07" in body.name:
		get_parent().get_node("Estrela07").hide()
		get_parent().get_node("Estrela07/ColisaoEstrela07").set_deferred("disabled", true)
		
		contadorPlacar +=1
		get_parent().get_node("Placar").text = "Pontos: " + str(contadorPlacar)				
		
	if "Estrela08" in body.name:
		get_parent().get_node("Estrela08").hide()
		get_parent().get_node("Estrela08/ColisaoEstrela08").set_deferred("disabled", true)
		
		contadorPlacar +=1
		get_parent().get_node("Placar").text = "Pontos: " + str(contadorPlacar)			
	
	if "Estrela09" in body.name:
		get_parent().get_node("Estrela09").hide()
		get_parent().get_node("Estrela09/ColisaoEstrela09").set_deferred("disabled", true)
		
		contadorPlacar +=1
		get_parent().get_node("Placar").text = "Pontos: " + str(contadorPlacar)			
	
	if "Estrela10" in body.name:
		get_parent().get_node("Estrela10").hide()
		get_parent().get_node("Estrela10/ColisaoEstrela10").set_deferred("disabled", true)
		
		contadorPlacar +=1
		get_parent().get_node("Placar").text = "Pontos: " + str(contadorPlacar)			
	
	if "Estrela11" in body.name:
		get_parent().get_node("Estrela11").hide()
		get_parent().get_node("Estrela11/ColisaoEstrela11").set_deferred("disabled", true)
		
		contadorPlacar +=1
		get_parent().get_node("Placar").text = "Pontos: " + str(contadorPlacar)
	
	if "Estrela12" in body.name:
		get_parent().get_node("Estrela12").hide()
		get_parent().get_node("Estrela12/ColisaoEstrela12").set_deferred("disabled", true)
		
		contadorPlacar +=1
		get_parent().get_node("Placar").text = "Pontos: " + str(contadorPlacar)
	
	if "Estrela13" in body.name:
		get_parent().get_node("Estrela13").hide()
		get_parent().get_node("Estrela13/ColisaoEstrela13").set_deferred("disabled", true)
		
		contadorPlacar +=1
		get_parent().get_node("Placar").text = "Pontos: " + str(contadorPlacar)
	
	if "Estrela14" in body.name:
		get_parent().get_node("Estrela14").hide()
		get_parent().get_node("Estrela14/ColisaoEstrela14").set_deferred("disabled", true)
		
		contadorPlacar +=1
		get_parent().get_node("Placar").text = "Pontos: " + str(contadorPlacar)
	
	if "Estrela15" in body.name:
		get_parent().get_node("Estrela15").hide()
		get_parent().get_node("Estrela15/ColisaoEstrela15").set_deferred("disabled", true)
		
		contadorPlacar +=1
		get_parent().get_node("Placar").text = "Pontos: " + str(contadorPlacar)

	Morte()			
											


func Morte():
	if contadorVida < 1:
		queue_free()
		get_tree().change_scene("res://GameOver.tscn")
