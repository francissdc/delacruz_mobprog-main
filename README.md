# delacruz_mobprog

## Laboratory 1: Integrating `Image` into `newsfeed_card.dart` Dynamically

I integrated Flutter's `Image` widget into `newsfeed_card.dart` by isolating the image layout inside a dedicated `PostImage` widget (`AspectRatio` wrapping `Image.asset` with `BoxFit.cover`). Inside `NewsfeedCard`, I made the image display dynamic using a conditional check (`if (hasImage == true)`) before rendering `PostImage`. When `hasImage` is `true` (such as on Zuma Langit's post), `PostImage` is included in the card's `Column`; when `hasImage` is `false` or `null` (such as on Galema's post), no image widget is rendered so text-only posts keep a clean layout without empty space. I also included an `errorBuilder` fallback inside `PostImage` so any asset loading issue renders a safe fallback icon instead of breaking the UI.
