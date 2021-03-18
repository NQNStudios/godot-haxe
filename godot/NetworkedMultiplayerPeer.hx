// Automatically generated Godot externs: DO NOT EDIT
// MIT licensed, see LICENSE.md
package godot;

import cs.system.*;

/**
Manages the connection to network peers. Assigns unique IDs to each client connected to the server.
**/
@:libType
@:csNative
@:native("Godot.NetworkedMultiplayerPeer")
@:autoBuild(godot.Godot.buildUserClass())
extern abstract class NetworkedMultiplayerPeer extends godot.PacketPeer {
	/**		
		The manner in which to send packets to the `target_peer`. See `godot.NetworkedMultiplayerPeer_TransferModeEnum`.
	**/
	@:native("TransferMode")
	public var transferMode:godot.NetworkedMultiplayerPeer_TransferModeEnum;

	/**		
		If `true`, this `godot.NetworkedMultiplayerPeer` refuses new connections.
	**/
	@:native("RefuseNewConnections")
	public var refuseNewConnections:Bool;

	/**		
		Packets are sent to the server alone.
	**/
	@:native("TargetPeerServer")
	public static var TARGET_PEER_SERVER(default, never):Int;

	/**		
		Packets are sent to the server and then redistributed to other peers.
	**/
	@:native("TargetPeerBroadcast")
	public static var TARGET_PEER_BROADCAST(default, never):Int;

	@:native("SetTransferMode")
	public function setTransferMode(mode:godot.NetworkedMultiplayerPeer_TransferModeEnum):Void;

	@:native("GetTransferMode")
	public function getTransferMode():godot.NetworkedMultiplayerPeer_TransferModeEnum;

	/**		
		Sets the peer to which packets will be sent.
		
		The `id` can be one of:  to send to all connected peers,  to send to the peer acting as server, a valid peer ID to send to that specific peer, a negative peer ID to send to all peers except that one. By default, the target peer is .
	**/
	@:native("SetTargetPeer")
	public function setTargetPeer(id:Int):Void;

	/**		
		Returns the ID of the `godot.NetworkedMultiplayerPeer` who sent the most recent packet.
	**/
	@:native("GetPacketPeer")
	public function getPacketPeer():Int;

	/**		
		Waits up to 1 second to receive a new network event.
	**/
	@:native("Poll")
	public function poll():Void;

	/**		
		Returns the current state of the connection. See `godot.NetworkedMultiplayerPeer_ConnectionStatus`.
	**/
	@:native("GetConnectionStatus")
	public function getConnectionStatus():godot.NetworkedMultiplayerPeer_ConnectionStatus;

	/**		
		Returns the ID of this `godot.NetworkedMultiplayerPeer`.
	**/
	@:native("GetUniqueId")
	public function getUniqueId():Int;

	@:native("SetRefuseNewConnections")
	public function setRefuseNewConnections(enable:Bool):Void;

	@:native("IsRefusingNewConnections")
	public function isRefusingNewConnections():Bool;
}