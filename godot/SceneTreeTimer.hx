// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
A one-shot timer managed by the scene tree, which emits `timeout` on completion. See also `godot.SceneTree.createTimer`.

As opposed to `godot.Timer`, it does not require the instantiation of a node. Commonly used to create a one-shot delay timer as in the following example:

```

func some_function():
print("Timer started.")
yield(get_tree().create_timer(1.0), "timeout")
print("Timer ended.")

```
**/
@:libType
@:csNative
@:native("Godot.SceneTreeTimer")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class SceneTreeTimer extends godot.Reference {
	/**		
		The time remaining.
	**/
	@:native("TimeLeft")
	public var timeLeft:Single;

	@:native("SetTimeLeft")
	public function setTimeLeft(time:Single):Void;

	@:native("GetTimeLeft")
	public function getTimeLeft():Single;
}