AddCSLuaFile()
DEFINE_BASECLASS("weapon_jbbase")

SWEP.PrintName					= "Hands"
SWEP.Slot						= 3
SWEP.SlotPos					= 1

SWEP.HoldType					= "normal"
SWEP.ViewModel					= "models/weapons/c_arms_citizen.mdl"
SWEP.WorldModel					= ""
SWEP.UseHands					= true
SWEP.AllowDrop					= false
SWEP.ViewModelFlip				= true
SWEP.SwayScale					= 0
SWEP.BobScale					= 0
SWEP.ViewModelFOV				= 70

SWEP.Primary.Sound				= Sound("Weapon_Crowbar.Single")
SWEP.Primary.Damage				= 15
SWEP.Primary.NumShots			= 0
SWEP.Primary.Recoil				= 0
SWEP.Primary.Cone				= 0
SWEP.Primary.Delay				= 1
SWEP.Primary.ClipSize			= 0
SWEP.Primary.DefaultClip		= 0
SWEP.Primary.Automatic			= true
SWEP.Primary.Ammo				= "none"

SWEP.Secondary.Damage			= 0
SWEP.Secondary.NumShots			= 0
SWEP.Secondary.Recoil			= 0
SWEP.Secondary.Cone				= 0
SWEP.Secondary.ClipSize			= 0
SWEP.Secondary.DefaultClip		= 0
SWEP.Secondary.Automatic		= true
SWEP.Primary.Ammo				= "none"

function SWEP:PrimaryAttack()
	if self:GetHoldType() != "fist" then
		self:SetHoldType("fist")
	end
	
	if self:GetHoldType() != "normal" then
		self:SetHoldType("normal")
	end
	
	return false
end

function SWEP:SecondaryAttack()
	return false
end

function SWEP:Reload()
	return false
end

function SWEP:OnDrop()
	self:Remove()
end
