# Bergschrift Balmhorn

**Bergschrift Balmhorn** is derived from
[Baloo](https://ektype.in/font-family/baloo.html), a free font
designed by the [Ek Type collective](https://ektype.in/). For the
Bergschrift collection, we’ve converted Ek Type’s [design
sources](https://github.com/EkType/Baloo) from a proprietary data
format to [UFO](http://unifiedfontobject.org/); we’ve simplified and
fully automated the build process; and we’ve combined the
script-specific shards into a single package (TODO: actually do this;
right now it’s only Latin and Devanagari).  Because we use Google’s
[fontmake](https://github.com/googlei18n/fontmake) for building the
binary font file, the disk size of Balmhorn is only about 30% of Baloo
(TODO: give numbers after merging all scripts; for Latin plus Devanagari,
Balmhorn is 181K; compare to 615K for Baloo).


## Line metrics

Currently, OpenType assumes the same line metrics for the entire
font. This does not work well for multi-script fonts, so we’re
proposing an amendment to OpenType where the `BASE` table (which
supports script- and language-specific baselines) would contain
four-letter tags from `MVAR`. Existing implementations will simply
ignore the tags, but (if the proposal gets implemented) future
implementations would be able chose correct metrics for each
language/script. The Balmhorn font is used as example for discussing
this proposal among OpenType implementors, and for experimenting
with implementations.


## Building

You can simply download the latest [binary
release](https://github.com/bergschrift/balmhorn/releases).
To build
the font yourself from source, install
[Docker](https://www.docker.com/) on your computer, then type `make`.


## Contributing

Your contributions would be very welcome! See the
[issue list](http://github.com/bergschrift/balmhorn/issues)
for ideas where to start, or just send a GitHub pull request.


## License

Copyight by the [contributors](CONTRIBUTORS.md),
licensed under [OFL-1.1](https://spdx.org/licenses/OFL-1.1.html).
