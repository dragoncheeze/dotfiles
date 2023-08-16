### Zram
``` sudo nvim /etc/systemd/zram-generator.conf ```

add the follow:

``` 
[zram0]
zram-size = min(ram /2)
compression-algorithm = zstd
```
