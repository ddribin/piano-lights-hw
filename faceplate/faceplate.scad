$fn= $preview ? 32 : 64;

module rounded_rect(width, height, corner_radius)
{
    r = corner_radius;
    inset = r;
    
    w = width - 2*inset;
    h = height - 2*inset;

    translate([inset, inset, 0])
    hull()
    {
        circle(r, $fn=50);
        translate([w, 0, 0]) circle(r);
        translate([0, h, 0]) circle(r);
        translate([w, h, 0]) circle(r);
    }
}

module faceplate()
{
    rounded_rect(98, 30, 2);
}

faceplate();
