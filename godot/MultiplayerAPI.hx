// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
This class implements most of the logic behind the high-level multiplayer API.

By default, `godot.SceneTree` has a reference to this class that is used to provide multiplayer capabilities (i.e. RPC/RSET) across the whole scene.

It is possible to override the MultiplayerAPI instance used by specific Nodes by setting the `godot.Node.customMultiplayer` property, effectively allowing to run both client and server in the same scene.
**/
@:libType
@:csNative
@:native("Godot.MultiplayerAPI")
@:autoBuild(godot.Godot.buildUserClass())
extern class MultiplayerAPI extends godot.Reference {
	/**
		`connected_to_server` signal.
		
		Emitted when this MultiplayerAPI's `networkPeer` successfully connected to a server. Only emitted on clients.
	**/
	public var onConnectedToServer(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onConnectedToServer():Signal<Void->Void> {
		return new Signal(this, "connected_to_server", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`connection_failed` signal.
		
		Emitted when this MultiplayerAPI's `networkPeer` fails to establish a connection to a server. Only emitted on clients.
	**/
	public var onConnectionFailed(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onConnectionFailed():Signal<Void->Void> {
		return new Signal(this, "connection_failed", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**
		`network_peer_connected` signal.
		
		Emitted when this MultiplayerAPI's `networkPeer` connects with a new peer. ID is the peer ID of the new peer. Clients get notified when other clients connect to the same server. Upon connecting to a server, a client also receives this signal for the server (with ID being 1).
	**/
	public var onNetworkPeerConnected(get, never):Signal<(id:Int)->Void>;
	@:dox(hide) inline function get_onNetworkPeerConnected():Signal<(id:Int)->Void> {
		return new Signal(this, "network_peer_connected", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**
		`network_peer_disconnected` signal.
		
		Emitted when this MultiplayerAPI's `networkPeer` disconnects from a peer. Clients get notified when other clients disconnect from the same server.
	**/
	public var onNetworkPeerDisconnected(get, never):Signal<(id:Int)->Void>;
	@:dox(hide) inline function get_onNetworkPeerDisconnected():Signal<(id:Int)->Void> {
		return new Signal(this, "network_peer_disconnected", Signal.SignalHandlerIntVoid.connectSignal, Signal.SignalHandlerIntVoid.disconnectSignal, Signal.SignalHandlerIntVoid.isSignalConnected);
	}

	/**
		`network_peer_packet` signal.
		
		Emitted when this MultiplayerAPI's `networkPeer` receive a `packet` with custom data (see `sendBytes`). ID is the peer ID of the peer that sent the packet.
	**/
	public var onNetworkPeerPacket(get, never):Signal<(id:Int, packet:std.Array<cs.types.UInt8>)->Void>;
	@:dox(hide) inline function get_onNetworkPeerPacket():Signal<(id:Int, packet:std.Array<cs.types.UInt8>)->Void> {
		return new Signal(this, "network_peer_packet", Signal.SignalHandlerIntPoolByteArrayVoid.connectSignal, Signal.SignalHandlerIntPoolByteArrayVoid.disconnectSignal, Signal.SignalHandlerIntPoolByteArrayVoid.isSignalConnected);
	}

	/**
		`server_disconnected` signal.
		
		Emitted when this MultiplayerAPI's `networkPeer` disconnects from server. Only emitted on clients.
	**/
	public var onServerDisconnected(get, never):Signal<Void->Void>;
	@:dox(hide) inline function get_onServerDisconnected():Signal<Void->Void> {
		return new Signal(this, "server_disconnected", Signal.SignalHandlerVoidVoid.connectSignal, Signal.SignalHandlerVoidVoid.disconnectSignal, Signal.SignalHandlerVoidVoid.isSignalConnected);
	}

	/**		
		The peer object to handle the RPC system (effectively enabling networking when set). Depending on the peer itself, the MultiplayerAPI will become a network server (check with `godot.MultiplayerAPI.isNetworkServer`) and will set root node's network mode to master, or it will become a regular peer with root node set to puppet. All child nodes are set to inherit the network mode by default. Handling of networking-related events (connection, disconnection, new clients) is done by connecting to MultiplayerAPI's signals.
	**/
	@:native("NetworkPeer")
	public var networkPeer:godot.NetworkedMultiplayerPeer;

	/**		
		If `true`, the MultiplayerAPI's `godot.MultiplayerAPI.networkPeer` refuses new incoming connections.
	**/
	@:native("RefuseNewNetworkConnections")
	public var refuseNewNetworkConnections:Bool;

	/**		
		If `true` (or if the `godot.MultiplayerAPI.networkPeer` has `godot.PacketPeer.allowObjectDecoding` set to `true`), the MultiplayerAPI will allow encoding and decoding of object during RPCs/RSETs.
		
		Warning: Deserialized objects can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threats such as remote code execution.
	**/
	@:native("AllowObjectDecoding")
	public var allowObjectDecoding:Bool;

	@:native("new")
	public function new():Void;

	/**		
		Sets the base root node to use for RPCs. Instead of an absolute path, a relative path will be used to find the node upon which the RPC should be executed.
		
		This effectively allows to have different branches of the scene tree to be managed by different MultiplayerAPI, allowing for example to run both client and server in the same scene.
	**/
	@:native("SetRootNode")
	public function setRootNode(node:godot.Node):Void;

	#if doc_gen
	/**		
		Sends the given raw `bytes` to a specific peer identified by `id` (see `godot.NetworkedMultiplayerPeer.setTargetPeer`). Default ID is `0`, i.e. broadcast to all peers.
	**/
	@:native("SendBytes")
	public function sendBytes(bytes:cs.NativeArray<cs.types.UInt8>, ?id:Int, ?mode:godot.NetworkedMultiplayerPeer_TransferModeEnum):godot.Error;
	#else
	/**		
		Sends the given raw `bytes` to a specific peer identified by `id` (see `godot.NetworkedMultiplayerPeer.setTargetPeer`). Default ID is `0`, i.e. broadcast to all peers.
	**/
	@:native("SendBytes")
	public overload function sendBytes(bytes:cs.NativeArray<cs.types.UInt8>):godot.Error;

	/**		
		Sends the given raw `bytes` to a specific peer identified by `id` (see `godot.NetworkedMultiplayerPeer.setTargetPeer`). Default ID is `0`, i.e. broadcast to all peers.
	**/
	@:native("SendBytes")
	public overload function sendBytes(bytes:cs.NativeArray<cs.types.UInt8>, id:Int):godot.Error;

	/**		
		Sends the given raw `bytes` to a specific peer identified by `id` (see `godot.NetworkedMultiplayerPeer.setTargetPeer`). Default ID is `0`, i.e. broadcast to all peers.
	**/
	@:native("SendBytes")
	public overload function sendBytes(bytes:cs.NativeArray<cs.types.UInt8>, id:Int, mode:godot.NetworkedMultiplayerPeer_TransferModeEnum):godot.Error;
	#end

	/**		
		Returns `true` if there is a `godot.MultiplayerAPI.networkPeer` set.
	**/
	@:native("HasNetworkPeer")
	public function hasNetworkPeer():Bool;

	@:native("GetNetworkPeer")
	public function getNetworkPeer():godot.NetworkedMultiplayerPeer;

	/**		
		Returns the unique peer ID of this MultiplayerAPI's `godot.MultiplayerAPI.networkPeer`.
	**/
	@:native("GetNetworkUniqueId")
	public function getNetworkUniqueId():Int;

	/**		
		Returns `true` if this MultiplayerAPI's `godot.MultiplayerAPI.networkPeer` is in server mode (listening for connections).
	**/
	@:native("IsNetworkServer")
	public function isNetworkServer():Bool;

	/**		
		Returns the sender's peer ID for the RPC currently being executed.
		
		Note: If not inside an RPC this method will return 0.
	**/
	@:native("GetRpcSenderId")
	public function getRpcSenderId():Int;

	@:native("SetNetworkPeer")
	public function setNetworkPeer(peer:godot.NetworkedMultiplayerPeer):Void;

	/**		
		Method used for polling the MultiplayerAPI. You only need to worry about this if you are using `godot.Node.customMultiplayer` override or you set `godot.SceneTree.multiplayerPoll` to `false`. By default, `godot.SceneTree` will poll its MultiplayerAPI for you.
		
		Note: This method results in RPCs and RSETs being called, so they will be executed in the same context of this function (e.g. `_process`, `physics`, `godot.Thread`).
	**/
	@:native("Poll")
	public function poll():Void;

	/**		
		Clears the current MultiplayerAPI network state (you shouldn't call this unless you know what you are doing).
	**/
	@:native("Clear")
	public function clear():Void;

	/**		
		Returns the peer IDs of all connected peers of this MultiplayerAPI's `godot.MultiplayerAPI.networkPeer`.
	**/
	@:native("GetNetworkConnectedPeers")
	public function getNetworkConnectedPeers():cs.NativeArray<Int>;

	@:native("SetRefuseNewNetworkConnections")
	public function setRefuseNewNetworkConnections(refuse:Bool):Void;

	@:native("IsRefusingNewNetworkConnections")
	public function isRefusingNewNetworkConnections():Bool;

	@:native("SetAllowObjectDecoding")
	public function setAllowObjectDecoding(enable:Bool):Void;

	@:native("IsObjectDecodingAllowed")
	public function isObjectDecodingAllowed():Bool;
}
