// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Encapsulates a `godot.ColorPicker` making it accessible by pressing a button. Pressing the button will toggle the `godot.ColorPicker` visibility.
**/
@:libType
@:csNative
@:native("Godot.ColorPickerButton")
@:autoBuild(godot.Godot.buildUserClass())
extern class ColorPickerButton extends godot.Button {
	/**
		`color_changed` signal.
		
		Emitted when the color changes.
	**/
	public var onColorChanged(get, never):Signal<(color:Color)->Void>;
	@:dox(hide) inline function get_onColorChanged():Signal<(color:Color)->Void> {
		return new Signal(this, "color_changed", Signal.SignalHandlerColorVoid.connectSignal, Signal.SignalHandlerColorVoid.disconnectSignal, Signal.SignalHandlerColorVoid.isSignalConnected);
	}

	/**
		`picker_created` signal.
		
		Emitted when the `ColorPicker` is created (the button is pressed for the first time).
	**/
	public var onPickerCreated(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onPickerCreated():Signal<Void->Void> {
		return new Signal(this, "picker_created", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`popup_closed` signal.
		
		Emitted when the `ColorPicker` is closed.
	**/
	public var onPopupClosed(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onPopupClosed():Signal<Void->Void> {
		return new Signal(this, "popup_closed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		If `true`, the alpha channel in the displayed `godot.ColorPicker` will be visible.
	**/
	@:native("EditAlpha")
	public var editAlpha:Bool;

	/**		
		The currently selected color.
	**/
	@:native("Color")
	public var color:godot.Color;

	@:native("new")
	public function new():Void;

	@:native("SetPickColor")
	public function setPickColor(color:godot.Color):Void;

	@:native("GetPickColor")
	public function getPickColor():godot.Color;

	/**		
		Returns the `godot.ColorPicker` that this node toggles.
	**/
	@:native("GetPicker")
	public function getPicker():godot.ColorPicker;

	/**		
		Returns the control's `godot.PopupPanel` which allows you to connect to popup signals. This allows you to handle events when the ColorPicker is shown or hidden.
	**/
	@:native("GetPopup")
	public function getPopup():godot.PopupPanel;

	@:native("SetEditAlpha")
	public function setEditAlpha(show:Bool):Void;

	@:native("IsEditingAlpha")
	public function isEditingAlpha():Bool;
}
