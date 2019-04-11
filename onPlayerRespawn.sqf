_plr = _this select 0;

if ((_plr distance2D selectRandomRespawn) < 5) then {
    _plr setPos (position (selectRandom randomRespawnList));
};