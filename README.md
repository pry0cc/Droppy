# Droppy
---
## DISCLAIMER:
This is a dropper modified from https://github.com/0x00pf/0x00sec_code/blob/master/sdropper/poc-alt.c, it is made originally by the wonderful 0x00pico/0x00pf/PicoFlamingo!

All credit of dropper dev goes to him. I did not write this dropper, I have simply made a wrapper around it for easy deployment and real-world use.

Usage:

Modify the generate.sh to include your filename.

Run:
```
./generate.sh yourip
```

Example:

```
./generate.sh 192.168.1.100 
```

You must ensure that your external port 8080 is open for this to work across networks.
