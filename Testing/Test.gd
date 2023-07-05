extends Node2D

@onready var test2 = preload("res://Cards/CardResources/Gaslight.tres")
@onready var testnode: Node = $Origin
@onready var endnode: Node = $Destination

@export var Test: Resource
@export var TestC: CardAttributes
@export var testarray: Array
@export var testcardarray: Array[CardAttributes]
@export var number = 5

var grabbable: bool = false

var Sprite

@onready var dialogue = {
	0: {
		"text": "Hey, [i]wake up![/i] It's time to make video games.",
		"response":
		{
			2:"Hey, buzz off",
			1:"Do you really think so?",
		}
	},
	
	1: {
		"text": "Bro, what's up?",
		"response":
		{
			2:"I'm feeling uncomfortable",
			1:"No way I'll do that...",
		}
		
		
	}
}
var current_label: Label

func _ready() -> void:
	var line_data = dialogue[0]
	print(line_data.response[2])
#	if TestC:
#		print("resource loaded")
#		print(TestC.title)
#	if test2:
#		print(test2.title)
#	print(testarray.find("b"))
#	print(TestC.find(Test.id))

#	for card in testcardarray:
#		if card.id == "GL":
#			print("GL CARD FOUND")
#		if card.id == "GP":
#			print("GP CARD FOUND")
			
	print("the number is " + str(number))
	var vector = Vector2i(1,1)
	float(vector.x)
	print(get_viewport().size * 0.5)
		#print(card_index)
		#print(testarray[card_index])
		#var testing = testarray.bsearch("3")
		#print(testing)
#		if ID == CardData[card_index].id:
#			return card_index
	emit_signal("test")
#func _on_voicebox_characters_sounded(characters: String):
#	current_label.text += characters
#
#
#func _on_voicebox_finished_phrase():
#	if conversation.size() > 0:
#		play_next_in_conversation()
#
#
#func play_next_in_conversation():
#	var next_conversation = conversation.pop_front()
#	current_label = next_conversation[0]
#	voicebox.base_pitch = next_conversation[2]
#	voicebox.play_string(next_conversation[1])

#
#func set_response(new_text: String) -> void:
#	test_label2.bbcode_text = new_text
#
#func show_line(id:int) -> void:
#	var line_data: Dictionary = dialogue[id]
#	set_text(line_data.text)
#
#func show_response(id:int,id2:int) -> void:
#	var line_data: Dictionary = dialogue[id]
#	set_response(line_data.response[id2])
#func _on_button_pressed() -> void:
#
#	show_line(id)
#	show_response(id,id)
#
#	id += 1
#func set_text(new_text: String) -> void:
#
#	test_label.bbcode_text = new_text
#	voicebox.play_string(new_text) # fix so they play after each other
##	voicebox.pitch_scale = new_text.length() / text_animation_duration
#	var duration: float = new_text.length() / text_animation_duration
#	var tween = get_tree().create_tween()
#	tween.tween_property(test_label, "visible_characters", new_text.length() , duration)
#




func _on_button_spawn_node_pressed() -> void:
	var sprite = Sprite2D.new()
	add_child(sprite)
	sprite.reparent(testnode)


func _on_button_change_parent_pressed() -> void:
	for child in testnode.get_children():
		child.reparent(endnode)


func _on_area_2d_mouse_entered() -> void:
	print("mouse in")
	grabbable = true


func _on_area_2d_mouse_exited() -> void:
	print("mouse out")
	grabbable = false
