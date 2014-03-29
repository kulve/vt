module it_kehikko_pitkat() {
  translate([-1850,0,0]){
    cube([55,4100,145]);
  }
  translate([0,0,0]){
    cube([55,4100,145]);
  }
  translate([1850,0,0]){
    cube([55,4100,145]);
 }
}

module it_kehikko_lyhyet() {
  for (y = [0,500,1000,1500,2000,2500,3000,3500,4045]) {
    translate([-1795,y,0]){
      cube([1795,55,145]);
    }
    translate([55,y,0]){
      cube([1795,55,145]);
    }
  }
}

module it_kehikko_harkot() {
  // keskiharkot
  translate([-1950,1900,-250]) {
    cube([250,250,250]);
  }
  translate([-100,1900,-250]) {
    cube([250,250,250]);
  }
  translate([1750,1900,-250]) {
    cube([250,250,250]);
  }

  // paatyharkot, yla
  translate([-1950,3900,-250]) {
    cube([250,250,250]);
  }
  translate([-100,3900,-250]) {
    cube([250,250,250]);
  }
  translate([1750,3900,-250]) {
    cube([250,250,250]);
  }

  // paatyharkot, ala
  translate([-1950,3900,-500]) {
    cube([250,250,250]);
  }
  translate([-100,3900,-500]) {
    cube([250,250,250]);
  }
  translate([1750,3900,-500]) {
    cube([250,250,250]);
  }
}

module pt_kehikko_pitkat() {
  translate([-1850,-55,0]){
    cube([3755,55,145]);
  }
  translate([-1850,-2055,0]){
    cube([3755,55,145]);
  }
}

module pt_kehikko_lyhyet() {
  for (x = [-1850, -1350, -850, -350, 150, 650, 1150, 1850]) {
    translate([x,-2000,0]){
      cube([55,1945,145]);
    }
  }
}

it_kehikko_pitkat();
color ("red") {
  it_kehikko_lyhyet();
}
it_kehikko_harkot();
pt_kehikko_pitkat();
color ("red") {
  pt_kehikko_lyhyet();
}