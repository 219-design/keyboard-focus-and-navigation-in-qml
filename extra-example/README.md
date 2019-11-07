## TAB-navigation in QML, just like Button does it!

--------------------------------------------------------------------------------
### What this program looks like when run:
![Animated demo](demo.gif?raw=true)

--------------------------------------------------------------------------------
### The magic is in using `focusPolicy`

By using `focusPolicy` in our custom Image item, we eliminate numerous fragile
and repetive lines such as:

```
      KeyNavigation.backtab: one  // not needed any longer!
      KeyNavigation.tab: three    // not needed any longer!
```

Note that we do *nothing* to enable TAB-navigation in the `Button` and the
`CheckBox`, since QML already provides their TAB navegability out-of-the-box.

Refer to the *verbose* approach to appreciate the code that has been eliminated
here.

[Verbose approach found here.](../verbose-approach)
