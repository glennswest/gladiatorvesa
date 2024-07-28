


module mount_base()
{
    cube([120,120,8]);
    translate([0,16,8]) cube([120,5.11,10.9]);
    translate([0,16,8+6]) cube([120,14.3,5.11]);
    translate([0,16+74,8]) cube([120,5.11,10.9]);
    translate([0,16+74,8+6]) cube([120,14.3,5.11]);
    

}

module vesa_mount()
{
    difference()
    {
        mount_base();
        translate([10,10,-.1]) cylinder(r=6/2,h=10,$fn=128);
        translate([10,10,6.51]) cylinder(r=9/2,h=1.5,$fn=128);
        
        translate([110,10,-.1]) cylinder(r=6/2,h=10,$fn=128);
        translate([110,10,6.51]) cylinder(r=9/2,h=1.5,$fn=128);
        
        translate([10,110,-.1]) cylinder(r=6/2,h=10,$fn=128);
        translate([10,110,6.51]) cylinder(r=9/2,h=1.5,$fn=128);
        
        translate([110,110,-.1]) cylinder(r=6/2,h=10,$fn=128);
        translate([110,110,6.51]) cylinder(r=9/2,h=1.5,$fn=128);
    
    }


}


rotate([0,-90,0]) vesa_mount();