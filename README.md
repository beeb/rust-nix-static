# Problem when statically linking glibc in Rust

Run `nix build` and get the following error:

```
error: builder for '/nix/store/vn3asbg6p1m82v74zwria69vm2l0gzg9-test_static-0.1.0.drv' failed with exit code 101;
       last 10 log lines:
       >           /nix/store/74y3751gsixaz9797ib0hp7c658sp1y5-binutils-2.40/bin/ld: cannot find -lrt: No such file or directory
       >           /nix/store/74y3751gsixaz9797ib0hp7c658sp1y5-binutils-2.40/bin/ld: cannot find -lpthread: No such file or directory
       >           /nix/store/74y3751gsixaz9797ib0hp7c658sp1y5-binutils-2.40/bin/ld: cannot find -lm: No such file or directory
       >           /nix/store/74y3751gsixaz9797ib0hp7c658sp1y5-binutils-2.40/bin/ld: cannot find -ldl: No such file or directory
       >           /nix/store/74y3751gsixaz9797ib0hp7c658sp1y5-binutils-2.40/bin/ld: cannot find -lc: No such file or directory
       >           /nix/store/74y3751gsixaz9797ib0hp7c658sp1y5-binutils-2.40/bin/ld: cannot find -lc: No such file or directory
       >           collect2: error: ld returned 1 exit status
       >
       >
       > error: could not compile `rust-nix-static` (bin "rust-nix-static") due to previous error
```
