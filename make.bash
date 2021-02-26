#!/usr/bin/env bash

CHROOT="/usr/x86_64-pc-linux-gnu-static"
MINGW="/usr/i686-w64-mingw32"
MINGW64="/usr/x86_64-w64-mingw32"
RPI="/usr/armv6j-hardfloat-linux-gnueabi"
RPI3="/usr/armv7a-hardfloat-linux-gnueabi"
APPLE="/usr/x86_64-apple-darwin14"
ANDROID="/usr/arm-linux-androideabi"

mkdir -p build

# LIBRARY_PATH="$CHROOT/usr/lib:$CHROOT/lib" \
# PKG_CONFIG_PATH="$CHROOT/usr/lib/pkgconfig" \
# PKG_CONFIG_LIBDIR="$CHROOT/usr/lib/pkgconfig" \
# CGO_LDFLAGS="-L$CHROOT/usr/lib -L$CHROOT/lib" \
# CGO_CFLAGS="-I$CHROOT/usr/include" \
# CGO_ENABLED=1 GOOS=linux GOARCH=amd64 go build -tags cv2 -o build/cam2ip.linux.amd64.cv2 -ldflags "-linkmode external -s -w" github.com/gen2brain/cam2ip/cmd/cam2ip

# LIBRARY_PATH="$CHROOT/usr/lib:$CHROOT/lib" \
# PKG_CONFIG_PATH="$CHROOT/usr/lib/pkgconfig" \
# PKG_CONFIG_LIBDIR="$CHROOT/usr/lib/pkgconfig" \
# CGO_LDFLAGS="-L$CHROOT/usr/lib -L$CHROOT/lib" \
# CGO_CFLAGS="-I$CHROOT/usr/include" \
# CGO_ENABLED=1 GOOS=linux GOARCH=amd64 go build -o build/cam2ip.linux.amd64 -ldflags "-linkmode external -s -w" github.com/gen2brain/cam2ip/cmd/cam2ip

# PKG_CONFIG="/usr/bin/i686-w64-mingw32-pkg-config" \
# PKG_CONFIG_PATH="$MINGW/usr/lib/pkgconfig" \
# PKG_CONFIG_LIBDIR="$MINGW/usr/lib/pkgconfig" \
# CGO_LDFLAGS="-L$MINGW/usr/lib" \
# CGO_CFLAGS="-I$MINGW/usr/include" \
# CC="i686-w64-mingw32-gcc" CXX="i686-w64-mingw32-g++" \
# CGO_ENABLED=1 GOOS=windows GOARCH=386 go build -tags "cv2 pkgconfig" -o build/cam2ip.386.cv2.exe -ldflags "-linkmode external -s -w '-extldflags=-static'" github.com/gen2brain/cam2ip/cmd/cam2ip

# PKG_CONFIG="/usr/bin/i686-w64-mingw32-pkg-config" \
# PKG_CONFIG_PATH="$MINGW/usr/lib/pkgconfig" \
# PKG_CONFIG_LIBDIR="$MINGW/usr/lib/pkgconfig" \
# CGO_LDFLAGS="-L$MINGW/usr/lib" \
# CGO_CFLAGS="-I$MINGW/usr/include" \
# CC="i686-w64-mingw32-gcc" CXX="i686-w64-mingw32-g++" \
# CGO_ENABLED=1 GOOS=windows GOARCH=386 go build -o build/cam2ip.386.exe -ldflags "-linkmode external -s -w '-extldflags=-static'" github.com/gen2brain/cam2ip/cmd/cam2ip

# PKG_CONFIG="/usr/bin/x86_64-w64-mingw32-pkg-config" \
# PKG_CONFIG_PATH="$MINGW64/usr/lib/pkgconfig" \
# PKG_CONFIG_LIBDIR="$MINGW64/usr/lib/pkgconfig" \
# CGO_LDFLAGS="-L$MINGW64/usr/lib" \
# CGO_CFLAGS="-I$MINGW64/usr/include" \
# CC="x86_64-w64-mingw32-gcc" CXX="x86_64-w64-mingw32-g++" \
# CGO_ENABLED=1 GOOS=windows GOARCH=amd64 go build -tags "cv4 pkgconfig" -o build/cam2ip.amd64.cv2.exe -ldflags "-linkmode external -s -w '-extldflags=-static'" github.com/gen2brain/cam2ip/cmd/cam2ip

# PKG_CONFIG="/usr/bin/x86_64-w64-mingw32-pkg-config" \
# PKG_CONFIG_PATH="$MINGW64/usr/lib/pkgconfig" \
# PKG_CONFIG_LIBDIR="$MINGW64/usr/lib/pkgconfig" \
# CGO_LDFLAGS="-L$MINGW64/usr/lib" \
# CGO_CFLAGS="-I$MINGW64/usr/include" \
# CC="x86_64-w64-mingw32-gcc" CXX="x86_64-w64-mingw32-g++" \
# CGO_ENABLED=1 CC="x86_64-w64-mingw32-gcc" CXX="x86_64-w64-mingw32-g++" GOOS=windows GOARCH=amd64 go build -o build/cam2ip.amd64.exe -ldflags "-linkmode external -s -w '-extldflags=-static'" github.com/gen2brain/cam2ip/cmd/cam2ip

