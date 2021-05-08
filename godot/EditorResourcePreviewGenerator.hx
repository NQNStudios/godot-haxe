// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Custom code to generate previews. Please check `file_dialog/thumbnail_size` in `godot.EditorSettings` to find out the right size to do previews at.
**/
@:libType
@:csNative
@:native("Godot.EditorResourcePreviewGenerator")
@:autoBuild(godot.Godot.buildUserClass())
extern class EditorResourcePreviewGenerator extends godot.Reference {
	@:native("new")
	public function new():Void;

	/**		
		If this function returns `true`, the generator will call `godot.EditorResourcePreviewGenerator.generate` or `godot.EditorResourcePreviewGenerator.generateFromPath` for small previews as well.
		
		By default, it returns `false`.
	**/
	@:native("CanGenerateSmallPreview")
	public function canGenerateSmallPreview():Bool;

	/**		
		Generate a preview from a given resource with the specified size. This must always be implemented.
		
		Returning an empty texture is an OK way to fail and let another generator take care.
		
		Care must be taken because this function is always called from a thread (not the main thread).
	**/
	@:native("Generate")
	public function generate(from:godot.Resource, size:godot.Vector2):godot.Texture;

	/**		
		Generate a preview directly from a path with the specified size. Implementing this is optional, as default code will load and call `godot.EditorResourcePreviewGenerator.generate`.
		
		Returning an empty texture is an OK way to fail and let another generator take care.
		
		Care must be taken because this function is always called from a thread (not the main thread).
	**/
	@:native("GenerateFromPath")
	public function generateFromPath(path:std.String, size:godot.Vector2):godot.Texture;

	/**		
		If this function returns `true`, the generator will automatically generate the small previews from the normal preview texture generated by the methods `godot.EditorResourcePreviewGenerator.generate` or `godot.EditorResourcePreviewGenerator.generateFromPath`.
		
		By default, it returns `false`.
	**/
	@:native("GenerateSmallPreviewAutomatically")
	public function generateSmallPreviewAutomatically():Bool;

	/**		
		Returns `true` if your generator supports the resource of type `type`.
	**/
	@:native("Handles")
	public function handles(type:std.String):Bool;
}