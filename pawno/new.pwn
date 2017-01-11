#include <a_samp>
#include <zcmd>
#include <sscanf>
#pragma tabsize 0


public OnGameModeInit() // Mod açýlýnca olacak iþlemler.
{

	SetGameModeText("Blank Script");
	AddPlayerClass(0, 1958.3783, 1343.1572, 15.3746, 269.1425, 0, 0, 0, 0, 0, 0);
	return 1;
}

public OnGameModeExit() // Mod kapanýnca olacak iþlemler.
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid) // Skin seçme ekranýnda olacak iþlemler.
{
	SetPlayerPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraLookAt(playerid, 1958.3783, 1343.1572, 15.3746);
	return 1;
}
public OnPlayerConnect(playerid) // Oyuncu oyuna girdiðinde olmasýný istediðiniz kodlar.
{

	return 1;
}

public OnPlayerDisconnect(playerid, reason) // Oyuncu oyundan çýktýðýnda olmasýný istediðiniz kodlar.
{
	return 1;
}

public OnPlayerSpawn(playerid) // Oyuncunun spawn olduðu sýrada olmasýný istediðiniz kodlar.
{
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason) // Oyuncu öldüðünde olmasýný istediðiniz kodlar.
{
	return 1;
}

public OnVehicleSpawn(vehicleid) //  "new" kodu ile tanýttýðýmýz aracýn spawn olduðunda olmasýný istediðiniz kodlarý yazacaðýnýz publictir.
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid) // Bir araba patladýðýnda olmasýný istediðiniz kodlarý yazacaðýnýz publictir.
{
	return 1;
}

public OnPlayerText(playerid, text[]) // Oyuncunun mesajlarýnýn yöneldiði publictir.
{
	return 1;
}


public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger) // Oyuncu arabaya binerken olmasýný istediðiniz kodlarý koyacaðýnýz publictir.
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid) // Oyuncu arabadan inerken olmasýný istediðiniz kodlarý koyacaðýnýz publictir.
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate) // Araca binildiðinde olacaklar.
{
	return 1;
}

public OnPlayerEnterCheckpoint(playerid) // Oyuncunun checkpointe geldiðinde olmasýný istediðiniz kodlarý koyacaðýnýz publictir.
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid) // Oyuncunun checkpointten çýktýktan sonra olmasýný istediðiniz kodlarý koyacaðýnýz publictir.
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid) // Oyuncunun yarýþ checkpointinden çýktýktan sonra olmasýný istediðiniz kodlarý koyacaðýnýz publictir.
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid) //  Oyuncunun yarýþ checkpointinden çýktýktan sonra olmasýný istediðiniz kodlarý
{
	return 1;
}

public OnRconCommand(cmd[]) // RCON Giriþi yapýldýðýnda olacaklar.
{
	return 1;
}

public OnPlayerRequestSpawn(playerid) // Karakter seçme ekranýnda olacaklar.Genellikle freeroam sunucularda kullanýlýr.
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid) // Oyuncunun pickuplarý aldýðý sýrada olmasýný istediðiniz kodlarý koyacaðýnýz publictir.
{
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid) // Mod güncellediðinde olacaklar.
{
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source) // Oyuncu TAB'tan týkladýðýnda olacaklar.
{
	return 1;
}