# PKG_CONFIG="/usr/bin/armv6j-hardfloat-linux-gnueabi-pkg-config" \
# PKG_CONFIG_PATH="$RPI/usr/lib/pkgconfig" \
# PKG_CONFIG_LIBDIR="$RPI/usr/lib/pkgconfig" \
# CGO_LDFLAGS="-L$RPI/usr/lib" \
# CGO_CFLAGS="-I$RPI/usr/include" \
# CC="armv6j-hardfloat-linux-gnueabi-gcc" CXX="armv6j-hardfloat-linux-gnueabi-g++" \
# CGO_ENABLED=1 GOOS=linux GOARCH=arm go build -tags cv2 -o build/cam2ip.linux.arm.cv2 -ldflags "-linkmode external -s -w" github.com/gen2brain/cam2ip/cmd/cam2ip

# PKG_CONFIG="/usr/bin/armv6j-hardfloat-linux-gnueabi-pkg-config" \
# PKG_CONFIG_PATH="$RPI/usr/lib/pkgconfig" \
# PKG_CONFIG_LIBDIR="$RPI/usr/lib/pkgconfig" \
# CGO_LDFLAGS="-L$RPI/usr/lib" \
# CGO_CFLAGS="-I$RPI/usr/include" \
# CC="armv6j-hardfloat-linux-gnueabi-gcc" CXX="armv6j-hardfloat-linux-gnueabi-g++" \
# CGO_ENABLED=1 GOOS=linux GOARCH=arm go build -o build/cam2ip.linux.arm -ldflags "-linkmode external -s -w" github.com/gen2brain/cam2ip/cmd/cam2ip

# PKG_CONFIG="/usr/bin/armv6j-hardfloat-linux-gnueabi-pkg-config" \
# PKG_CONFIG_PATH="$RPI/usr/lib/pkgconfig" \
# PKG_CONFIG_LIBDIR="$RPI/usr/lib/pkgconfig" \
# CGO_LDFLAGS="-L$RPI/usr/lib" \
# CGO_CFLAGS="-I$RPI/usr/include" \
# CC="armv6j-hardfloat-linux-gnueabi-gcc" CXX="armv6j-hardfloat-linux-gnueabi-g++" \
# CGO_ENABLED=0 GOOS=linux GOARCH=arm go build -tags jpeg -o build/cam2ip.linux.arm.nocgo -ldflags "-s -w" github.com/gen2brain/cam2ip/cmd/cam2ip

# PKG_CONFIG="/usr/bin/armv7a-hardfloat-linux-gnueabi-pkg-config" \
# PKG_CONFIG_PATH="$RPI3/usr/lib/pkgconfig" \
# PKG_CONFIG_LIBDIR="$RPI3/usr/lib/pkgconfig" \
# CGO_LDFLAGS="-L$RPI3/usr/lib" \
# CGO_CFLAGS="-I$RPI3/usr/include" \
# CC="armv7a-hardfloat-linux-gnueabi-gcc" CXX="armv7a-hardfloat-linux-gnueabi-g++" \
# CGO_ENABLED=1 GOOS=linux GOARCH=arm go build -tags cv2 -o build/cam2ip.linux.arm7.cv2 -ldflags "-linkmode external -s -w" github.com/gen2brain/cam2ip/cmd/cam2ip

# PKG_CONFIG="/usr/bin/armv7a-hardfloat-linux-gnueabi-pkg-config" \
# PKG_CONFIG_PATH="$RPI3/usr/lib/pkgconfig" \
# PKG_CONFIG_LIBDIR="$RPI3/usr/lib/pkgconfig" \
# CGO_LDFLAGS="-L$RPI3/usr/lib" \
# CGO_CFLAGS="-I$RPI3/usr/include" \
# CC="armv7a-hardfloat-linux-gnueabi-gcc" CXX="armv7a-hardfloat-linux-gnueabi-g++" \
# CGO_ENABLED=1 GOOS=linux GOARCH=arm go build -o build/cam2ip.linux.arm7 -ldflags "-linkmode external -s -w" github.com/gen2brain/cam2ip/cmd/cam2ip

# PKG_CONFIG_PATH="$APPLE/SDK/MacOSX10.10.sdk/usr/lib/pkgconfig" \
# PKG_CONFIG_LIBDIR="$APPLE/SDK/MacOSX10.10.sdk/usr/lib/pkgconfig" \
# CGO_LDFLAGS="-L$APPLE/SDK/MacOSX10.10.sdk/usr/lib -mmacosx-version-min=10.10" \
# CGO_CFLAGS="-I$APPLE/SDK/MacOSX10.10.sdk/usr/include -mmacosx-version-min=10.10" \
# CC="$APPLE/bin/x86_64-apple-darwin14-clang" CXX="$APPLE/bin/x86_64-apple-darwin14-clang++" \
CGO_ENABLED=1 GOOS=darwin GOARCH=amd64 go build -tags "cv4 jpeg" -o build/cam2ip.darwin.amd64 -ldflags "-linkmode external -s -w '-extldflags=-mmacosx-version-min=10.10'" github.com/gen2brain/cam2ip/cmd/cam2ip

# PKG_CONFIG_PATH="$ANDROID/lib/pkgconfig" \
# PKG_CONFIG_LIBDIR="$ANDROID/lib/pkgconfig" \
# CGO_LDFLAGS="-L$ANDROID/sysroot/usr/lib" \
# CGO_CFLAGS="-I$ANDROID/sysroot/usr/include --sysroot=$ANDROID/sysroot" \
# CC="$ANDROID/bin/arm-linux-androideabi-clang" CXX="$ANDROID/bin/arm-linux-androideabi-clang++" \
# CGO_ENABLED=1 GOOS=android GOARCH=arm go build -tags jpeg -o build/cam2ip.android.arm7 -ldflags "-linkmode external -s -w" github.com/gen2brain/cam2ip/cmd/cam2ip
