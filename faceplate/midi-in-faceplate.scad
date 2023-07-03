include <faceplate.scad>

$fn= $preview ? 32 : 64;

module midi_in_faceplate()
{
  midi_coupler_x = 27.5;
  midi_in_x = 48.2;

  // Dimenions from JST XH S4B-XH-A datasheet
  jst_w = 12.4;
  jst_h = 6.1;

  // The PCB X,Y is to center of Pin 1
  // The edge is 2.45mm to the left of Pin 1
  jst_x_pcb = 69.05;
  jst_x_pcb_offset = -2.45;
  jst_x = jst_x_pcb + jst_x_pcb_offset;
  echo(str("jst_x: ", jst_x));

  difference()
  {
    faceplate();
    
    translate([midi_coupler_x, midi_y, 0])
      circle(d = midi_diameter);
    
    translate([midi_in_x, midi_y, 0])
      circle(d = midi_diameter);
    
    translate([jst_x, pcb_top, 0])
      offset(delta = 0.2)
      square([jst_w, jst_h]);
  }
}

midi_in_faceplate();