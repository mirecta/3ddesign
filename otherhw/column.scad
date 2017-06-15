
lenght=10;
entrance=3.2;
entrance_lenght=3;
hole=2.9;
$fn=30;
key=5.5;
key_circle=key*2/sqrt(3);




module hole(){
    
    cylinder(r1=entrance/2, r2=hole/2, h=entrance_lenght); 
    translate([0,0,entrance_lenght])cylinder(r=hole/2, h=lenght - 2*entrance_lenght);
    translate([0,0,lenght - entrance_lenght])cylinder(r2=entrance/2, r1=hole/2, h=entrance_lenght);
}

module base(){
    cylinder(r=key_circle/2,h=lenght,$fn=6);
}
difference(){
base();
hole();
}