# tauri-nix-mac-repro

Reproduction for a build problem on macOS when trying to build a Tauri app with `cargo` installed via Nix. **The problem does not appear when installing Rust via [rustup](https://www.rust-lang.org/learn/get-started) instead of Nix.**

It currently seems like [this issue](https://github.com/h4llow3En/mac-notification-sys/issues/28) is the problem.

![](https://cleanshot-cloud-fra.s3.eu-central-1.amazonaws.com/media/350/Ib2GxjwqCReOZRcGI1vtwfxKxzKg48Ru0SKoKSER.jpeg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEAsaDGV1LWNlbnRyYWwtMSJHMEUCIQDoyy93ict3%2F993fJDYYayH6f1V6YkVVxS0qk%2FuzhOIrgIgXcVVORurEOwO7MlUpFi6nnnrp69K%2FTl7dhWfPX6WVUgqoQIIFBAAGgw5MTk1MTQ0OTE2NzQiDAarfaGPBgYKHuGZyir%2BAbBqJwvRwLJ2BcbSjM4QF8Mx2nM3SRwHRBoh1muT%2BiuNGm15pRZvvDVFBRafmac8rz%2BoCC5Y5S42yHSYHyUE1Rda55qKsS9CwK822V1c3L6%2Bx1M%2FC%2BqVY1J8uAcLLMpUt7WOzEkMxoFZ4%2FbM48hCEBnABuLGpCf1nonxinRka9xlpmbMpOHXSsbCXO2jjouy4WbyULN9N%2Ff0zwriTaDUR2B61K9He6f3o0cqgId2aEuEaNcaodQeq9QWqVS7xTCIHKgIL7xk6rRZ5UQZ6jC0ppaMdY4yj0AiDk48MMUUqBRZsduk79P9Bd3Xrj3EhqJCZAQCpp9Gfr5Q%2FJRSKtz6MKO3u44GOpoBGdGghhV33DTckR5DQnYZZMJ0KbXi5LLyxnX3Db3Duv3eUAKovSwHTum4QlLN2DjNoTDtSznpT1i7N3gBRi0kOAzP8e1yTZ0lo9ErAOjk2pOunR8HHumtCtd9qugFKanGRgBB6blcfoJZb0UY7B75Uht%2FpMdV6KKDg5rWzSnmZtvRA4SQhlSiLWp4AuXJsIOCchG6yj1yHpsXWQ%3D%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=ASIA5MF2VVMNEHR2NNNG%2F20211231%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20211231T111429Z&X-Amz-SignedHeaders=host&X-Amz-Expires=300&X-Amz-Signature=41fc5498c455d49e64da9f8bf5a545ceb245bbdc310b1f8252b46243258f833e)

## Error logs

```
 impure  ~/C/p/2/tauri-nix-mac-repro  yarn tauri dev                                   Fri Dec 31 12:08:49 2021
yarn run v1.22.17
warning package.json: No license field
$ tauri dev
Downloading Rust CLI...
Download Complete
 app:spawn Running "/Users/schickling/Code/playground/2021-dec/tauri-nix-mac-repro/node_modules/@tauri-apps/cli/bin/tauri-cli tauri dev" +0ms

  Downloaded notify-rust v4.5.5
  Downloaded os_info v3.0.9
  Downloaded open v2.0.2
  Downloaded 3 crates (79.7 KB) in 0.29s
   Compiling libc v0.2.112
info: syncing channel updates for 'stable-aarch64-apple-darwin'
info: latest update on 2021-12-02, rust version 1.57.0 (f1edd0429 2021-11-29)
info: downloading component 'rust-src'
info: installing component 'rust-src'
   Compiling pathdiff v0.2.1
   Compiling minisign-verify v0.1.8
   Compiling base64 v0.13.0
   Compiling num-traits v0.2.14
   Compiling num-integer v0.1.44
   Compiling tauri v1.0.0-beta.8
   Compiling app v0.1.0 (/Users/schickling/Code/playground/2021-dec/tauri-nix-mac-repro/src-tauri)
   Compiling os_info v3.0.9
   Compiling open v2.0.2
   Compiling jobserver v0.1.24
   Compiling getrandom v0.1.16
   Compiling getrandom v0.2.3
   Compiling malloc_buf v0.0.6
   Compiling core-foundation v0.9.2
   Compiling parking_lot_core v0.8.5
   Compiling num_cpus v1.13.1
   Compiling core-foundation v0.7.0
   Compiling raw-window-handle v0.3.4
   Compiling time v0.1.43
   Compiling security-framework-sys v2.4.2
   Compiling dirs v1.0.5
   Compiling flate2 v1.0.22
   Compiling xattr v0.2.2
   Compiling dirs-sys-next v0.1.2
   Compiling filetime v0.2.15
   Compiling shared_child v0.3.5
   Compiling os_pipe v0.9.2
   Compiling rayon-core v1.9.1
   Compiling tokio v1.15.0
   Compiling objc v0.2.7
   Compiling rand_core v0.5.1
   Compiling cc v1.0.72
   Compiling rand_core v0.6.3
   Compiling uuid v0.8.2
   Compiling parking_lot v0.11.2
   Compiling core-graphics-types v0.1.1
   Compiling core-graphics v0.19.2
   Compiling security-framework v2.4.2
   Compiling dirs-next v2.0.0
   Compiling chrono v0.4.19
   Compiling tar v0.4.38
   Compiling rand_chacha v0.2.2
   Compiling rand_pcg v0.2.1
   Compiling objc_id v0.1.1
   Compiling rand_chacha v0.3.1
   Compiling string_cache v0.8.2
   Compiling cfb v0.4.0
   Compiling cocoa-foundation v0.1.0
   Compiling core-graphics v0.22.3
   Compiling rayon v1.5.1
   Compiling core-video-sys v0.1.4
   Compiling rand v0.7.3
   Compiling objc-foundation v0.1.1
   Compiling rand v0.8.4
   Compiling infer v0.4.0
   Compiling zstd-sys v1.6.2+zstd.1.5.1
   Compiling bzip2-sys v0.1.11+1.0.8
   Compiling blake3 v1.2.0
   Compiling tao v0.5.2
   Compiling mac-notification-sys v0.3.0
   Compiling cocoa v0.24.0
   Compiling rfd v0.4.4
   Compiling phf_generator v0.8.0
   Compiling phf_generator v0.10.0
   Compiling tempfile v3.2.0
   Compiling phf_codegen v0.8.0
   Compiling string_cache_codegen v0.5.1
   Compiling native-tls v0.2.8
   Compiling phf_macros v0.10.0
   Compiling phf_macros v0.8.0
   Compiling selectors v0.22.0
   Compiling attohttpc v0.17.0
   Compiling markup5ever v0.10.1
The following warnings were emitted during compilation:

warning: /nix/store/masby0h78dcikl96crs39025i4hmqdm6-libobjc-11.0.0/include/objc/module.modulemap:1:8: error: redefinition of module 'ObjectiveC'
warning: module ObjectiveC [system] [extern_c] {
warning:        ^
warning: /nix/store/zr8yl45qwa0cpr4cgwkffmm0436bmlh9-libobjc-11.0.0/include/objc/module.modulemap:1:8: note: previously defined here
warning: module ObjectiveC [system] [extern_c] {
warning:        ^
warning: /nix/store/ypqm9riz1gr599jdv9sh45g1wfknnqsj-libSystem-11.0.0/include/xpc/module.modulemap:1:8: error: redefinition of module 'XPC'
warning: module XPC [system] [extern_c] {
warning:        ^
warning: /nix/store/1gfmz1gs7an8bays17j474g3nvwshmjy-apple-lib-xpc/include/xpc/module.modulemap:1:8: note: previously defined here
warning: module XPC [system] [extern_c] {
warning:        ^
warning: While building module 'Foundation' imported from objc/notify.h:1:
warning: While building module 'CoreFoundation' imported from /nix/store/81sj6qbpvy9i5jzyn427xjyaf7348xn5-apple-framework-Foundation-11.0.0/Library/Frameworks/Foundation.framework/Headers/Foundation.h:6:
warning: In file included from <module-includes>:1:
warning: In file included from /nix/store/xr16widgh52lbqbsi9kdswmdc21mbg3s-apple-framework-CoreFoundation-11.0.0/Library/Frameworks/CoreFoundation.framework/Headers/CoreFoundation.h:60:
warning: In file included from /nix/store/xr16widgh52lbqbsi9kdswmdc21mbg3s-apple-framework-CoreFoundation-11.0.0/Library/Frameworks/CoreFoundation.framework/Headers/CFPropertyList.h:17:
warning: /nix/store/xr16widgh52lbqbsi9kdswmdc21mbg3s-apple-framework-CoreFoundation-11.0.0/Library/Frameworks/CoreFoundation.framework/Headers/CFStream.h:20:10: fatal error: could not build module 'Dispatch'
warning: #include <dispatch/dispatch.h>
warning:  ~~~~~~~~^
warning: While building module 'Foundation' imported from objc/notify.h:1:
warning: In file included from <module-includes>:1:
warning: /nix/store/81sj6qbpvy9i5jzyn427xjyaf7348xn5-apple-framework-Foundation-11.0.0/Library/Frameworks/Foundation.framework/Headers/Foundation.h:6:10: fatal error: could not build module 'CoreFoundation'
warning: #include <CoreFoundation/CoreFoundation.h>
warning:  ~~~~~~~~^
warning: While building module 'Foundation' imported from objc/notify.h:1:
warning: While building module 'CoreGraphics' imported from /nix/store/81sj6qbpvy9i5jzyn427xjyaf7348xn5-apple-framework-Foundation-11.0.0/Library/Frameworks/Foundation.framework/Headers/NSGeometry.h:9:
warning: In file included from <module-includes>:1:
warning: In file included from /nix/store/j0n5nx9jwmdir8hs7nz3x35g6jx9r84f-apple-framework-CoreGraphics-11.0.0/Library/Frameworks/CoreGraphics.framework/Headers/CoreGraphics.h:8:
warning: /nix/store/j0n5nx9jwmdir8hs7nz3x35g6jx9r84f-apple-framework-CoreGraphics-11.0.0/Library/Frameworks/CoreGraphics.framework/Headers/CGBase.h:12:10: fatal error: could not build module 'CoreFoundation'
warning: #include <CoreFoundation/CFBase.h>
warning:  ~~~~~~~~^
warning: While building module 'Foundation' imported from objc/notify.h:1:
warning: While building module 'CoreGraphics' imported from /nix/store/81sj6qbpvy9i5jzyn427xjyaf7348xn5-apple-framework-Foundation-11.0.0/Library/Frameworks/Foundation.framework/Headers/NSGeometry.h:9:
warning: While building module 'IOKit' imported from /nix/store/j0n5nx9jwmdir8hs7nz3x35g6jx9r84f-apple-framework-CoreGraphics-11.0.0/Library/Frameworks/CoreGraphics.framework/Headers/CGDisplayConfiguration.h:12:
warning: In file included from <module-includes>:4:
warning: /nix/store/c5cj0i4iz19rm58hgmly4v8a9g7binhh-apple-framework-IOKit-11.0.0/Library/Frameworks/IOKit.framework/Headers/IOCFBundle.h:26:10: fatal error: could not build module 'CoreFoundation'
warning: #include <CoreFoundation/CoreFoundation.h>
warning:  ~~~~~~~~^
warning: While building module 'Foundation' imported from objc/notify.h:1:
warning: While building module 'Security' imported from /nix/store/81sj6qbpvy9i5jzyn427xjyaf7348xn5-apple-framework-Foundation-11.0.0/Library/Frameworks/Foundation.framework/Headers/NSURLCredential.h:9:
warning: In file included from <module-includes>:1:
warning: In file included from /nix/store/3nxglj39s872q6wrnkxdf0vd1maq41ya-apple-framework-Security-11.0.0/Library/Frameworks/Security.framework/Headers/Security.h:27:
warning: /nix/store/3nxglj39s872q6wrnkxdf0vd1maq41ya-apple-framework-Security-11.0.0/Library/Frameworks/Security.framework/Headers/SecBase.h:28:10: fatal error: could not build module 'CoreFoundation'
warning: #include <CoreFoundation/CFBase.h>
warning:  ~~~~~~~~^
warning: While building module 'Foundation' imported from objc/notify.h:1:
warning: While building module 'Security' imported from /nix/store/81sj6qbpvy9i5jzyn427xjyaf7348xn5-apple-framework-Foundation-11.0.0/Library/Frameworks/Foundation.framework/Headers/NSURLCredential.h:9:
warning: While building module 'XPC' imported from /nix/store/3nxglj39s872q6wrnkxdf0vd1maq41ya-apple-framework-Security-11.0.0/Library/Frameworks/Security.framework/Headers/SecCode.h:35:
warning: /nix/store/masby0h78dcikl96crs39025i4hmqdm6-libobjc-11.0.0/include/objc/module.modulemap:1:8: error: redefinition of module 'ObjectiveC'
warning: module ObjectiveC [system] [extern_c] {
warning:        ^
warning: /nix/store/zr8yl45qwa0cpr4cgwkffmm0436bmlh9-libobjc-11.0.0/include/objc/module.modulemap:1:8: note: previously defined here
warning: module ObjectiveC [system] [extern_c] {
warning:        ^
warning: While building module 'Foundation' imported from objc/notify.h:1:
warning: While building module 'Security' imported from /nix/store/81sj6qbpvy9i5jzyn427xjyaf7348xn5-apple-framework-Foundation-11.0.0/Library/Frameworks/Foundation.framework/Headers/NSURLCredential.h:9:
warning: While building module 'XPC' imported from /nix/store/3nxglj39s872q6wrnkxdf0vd1maq41ya-apple-framework-Security-11.0.0/Library/Frameworks/Security.framework/Headers/SecCode.h:35:
warning: In file included from <module-includes>:1:
warning: /nix/store/1gfmz1gs7an8bays17j474g3nvwshmjy-apple-lib-xpc/include/xpc/xpc.h:7:10: fatal error: could not build module 'Dispatch'
warning: #include <dispatch/dispatch.h>
warning:  ~~~~~~~~^
warning: While building module 'Foundation' imported from objc/notify.h:1:
warning: While building module 'CoreServices' imported from /nix/store/81sj6qbpvy9i5jzyn427xjyaf7348xn5-apple-framework-Foundation-11.0.0/Library/Frameworks/Foundation.framework/Headers/NSURLError.h:15:
warning: In file included from <module-includes>:1:
warning: /nix/store/bvvlpg5syhl07sgy1nn1r936gvwmpc6v-apple-framework-CoreServices-11.0.0/Library/Frameworks/CoreServices.framework/Headers/CoreServices.h:19:10: fatal error: could not build module 'CoreFoundation'
warning: #include <CoreFoundation/CoreFoundation.h>
warning:  ~~~~~~~~^
warning: While building module 'Foundation' imported from objc/notify.h:1:
warning: While building module 'CoreServices' imported from /nix/store/81sj6qbpvy9i5jzyn427xjyaf7348xn5-apple-framework-Foundation-11.0.0/Library/Frameworks/Foundation.framework/Headers/NSURLError.h:15:
warning: While building module 'DiskArbitration' imported from /nix/store/bvvlpg5syhl07sgy1nn1r936gvwmpc6v-apple-framework-CoreServices-11.0.0/Library/Frameworks/CoreServices.framework/Frameworks/CarbonCore.framework/Headers/Files.h:56:
warning: In file included from <module-includes>:1:
warning: /nix/store/0lhyz07dl31yj4yx617wnf27cba1knwk-apple-framework-DiskArbitration-11.0.0/Library/Frameworks/DiskArbitration.framework/Headers/DiskArbitration.h:27:10: fatal error: could not build module 'CoreFoundation'
warning: #include <CoreFoundation/CoreFoundation.h>
warning:  ~~~~~~~~^
warning: While building module 'Foundation' imported from objc/notify.h:1:
warning: While building module 'CoreServices' imported from /nix/store/81sj6qbpvy9i5jzyn427xjyaf7348xn5-apple-framework-Foundation-11.0.0/Library/Frameworks/Foundation.framework/Headers/NSURLError.h:15:
warning: While building module 'CFNetwork' imported from /nix/store/bvvlpg5syhl07sgy1nn1r936gvwmpc6v-apple-framework-CoreServices-11.0.0/Library/Frameworks/CoreServices.framework/Headers/CoreServices.h:31:
warning: In file included from <module-includes>:1:
warning: /nix/store/10xm12hqc1k3n495nz0xs1jl5p1qs5an-apple-framework-CFNetwork-11.0.0/Library/Frameworks/CFNetwork.framework/Headers/CFNetwork.h:18:10: fatal error: could not build module 'CoreFoundation'
warning: #include <CoreFoundation/CoreFoundation.h>
warning:  ~~~~~~~~^
warning: While building module 'Foundation' imported from objc/notify.h:1:
warning: While building module 'ApplicationServices' imported from /nix/store/81sj6qbpvy9i5jzyn427xjyaf7348xn5-apple-framework-Foundation-11.0.0/Library/Frameworks/Foundation.framework/Headers/NSAppleEventDescriptor.h:9:
warning: In file included from <module-includes>:1:
warning: /nix/store/p8dmrywhvhqb1qpmzq2nba0digigqzxc-apple-framework-ApplicationServices-11.0.0/Library/Frameworks/ApplicationServices.framework/Headers/ApplicationServices.h:23:10: fatal error: could not build module 'CoreServices'
warning: #include <CoreServices/CoreServices.h>
warning:  ~~~~~~~~^
warning: While building module 'Foundation' imported from objc/notify.h:1:
warning: While building module 'ApplicationServices' imported from /nix/store/81sj6qbpvy9i5jzyn427xjyaf7348xn5-apple-framework-Foundation-11.0.0/Library/Frameworks/Foundation.framework/Headers/NSAppleEventDescriptor.h:9:
warning: While building module 'CoreText' imported from /nix/store/p8dmrywhvhqb1qpmzq2nba0digigqzxc-apple-framework-ApplicationServices-11.0.0/Library/Frameworks/ApplicationServices.framework/Frameworks/ATS.framework/Headers/SFNTLayoutTypes.h:16:
warning: In file included from <module-includes>:1:
warning: In file included from /nix/store/8b6xkzgcxh8j8xa1qbkfvjym2l98nyzd-apple-framework-CoreText-11.0.0/Library/Frameworks/CoreText.framework/Headers/CoreText.h:20:
warning: In file included from /nix/store/8b6xkzgcxh8j8xa1qbkfvjym2l98nyzd-apple-framework-CoreText-11.0.0/Library/Frameworks/CoreText.framework/Headers/CTFont.h:20:
warning: In file included from /nix/store/8b6xkzgcxh8j8xa1qbkfvjym2l98nyzd-apple-framework-CoreText-11.0.0/Library/Frameworks/CoreText.framework/Headers/CTFontDescriptor.h:20:
warning: /nix/store/8b6xkzgcxh8j8xa1qbkfvjym2l98nyzd-apple-framework-CoreText-11.0.0/Library/Frameworks/CoreText.framework/Headers/CTFontTraits.h:14:10: fatal error: could not build module 'CoreFoundation'
warning: #include <CoreFoundation/CoreFoundation.h>
warning:  ~~~~~~~~^
warning: While building module 'Foundation' imported from objc/notify.h:1:
warning: While building module 'ApplicationServices' imported from /nix/store/81sj6qbpvy9i5jzyn427xjyaf7348xn5-apple-framework-Foundation-11.0.0/Library/Frameworks/Foundation.framework/Headers/NSAppleEventDescriptor.h:9:
warning: While building module 'ColorSync' imported from /nix/store/p8dmrywhvhqb1qpmzq2nba0digigqzxc-apple-framework-ApplicationServices-11.0.0/Library/Frameworks/ApplicationServices.framework/Headers/ApplicationServices.h:31:
warning: In file included from <module-includes>:1:
warning: In file included from /nix/store/iyz55xj8r2001bz8ykqmx7macd25mwj9-apple-framework-ColorSync-11.0.0/Library/Frameworks/ColorSync.framework/Headers/ColorSync.h:10:
warning: /nix/store/iyz55xj8r2001bz8ykqmx7macd25mwj9-apple-framework-ColorSync-11.0.0/Library/Frameworks/ColorSync.framework/Headers/ColorSyncBase.h:12:10: fatal error: could not build module 'CoreFoundation'
warning: #include <CoreFoundation/CoreFoundation.h>
warning:  ~~~~~~~~^
warning: While building module 'Foundation' imported from objc/notify.h:1:
warning: While building module 'ApplicationServices' imported from /nix/store/81sj6qbpvy9i5jzyn427xjyaf7348xn5-apple-framework-Foundation-11.0.0/Library/Frameworks/Foundation.framework/Headers/NSAppleEventDescriptor.h:9:
warning: While building module 'ImageIO' imported from /nix/store/p8dmrywhvhqb1qpmzq2nba0digigqzxc-apple-framework-ApplicationServices-11.0.0/Library/Frameworks/ApplicationServices.framework/Headers/ApplicationServices.h:47:
warning: In file included from <module-includes>:1:
warning: In file included from /nix/store/8zmv12h06cgc3qvsbg1lplv7yap4knd1-apple-framework-ImageIO-11.0.0/Library/Frameworks/ImageIO.framework/Headers/ImageIO.h:10:
warning: /nix/store/8zmv12h06cgc3qvsbg1lplv7yap4knd1-apple-framework-ImageIO-11.0.0/Library/Frameworks/ImageIO.framework/Headers/ImageIOBase.h:16:10: fatal error: could not build module 'CoreFoundation'
warning: #include <CoreFoundation/CoreFoundation.h>
warning:  ~~~~~~~~^
warning: In file included from objc/notify.m:1:
warning: objc/notify.h:1:9: fatal error: could not build module 'Foundation'
warning: #import <Foundation/Foundation.h>
warning:  ~~~~~~~^
warning: 17 errors generated.

error: failed to run custom build command for `mac-notification-sys v0.3.0`

Caused by:
  process didn't exit successfully: `/Users/schickling/Code/playground/2021-dec/tauri-nix-mac-repro/src-tauri/target/debug/build/mac-notification-sys-72ce1e835a9d9648/build-script-build` (exit status: 1)
  --- stdout
  TARGET = Some("aarch64-apple-darwin")
  OPT_LEVEL = Some("0")
  HOST = Some("aarch64-apple-darwin")
  CC_aarch64-apple-darwin = None
  CC_aarch64_apple_darwin = None
  HOST_CC = None
  CC = Some("clang")
  CFLAGS_aarch64-apple-darwin = None
  CFLAGS_aarch64_apple_darwin = None
  HOST_CFLAGS = None
  CFLAGS = None
  CRATE_CC_NO_DEFAULTS = None
  DEBUG = Some("true")
  running: "clang" "-O0" "-ffunction-sections" "-fdata-sections" "-fPIC" "-g" "-fno-omit-frame-pointer" "--target=arm64-apple-darwin" "-fmodules" "-o" "/Users/schickling/Code/playground/2021-dec/tauri-nix-mac-repro/src-tauri/target/debug/build/mac-notification-sys-a38bea378e7d2066/out/objc/notify.o" "-c" "objc/notify.m"
  cargo:warning=/nix/store/masby0h78dcikl96crs39025i4hmqdm6-libobjc-11.0.0/include/objc/module.modulemap:1:8: error: redefinition of module 'ObjectiveC'
  cargo:warning=module ObjectiveC [system] [extern_c] {
  cargo:warning=       ^
  cargo:warning=/nix/store/zr8yl45qwa0cpr4cgwkffmm0436bmlh9-libobjc-11.0.0/include/objc/module.modulemap:1:8: note: previously defined here
  cargo:warning=module ObjectiveC [system] [extern_c] {
  cargo:warning=       ^
  cargo:warning=/nix/store/ypqm9riz1gr599jdv9sh45g1wfknnqsj-libSystem-11.0.0/include/xpc/module.modulemap:1:8: error: redefinition of module 'XPC'
  cargo:warning=module XPC [system] [extern_c] {
  cargo:warning=       ^
  cargo:warning=/nix/store/1gfmz1gs7an8bays17j474g3nvwshmjy-apple-lib-xpc/include/xpc/module.modulemap:1:8: note: previously defined here
  cargo:warning=module XPC [system] [extern_c] {
  cargo:warning=       ^
  cargo:warning=While building module 'Foundation' imported from objc/notify.h:1:
  cargo:warning=While building module 'CoreFoundation' imported from /nix/store/81sj6qbpvy9i5jzyn427xjyaf7348xn5-apple-framework-Foundation-11.0.0/Library/Frameworks/Foundation.framework/Headers/Foundation.h:6:
  cargo:warning=In file included from <module-includes>:1:
  cargo:warning=In file included from /nix/store/xr16widgh52lbqbsi9kdswmdc21mbg3s-apple-framework-CoreFoundation-11.0.0/Library/Frameworks/CoreFoundation.framework/Headers/CoreFoundation.h:60:
  cargo:warning=In file included from /nix/store/xr16widgh52lbqbsi9kdswmdc21mbg3s-apple-framework-CoreFoundation-11.0.0/Library/Frameworks/CoreFoundation.framework/Headers/CFPropertyList.h:17:
  cargo:warning=/nix/store/xr16widgh52lbqbsi9kdswmdc21mbg3s-apple-framework-CoreFoundation-11.0.0/Library/Frameworks/CoreFoundation.framework/Headers/CFStream.h:20:10: fatal error: could not build module 'Dispatch'
  cargo:warning=#include <dispatch/dispatch.h>
  cargo:warning= ~~~~~~~~^
  cargo:warning=While building module 'Foundation' imported from objc/notify.h:1:
  cargo:warning=In file included from <module-includes>:1:
  cargo:warning=/nix/store/81sj6qbpvy9i5jzyn427xjyaf7348xn5-apple-framework-Foundation-11.0.0/Library/Frameworks/Foundation.framework/Headers/Foundation.h:6:10: fatal error: could not build module 'CoreFoundation'
  cargo:warning=#include <CoreFoundation/CoreFoundation.h>
  cargo:warning= ~~~~~~~~^
  cargo:warning=While building module 'Foundation' imported from objc/notify.h:1:
  cargo:warning=While building module 'CoreGraphics' imported from /nix/store/81sj6qbpvy9i5jzyn427xjyaf7348xn5-apple-framework-Foundation-11.0.0/Library/Frameworks/Foundation.framework/Headers/NSGeometry.h:9:
  cargo:warning=In file included from <module-includes>:1:
  cargo:warning=In file included from /nix/store/j0n5nx9jwmdir8hs7nz3x35g6jx9r84f-apple-framework-CoreGraphics-11.0.0/Library/Frameworks/CoreGraphics.framework/Headers/CoreGraphics.h:8:
  cargo:warning=/nix/store/j0n5nx9jwmdir8hs7nz3x35g6jx9r84f-apple-framework-CoreGraphics-11.0.0/Library/Frameworks/CoreGraphics.framework/Headers/CGBase.h:12:10: fatal error: could not build module 'CoreFoundation'
  cargo:warning=#include <CoreFoundation/CFBase.h>
  cargo:warning= ~~~~~~~~^
  cargo:warning=While building module 'Foundation' imported from objc/notify.h:1:
  cargo:warning=While building module 'CoreGraphics' imported from /nix/store/81sj6qbpvy9i5jzyn427xjyaf7348xn5-apple-framework-Foundation-11.0.0/Library/Frameworks/Foundation.framework/Headers/NSGeometry.h:9:
  cargo:warning=While building module 'IOKit' imported from /nix/store/j0n5nx9jwmdir8hs7nz3x35g6jx9r84f-apple-framework-CoreGraphics-11.0.0/Library/Frameworks/CoreGraphics.framework/Headers/CGDisplayConfiguration.h:12:
  cargo:warning=In file included from <module-includes>:4:
  cargo:warning=/nix/store/c5cj0i4iz19rm58hgmly4v8a9g7binhh-apple-framework-IOKit-11.0.0/Library/Frameworks/IOKit.framework/Headers/IOCFBundle.h:26:10: fatal error: could not build module 'CoreFoundation'
  cargo:warning=#include <CoreFoundation/CoreFoundation.h>
  cargo:warning= ~~~~~~~~^
  cargo:warning=While building module 'Foundation' imported from objc/notify.h:1:
  cargo:warning=While building module 'Security' imported from /nix/store/81sj6qbpvy9i5jzyn427xjyaf7348xn5-apple-framework-Foundation-11.0.0/Library/Frameworks/Foundation.framework/Headers/NSURLCredential.h:9:
  cargo:warning=In file included from <module-includes>:1:
  cargo:warning=In file included from /nix/store/3nxglj39s872q6wrnkxdf0vd1maq41ya-apple-framework-Security-11.0.0/Library/Frameworks/Security.framework/Headers/Security.h:27:
  cargo:warning=/nix/store/3nxglj39s872q6wrnkxdf0vd1maq41ya-apple-framework-Security-11.0.0/Library/Frameworks/Security.framework/Headers/SecBase.h:28:10: fatal error: could not build module 'CoreFoundation'
  cargo:warning=#include <CoreFoundation/CFBase.h>
  cargo:warning= ~~~~~~~~^
  cargo:warning=While building module 'Foundation' imported from objc/notify.h:1:
  cargo:warning=While building module 'Security' imported from /nix/store/81sj6qbpvy9i5jzyn427xjyaf7348xn5-apple-framework-Foundation-11.0.0/Library/Frameworks/Foundation.framework/Headers/NSURLCredential.h:9:
  cargo:warning=While building module 'XPC' imported from /nix/store/3nxglj39s872q6wrnkxdf0vd1maq41ya-apple-framework-Security-11.0.0/Library/Frameworks/Security.framework/Headers/SecCode.h:35:
  cargo:warning=/nix/store/masby0h78dcikl96crs39025i4hmqdm6-libobjc-11.0.0/include/objc/module.modulemap:1:8: error: redefinition of module 'ObjectiveC'
  cargo:warning=module ObjectiveC [system] [extern_c] {
  cargo:warning=       ^
  cargo:warning=/nix/store/zr8yl45qwa0cpr4cgwkffmm0436bmlh9-libobjc-11.0.0/include/objc/module.modulemap:1:8: note: previously defined here
  cargo:warning=module ObjectiveC [system] [extern_c] {
  cargo:warning=       ^
  cargo:warning=While building module 'Foundation' imported from objc/notify.h:1:
  cargo:warning=While building module 'Security' imported from /nix/store/81sj6qbpvy9i5jzyn427xjyaf7348xn5-apple-framework-Foundation-11.0.0/Library/Frameworks/Foundation.framework/Headers/NSURLCredential.h:9:
  cargo:warning=While building module 'XPC' imported from /nix/store/3nxglj39s872q6wrnkxdf0vd1maq41ya-apple-framework-Security-11.0.0/Library/Frameworks/Security.framework/Headers/SecCode.h:35:
  cargo:warning=In file included from <module-includes>:1:
  cargo:warning=/nix/store/1gfmz1gs7an8bays17j474g3nvwshmjy-apple-lib-xpc/include/xpc/xpc.h:7:10: fatal error: could not build module 'Dispatch'
  cargo:warning=#include <dispatch/dispatch.h>
  cargo:warning= ~~~~~~~~^
  cargo:warning=While building module 'Foundation' imported from objc/notify.h:1:
  cargo:warning=While building module 'CoreServices' imported from /nix/store/81sj6qbpvy9i5jzyn427xjyaf7348xn5-apple-framework-Foundation-11.0.0/Library/Frameworks/Foundation.framework/Headers/NSURLError.h:15:
  cargo:warning=In file included from <module-includes>:1:
  cargo:warning=/nix/store/bvvlpg5syhl07sgy1nn1r936gvwmpc6v-apple-framework-CoreServices-11.0.0/Library/Frameworks/CoreServices.framework/Headers/CoreServices.h:19:10: fatal error: could not build module 'CoreFoundation'
  cargo:warning=#include <CoreFoundation/CoreFoundation.h>
  cargo:warning= ~~~~~~~~^
  cargo:warning=While building module 'Foundation' imported from objc/notify.h:1:
  cargo:warning=While building module 'CoreServices' imported from /nix/store/81sj6qbpvy9i5jzyn427xjyaf7348xn5-apple-framework-Foundation-11.0.0/Library/Frameworks/Foundation.framework/Headers/NSURLError.h:15:
  cargo:warning=While building module 'DiskArbitration' imported from /nix/store/bvvlpg5syhl07sgy1nn1r936gvwmpc6v-apple-framework-CoreServices-11.0.0/Library/Frameworks/CoreServices.framework/Frameworks/CarbonCore.framework/Headers/Files.h:56:
  cargo:warning=In file included from <module-includes>:1:
  cargo:warning=/nix/store/0lhyz07dl31yj4yx617wnf27cba1knwk-apple-framework-DiskArbitration-11.0.0/Library/Frameworks/DiskArbitration.framework/Headers/DiskArbitration.h:27:10: fatal error: could not build module 'CoreFoundation'
  cargo:warning=#include <CoreFoundation/CoreFoundation.h>
  cargo:warning= ~~~~~~~~^
  cargo:warning=While building module 'Foundation' imported from objc/notify.h:1:
  cargo:warning=While building module 'CoreServices' imported from /nix/store/81sj6qbpvy9i5jzyn427xjyaf7348xn5-apple-framework-Foundation-11.0.0/Library/Frameworks/Foundation.framework/Headers/NSURLError.h:15:
  cargo:warning=While building module 'CFNetwork' imported from /nix/store/bvvlpg5syhl07sgy1nn1r936gvwmpc6v-apple-framework-CoreServices-11.0.0/Library/Frameworks/CoreServices.framework/Headers/CoreServices.h:31:
  cargo:warning=In file included from <module-includes>:1:
  cargo:warning=/nix/store/10xm12hqc1k3n495nz0xs1jl5p1qs5an-apple-framework-CFNetwork-11.0.0/Library/Frameworks/CFNetwork.framework/Headers/CFNetwork.h:18:10: fatal error: could not build module 'CoreFoundation'
  cargo:warning=#include <CoreFoundation/CoreFoundation.h>
  cargo:warning= ~~~~~~~~^
  cargo:warning=While building module 'Foundation' imported from objc/notify.h:1:
  cargo:warning=While building module 'ApplicationServices' imported from /nix/store/81sj6qbpvy9i5jzyn427xjyaf7348xn5-apple-framework-Foundation-11.0.0/Library/Frameworks/Foundation.framework/Headers/NSAppleEventDescriptor.h:9:
  cargo:warning=In file included from <module-includes>:1:
  cargo:warning=/nix/store/p8dmrywhvhqb1qpmzq2nba0digigqzxc-apple-framework-ApplicationServices-11.0.0/Library/Frameworks/ApplicationServices.framework/Headers/ApplicationServices.h:23:10: fatal error: could not build module 'CoreServices'
  cargo:warning=#include <CoreServices/CoreServices.h>
  cargo:warning= ~~~~~~~~^
  cargo:warning=While building module 'Foundation' imported from objc/notify.h:1:
  cargo:warning=While building module 'ApplicationServices' imported from /nix/store/81sj6qbpvy9i5jzyn427xjyaf7348xn5-apple-framework-Foundation-11.0.0/Library/Frameworks/Foundation.framework/Headers/NSAppleEventDescriptor.h:9:
  cargo:warning=While building module 'CoreText' imported from /nix/store/p8dmrywhvhqb1qpmzq2nba0digigqzxc-apple-framework-ApplicationServices-11.0.0/Library/Frameworks/ApplicationServices.framework/Frameworks/ATS.framework/Headers/SFNTLayoutTypes.h:16:
  cargo:warning=In file included from <module-includes>:1:
  cargo:warning=In file included from /nix/store/8b6xkzgcxh8j8xa1qbkfvjym2l98nyzd-apple-framework-CoreText-11.0.0/Library/Frameworks/CoreText.framework/Headers/CoreText.h:20:
  cargo:warning=In file included from /nix/store/8b6xkzgcxh8j8xa1qbkfvjym2l98nyzd-apple-framework-CoreText-11.0.0/Library/Frameworks/CoreText.framework/Headers/CTFont.h:20:
  cargo:warning=In file included from /nix/store/8b6xkzgcxh8j8xa1qbkfvjym2l98nyzd-apple-framework-CoreText-11.0.0/Library/Frameworks/CoreText.framework/Headers/CTFontDescriptor.h:20:
  cargo:warning=/nix/store/8b6xkzgcxh8j8xa1qbkfvjym2l98nyzd-apple-framework-CoreText-11.0.0/Library/Frameworks/CoreText.framework/Headers/CTFontTraits.h:14:10: fatal error: could not build module 'CoreFoundation'
  cargo:warning=#include <CoreFoundation/CoreFoundation.h>
  cargo:warning= ~~~~~~~~^
  cargo:warning=While building module 'Foundation' imported from objc/notify.h:1:
  cargo:warning=While building module 'ApplicationServices' imported from /nix/store/81sj6qbpvy9i5jzyn427xjyaf7348xn5-apple-framework-Foundation-11.0.0/Library/Frameworks/Foundation.framework/Headers/NSAppleEventDescriptor.h:9:
  cargo:warning=While building module 'ColorSync' imported from /nix/store/p8dmrywhvhqb1qpmzq2nba0digigqzxc-apple-framework-ApplicationServices-11.0.0/Library/Frameworks/ApplicationServices.framework/Headers/ApplicationServices.h:31:
  cargo:warning=In file included from <module-includes>:1:
  cargo:warning=In file included from /nix/store/iyz55xj8r2001bz8ykqmx7macd25mwj9-apple-framework-ColorSync-11.0.0/Library/Frameworks/ColorSync.framework/Headers/ColorSync.h:10:
  cargo:warning=/nix/store/iyz55xj8r2001bz8ykqmx7macd25mwj9-apple-framework-ColorSync-11.0.0/Library/Frameworks/ColorSync.framework/Headers/ColorSyncBase.h:12:10: fatal error: could not build module 'CoreFoundation'
  cargo:warning=#include <CoreFoundation/CoreFoundation.h>
  cargo:warning= ~~~~~~~~^
  cargo:warning=While building module 'Foundation' imported from objc/notify.h:1:
  cargo:warning=While building module 'ApplicationServices' imported from /nix/store/81sj6qbpvy9i5jzyn427xjyaf7348xn5-apple-framework-Foundation-11.0.0/Library/Frameworks/Foundation.framework/Headers/NSAppleEventDescriptor.h:9:
  cargo:warning=While building module 'ImageIO' imported from /nix/store/p8dmrywhvhqb1qpmzq2nba0digigqzxc-apple-framework-ApplicationServices-11.0.0/Library/Frameworks/ApplicationServices.framework/Headers/ApplicationServices.h:47:
  cargo:warning=In file included from <module-includes>:1:
  cargo:warning=In file included from /nix/store/8zmv12h06cgc3qvsbg1lplv7yap4knd1-apple-framework-ImageIO-11.0.0/Library/Frameworks/ImageIO.framework/Headers/ImageIO.h:10:
  cargo:warning=/nix/store/8zmv12h06cgc3qvsbg1lplv7yap4knd1-apple-framework-ImageIO-11.0.0/Library/Frameworks/ImageIO.framework/Headers/ImageIOBase.h:16:10: fatal error: could not build module 'CoreFoundation'
  cargo:warning=#include <CoreFoundation/CoreFoundation.h>
  cargo:warning= ~~~~~~~~^
  cargo:warning=In file included from objc/notify.m:1:
  cargo:warning=objc/notify.h:1:9: fatal error: could not build module 'Foundation'
  cargo:warning=#import <Foundation/Foundation.h>
  cargo:warning= ~~~~~~~^
  cargo:warning=17 errors generated.
  exit status: 1

  --- stderr


  error occurred: Command "clang" "-O0" "-ffunction-sections" "-fdata-sections" "-fPIC" "-g" "-fno-omit-frame-pointer" "--target=arm64-apple-darwin" "-fmodules" "-o" "/Users/schickling/Code/playground/2021-dec/tauri-nix-mac-repro/src-tauri/target/debug/build/mac-notification-sys-a38bea378e7d2066/out/objc/notify.o" "-c" "objc/notify.m" with args "clang" did not execute successfully (status code exit status: 1).


warning: build failed, waiting for other jobs to finish...
error: build failed
```
