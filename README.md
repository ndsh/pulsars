# Pulsars
possibly a new mechanic installation

## Organisation
    .
    ├── Code
    │   ├── PulsarClass
    │   │   ├── data
    │   │   │   ├── pulsars.json
    │   │   │   ├── timings.json
    │   │   ├── ClassPulsar.pde
    │   │   ├── PulsarClass.pde
    ├── A Map of Known Pulsars.webloc
    ├── Voyager_Golden_Record_Cover_Explanation.svg
    ├── mylib.js
    ├── plsrs.json
    ├── timings.json
    └── README.md
## A Map of Known Pulsars
- https://ishivvers.github.io/maps/pulsars.html

example on how to read the json
```json
{
    "bin": 0, // no idea
    "distance": 521.92, // distance in light yars
    "eqcoords": [
      284.14754, // right ascension
      -37.90222 // declination
    ],
    "name": "J1856-3754", // name of pulsar
    "period": 7.055203, // period is the pulsating rate in seconds, better would be milliseconds
    "flux": 2.8194, // fading? size?
    "coords": [
      358.61,
      -17.21
    ],
    "year": "2007"
  },
```