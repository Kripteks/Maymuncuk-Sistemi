#include <a_samp>
#include <zcmd>
#include <sscanf>
#pragma tabsize 0


public OnGameModeInit() // Mod a��l�nca olacak i�lemler.
{

	SetGameModeText("Blank Script");
	AddPlayerClass(0, 1958.3783, 1343.1572, 15.3746, 269.1425, 0, 0, 0, 0, 0, 0);
	return 1;
}

public OnGameModeExit() // Mod kapan�nca olacak i�lemler.
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid) // Skin se�me ekran�nda olacak i�lemler.
{
	SetPlayerPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraLookAt(playerid, 1958.3783, 1343.1572, 15.3746);
	return 1;
}
public OnPlayerConnect(playerid) // Oyuncu oyuna girdi�inde olmas�n� istedi�iniz kodlar.
{

	return 1;
}

public OnPlayerDisconnect(playerid, reason) // Oyuncu oyundan ��kt���nda olmas�n� istedi�iniz kodlar.
{
	return 1;
}

public OnPlayerSpawn(playerid) // Oyuncunun spawn oldu�u s�rada olmas�n� istedi�iniz kodlar.
{
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason) // Oyuncu �ld���nde olmas�n� istedi�iniz kodlar.
{
	return 1;
}

public OnVehicleSpawn(vehicleid) //  "new" kodu ile tan�tt���m�z arac�n spawn oldu�unda olmas�n� istedi�iniz kodlar� yazaca��n�z publictir.
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid) // Bir araba patlad���nda olmas�n� istedi�iniz kodlar� yazaca��n�z publictir.
{
	return 1;
}

public OnPlayerText(playerid, text[]) // Oyuncunun mesajlar�n�n y�neldi�i publictir.
{
	return 1;
}


public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger) // Oyuncu arabaya binerken olmas�n� istedi�iniz kodlar� koyaca��n�z publictir.
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid) // Oyuncu arabadan inerken olmas�n� istedi�iniz kodlar� koyaca��n�z publictir.
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate) // Araca binildi�inde olacaklar.
{
	return 1;
}

public OnPlayerEnterCheckpoint(playerid) // Oyuncunun checkpointe geldi�inde olmas�n� istedi�iniz kodlar� koyaca��n�z publictir.
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid) // Oyuncunun checkpointten ��kt�ktan sonra olmas�n� istedi�iniz kodlar� koyaca��n�z publictir.
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid) // Oyuncunun yar�� checkpointinden ��kt�ktan sonra olmas�n� istedi�iniz kodlar� koyaca��n�z publictir.
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid) //  Oyuncunun yar�� checkpointinden ��kt�ktan sonra olmas�n� istedi�iniz kodlar�
{
	return 1;
}

public OnRconCommand(cmd[]) // RCON Giri�i yap�ld���nda olacaklar.
{
	return 1;
}

public OnPlayerRequestSpawn(playerid) // Karakter se�me ekran�nda olacaklar.Genellikle freeroam sunucularda kullan�l�r.
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

public OnPlayerPickUpPickup(playerid, pickupid) // Oyuncunun pickuplar� ald��� s�rada olmas�n� istedi�iniz kodlar� koyaca��n�z publictir.
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

public OnPlayerUpdate(playerid) // Mod g�ncelledi�inde olacaklar.
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

public OnPlayerClickPlayer(playerid, clickedplayerid, source) // Oyuncu TAB'tan t�klad���nda olacaklar.
{
	return 1;
}
