# Created by Freeknight
# Date: 2021/12/17
# Desc：
# @category: 主界面
#--------------------------------------------------------------------------------------------------
extends Node2D
### Member Variables and Dependencies -------------------------------------------------------------
#--- signals --------------------------------------------------------------------------------------
#--- enums ----------------------------------------------------------------------------------------
#--- constants ------------------------------------------------------------------------------------
#--- public variables - order: export > normal var > onready --------------------------------------
#--- private variables - order: export > normal var > onready -------------------------------------
### -----------------------------------------------------------------------------------------------

### Built in Engine Methods -----------------------------------------------------------------------
func _ready():
	if $Node/FKPostProcessing/Adjustments.visible:
		$CanvasLayer_UI/EffectList.set_item_custom_bg_color(0, Color.green)
	else:
		$CanvasLayer_UI/EffectList.set_item_custom_bg_color(0, Color.red)
	if $Node/FKPostProcessing/Bloom.visible:
		$CanvasLayer_UI/EffectList.set_item_custom_bg_color(1, Color.green)
	else:
		$CanvasLayer_UI/EffectList.set_item_custom_bg_color(1, Color.red)
	if $Node/FKPostProcessing/ChromaticAberration.visible:
		$CanvasLayer_UI/EffectList.set_item_custom_bg_color(2, Color.green)
	else:
		$CanvasLayer_UI/EffectList.set_item_custom_bg_color(2, Color.red)
	if $Node/FKPostProcessing/ColorSplash.visible:
		$CanvasLayer_UI/EffectList.set_item_custom_bg_color(3, Color.green)
	else:
		$CanvasLayer_UI/EffectList.set_item_custom_bg_color(3, Color.red)
	if $Node/FKPostProcessing/FogOverlay.visible:
		$CanvasLayer_UI/EffectList.set_item_custom_bg_color(4, Color.green)
	else:
		$CanvasLayer_UI/EffectList.set_item_custom_bg_color(4, Color.red)
	if $Node/FKPostProcessing/Glitch.visible:
		$CanvasLayer_UI/EffectList.set_item_custom_bg_color(5, Color.green)
	else:
		$CanvasLayer_UI/EffectList.set_item_custom_bg_color(5, Color.red)
	if $Node/FKPostProcessing/Noise.visible:
		$CanvasLayer_UI/EffectList.set_item_custom_bg_color(6, Color.green)
	else:
		$CanvasLayer_UI/EffectList.set_item_custom_bg_color(6, Color.red)
	if $Node/FKPostProcessing/Vignette.visible:
		$CanvasLayer_UI/EffectList.set_item_custom_bg_color(7, Color.green)
	else:
		$CanvasLayer_UI/EffectList.set_item_custom_bg_color(7, Color.red)
	if $Node/FKPostProcessing/WhiteBalance.visible:
		$CanvasLayer_UI/EffectList.set_item_custom_bg_color(8, Color.green)
	else:
		$CanvasLayer_UI/EffectList.set_item_custom_bg_color(8, Color.red)
	pass
### -----------------------------------------------------------------------------------------------

### Public Methods --------------------------------------------------------------------------------
### -----------------------------------------------------------------------------------------------

### Private Methods -------------------------------------------------------------------------------
func _on_CheckBox_toggled(button_pressed):
	if button_pressed:
		$Node/FKPostProcessing.hide()
	else:
		$Node/FKPostProcessing.show()
# ------------------------------------------------------------------------------
func _on_ItemList_item_selected(index):
	match index:
		0:
			$Node/FKPostProcessing/Adjustments.visible = !$Node/FKPostProcessing/Adjustments.visible
			if $Node/FKPostProcessing/Adjustments.visible:
				$CanvasLayer_UI/EffectList.set_item_custom_bg_color(0, Color.green)
			else:
				$CanvasLayer_UI/EffectList.set_item_custom_bg_color(0, Color.red)
			pass
		1:
			$Node/FKPostProcessing/Bloom.visible = !$Node/FKPostProcessing/Bloom.visible
			if $Node/FKPostProcessing/Bloom.visible:
				$CanvasLayer_UI/EffectList.set_item_custom_bg_color(1, Color.green)
			else:
				$CanvasLayer_UI/EffectList.set_item_custom_bg_color(1, Color.red)
			pass
		2:
			$Node/FKPostProcessing/ChromaticAberration.visible = !$Node/FKPostProcessing/ChromaticAberration.visible
			if $Node/FKPostProcessing/ChromaticAberration.visible:
				$CanvasLayer_UI/EffectList.set_item_custom_bg_color(2, Color.green)
			else:
				$CanvasLayer_UI/EffectList.set_item_custom_bg_color(2, Color.red)
			pass
		3:
			$Node/FKPostProcessing/ColorSplash.visible = !$Node/FKPostProcessing/ColorSplash.visible
			if $Node/FKPostProcessing/ColorSplash.visible:
				$CanvasLayer_UI/EffectList.set_item_custom_bg_color(3, Color.green)
			else:
				$CanvasLayer_UI/EffectList.set_item_custom_bg_color(3, Color.red)
			pass
		4:
			$Node/FKPostProcessing/FogOverlay.visible = !$Node/FKPostProcessing/FogOverlay.visible
			if $Node/FKPostProcessing/FogOverlay.visible:
				$CanvasLayer_UI/EffectList.set_item_custom_bg_color(4, Color.green)
			else:
				$CanvasLayer_UI/EffectList.set_item_custom_bg_color(4, Color.red)
			pass
		5:
			$Node/FKPostProcessing/Glitch.visible = !$Node/FKPostProcessing/Glitch.visible
			if $Node/FKPostProcessing/Glitch.visible:
				$CanvasLayer_UI/EffectList.set_item_custom_bg_color(5, Color.green)
			else:
				$CanvasLayer_UI/EffectList.set_item_custom_bg_color(5, Color.red)
			pass
		6:
			$Node/FKPostProcessing/Noise.visible = !$Node/FKPostProcessing/Noise.visible
			if $Node/FKPostProcessing/Noise.visible:
				$CanvasLayer_UI/EffectList.set_item_custom_bg_color(6, Color.green)
			else:
				$CanvasLayer_UI/EffectList.set_item_custom_bg_color(6, Color.red)
			pass
		7:
			$Node/FKPostProcessing/Vignette.visible = !$Node/FKPostProcessing/Vignette.visible
			if $Node/FKPostProcessing/Vignette.visible:
				$CanvasLayer_UI/EffectList.set_item_custom_bg_color(7, Color.green)
			else:
				$CanvasLayer_UI/EffectList.set_item_custom_bg_color(7, Color.red)
			pass
		8:
			$Node/FKPostProcessing/WhiteBalance.visible = !$Node/FKPostProcessing/WhiteBalance.visible
			if $Node/FKPostProcessing/WhiteBalance.visible:
				$CanvasLayer_UI/EffectList.set_item_custom_bg_color(8, Color.green)
			else:
				$CanvasLayer_UI/EffectList.set_item_custom_bg_color(8, Color.red)
			pass
### -----------------------------------------------------------------------------------------------
