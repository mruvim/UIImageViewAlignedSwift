# UIImageViewAlignedSwift

This repo is a clone of [UIImageViewAlignedSwift](https://github.com/sochalewski/UIImageViewAlignedSwift) with SPM support.

## Requirements
* iOS 8.0+, tvOS 9.0+
* Swift 5.0

## Installation

### Swift Package Manager

Add UIImageViewAlignedSwift as a dependency to your Package.swift.

```bash
dependencies: [
    .package(url: "https://github.com/mruvim/UIImageViewAlignedSwift.git", from: "0.1.0")
]
```


## What is it?

It is a subclass of `UIImageView` that allows you to customize the alignment of the displayed image inside the view's frame.
This works even if the `contentMode` is set to `.scaleAspectFit`, `.scaleAspectFill` or `.scaleToFill`.

## Why a subclass of UIImageView, and not a standard UIView?

Because there are many cool categories built on top of `UIImageView`. Subclassing a standard `UIView` would mean losing them.

For example, `AFNetworking`'s async `UIImageView` category works perfectly using this container class, and you don't have to worry about a thing.

## How does it work?

When initialized, `UIImageViewAligned` will create a inner `UIImageView` which will actually hold the image displayed.
The main class then just repositions this inner `UIImageView` to achieve your desired alignment.

At runtime, you can change the `image`, `contentMode` or `alignment` and the image will reposition itself correctly.

The `image` property of `UIImageViewAligned` is overwritten to forward the calls to the inner `UIImageView`, so you can just drag and drop into your app.


## License

UIImageViewAlignedSwift is available under the MIT license. See the LICENSE file for more info.
