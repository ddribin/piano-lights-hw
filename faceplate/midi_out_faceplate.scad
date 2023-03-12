include <faceplate.scad>

$fn= $preview ? 32 : 64;

module midi_out_faceplate()
{
  midi_coupler_x = faceplate_w - 27.5;
  midi_out_x = faceplate_w - 48.2;
  
  usb_w = 8.94;
  usb_h = 3.16;
  usb_x = faceplate_w - 77.32;

  difference()
  {
    faceplate();
    
    translate([midi_coupler_x, midi_y, 0])
      circle(d = midi_diameter);
    
    translate([midi_out_x, midi_y, 0])
      circle(d = midi_diameter);

    translate([usb_x, pcb_top, 0])
      offset(delta = 0.1)
      square([usb_w, usb_h]);
  }
}

midi_out_faceplate();

text_top = faceplate_h - pcb_top;
text_bottom = faceplate_h - 1.3;
text_h = abs(text_bottom - text_top);
text_center = text_bottom - text_h/2;
echo(str("Text top: ", text_top));
echo(str("Text bottom: ", text_bottom));
echo(str("Text center: ", text_center));