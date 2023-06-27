# Changelog

## [Unreleased]

### Changed

- Expand board out 1.8mm on the top and bottom so ports are closer to the edge of the enclosure.
- Switch LEDs from wire mount to a JST XH connector [Issue [#8]].
- Separate USB-C shield to Earth and connected to Ground by a 4n7F capacitor.
- Switch to SMD 0603 package for the LED [Issue [#7]].
- Switch to SMD packge for the H11L1 optocoupler [Issue [#2]].
- Switch to SOD-123 package for the diode [Issue [#6]].
- Update silkscreen text to new built-in KiCad 7.0 custom fonts.
- Change FTDI +5V trace to a normal power trace, instead of copper pour [Issue [#10]].

### Added

- Add PCB faceplates for MIDI IN and MIDI OUT sides of the enclosure.

[#2]: https://github.com/ddribin/piano-lights-hw/issues/2
[#6]: https://github.com/ddribin/piano-lights-hw/issues/6
[#7]: https://github.com/ddribin/piano-lights-hw/issues/7
[#8]: https://github.com/ddribin/piano-lights-hw/issues/8
[#10]: https://github.com/ddribin/piano-lights-hw/issues/10

## [2.0.0] - 2023-02-22

### Changed

- Redesign PCB to fit into a smaller [Hammond 1593VBK enclosure][enclosure].
- Switch to USB-C for power.
- Switch to SMD TQFP package for the ATmega328.
- Switch to SMD 0803 package for the LED.
- Switch to 0603 packages for the SMD resistors and capacitors.

### Added

- Add a MIDI coupler with straight through wiring.

[enclosure]: https://www.hammfg.com/electronics/small-case/plastic/1593

## [1.0.1] - 2022-08-11

### Added

- Silkscreen text for LED Strip signals.
- Silkscreen text for USB Power.
- Silkscreen around AVR ISP-6 header.
- Silkscreen for component values.
- Various test points.

### Fixed

- Fix reversed inputs to H11L1 optocoupler (Issue [#3]).
- Add a 220R pull-up to the H11L1 optocoupler output (Issue [#4]).
- Switch footprint of MIDI IN protection diode, `D2`, from `0805` to `MiniMELF` (Issue [#1]).
- Allow solder mask between USB connector pads by updating solder mask "minimum web width" constraint to 0.05mm. (Issue [#5]).

[#1]: https://github.com/ddribin/piano-lights-hw/issues/1
[#3]: https://github.com/ddribin/piano-lights-hw/issues/3
[#4]: https://github.com/ddribin/piano-lights-hw/issues/4
[#5]: https://github.com/ddribin/piano-lights-hw/issues/5

## [1.0.0] - 2022-06-30

_Initial Release._


[unreleased]: https://github.com/ddribin/piano-lights-hw/compare/v2.0.0...HEAD
[2.0.0]: https://github.com/ddribin/piano-lights-hw/releases/tag/v2.0.0
[1.0.1]: https://github.com/ddribin/piano-lights-hw/releases/tag/v1.0.1
[1.0.0]: https://github.com/ddribin/piano-lights-hw/releases/tag/v1.0.0
