## Concise method of TAB-navigation in QML

--------------------------------------------------------------------------------
### What this program looks like when run:
![Animated demo](demo.gif?raw=true)

--------------------------------------------------------------------------------
### The magic is in using `focusPolicy`

By using `focusPolicy` in the custom `Widget` item, we eliminate numerous fragile and repetive lines such as:

```
      KeyNavigation.backtab: one  // not needed any longer!
      KeyNavigation.tab: three    // not needed any longer!
```

Refer to the *verbose* approach to appreciate the code that has been eliminated
here.

[Verbose approach found here.](../verbose-approach)
