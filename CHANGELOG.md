# Changelog

Changelog for Piano Lights Hardware.

## [1.0.1] - 2022-08-08

### Added

- Silkscreen text for LED Strip signals.
- Silkscreen text for USB Power.
- Silkscreen around AVR ISP-6 header.
- Some test points.

### Fixed

- Fix reversed inputs to H11L1 optocoupler ([Issue #3]).
- Add a 220R pull-up to the H11L1 optocoupler output ([Issue #4]).
- Switch footprint of MIDI IN protection diode, `D2`, from `0805` to `MiniMELF` ([[Issue #1]).
- Allow solder mask between USB connector pads by updating solder mask "minimum web width" constraint to 0.05mm. ([Issue #5]).

[Issue #1]: https://github.com/ddribin/piano-lights-hw/issues/1
[Issue #3]: https://github.com/ddribin/piano-lights-hw/issues/3
[Issue #4]: https://github.com/ddribin/piano-lights-hw/issues/4
[Issue #5]: https://github.com/ddribin/piano-lights-hw/issues/5

## [1.0.0] - 2022-06-30

### Added

- Initial Release


[unreleased]: https://github.com/ddribin/piano-lights-hw/compare/v1.0.1...HEAD
[1.0.1]: https://github.com/ddribin/piano-lights-hw/releases/tag/v1.0.0...v1.0.1
[1.0.0]: https://github.com/ddribin/piano-lights-hw/releases/tag/v1.0.0
