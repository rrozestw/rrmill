
profil_H = 40;
profil_W = 60;

profilX_LEN = 500;
profilY_LEN = 500;
profilZ_LEN = 500;
profilX_OFFSET = 250;
profilY_OFFSET = 250;
profilZ_OFFSET = -100;

module profilY() {
    color("gray") cube([profil_W, profilY_LEN, profil_H], center = true);
}

module profilX() {
    color("gray") cube([profilX_LEN, profil_W, profil_H], center = true);
}

module profilZ() {
    color("gray") cube([profil_H, profil_W, profilX_LEN], center = true);
}

# translate([-profilX_OFFSET + profil_W/2, 0, 0]) profilY();
# translate([ profilX_OFFSET - profil_W/2, 0, 0]) profilY();


# translate([0, -profilY_OFFSET + profil_W/2,  -profil_H]) profilX();
# translate([0,  profilY_OFFSET - profil_W/2, -profil_H]) profilX();


// SLUPKI:
# translate([-profilX_OFFSET - profil_H/2, profilZ_OFFSET, profilZ_LEN/2 - profil_H/2 ]) profilZ();

# translate([ profilX_OFFSET + profil_H/2, profilZ_OFFSET, profilZ_LEN/2 - profil_H/2 ]) profilZ();

// RAMA GORNA
translate([0, profilZ_OFFSET-((profil_H+profil_W)/2)/4, profilZ_LEN-profil_H-profil_H/2]) rotate([90, 0, 0]) profilX();
