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

faceplate_w = 98;
faceplate_h = 30;
faceplate_r = 2;

module faceplate()
{
  rounded_rect(faceplate_w, faceplate_h, faceplate_r);
}


pcb_thickness = 1.6;
pcb_bottom = 5.3;
pcb_top = pcb_bottom + pcb_thickness;

// Measured from keyboard
midi_diameter = 17.5;
midi_center_y = 10;
midi_y = pcb_top + midi_center_y;

echo(str("PCB top: ", pcb_top));
echo(str("MIDI diameter: ", midi_diameter));
