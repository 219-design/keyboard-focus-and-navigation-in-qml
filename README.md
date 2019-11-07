## QML Keyboard Navigation Like It's 2009 Again

This repository demonstrates a concise way of enabling TAB-key navigation in QML
without using `FocusScope`.

Qt has had `FocusPolicy` and `Qt::TabFocus` since the
"[beginning of time](https://github.com/qt/qtbase/blob/38be0d13830efd2d98281c645c3a60afe05ffece/src/gui/kernel/qwidget.cpp)".

That still exists. QML controls such as `Button` and `CheckBox` already (by
default) have `activeFocusOnTab` set to `true`.

This repository shows how you can achieve the same outcome for any arbitrary
custom QML item you design.

### Using this repo:

Prerequisite: install Qt/QML 5.12 or higher

```
git clone https://github.com/219-design/keyboard-focus-and-navigation-in-qml.git keyboard-focus-and-navigation-in-qml
cd keyboard-focus-and-navigation-in-qml
QML_DEMO_ROOT=$PWD
cd $QML_DEMO_ROOT/compare-approaches/verbose-approach/
qmlscene main.qml
cd $QML_DEMO_ROOT/compare-approaches/concise-approach/
qmlscene main.qml
cd $QML_DEMO_ROOT/extra-example/
qmlscene main.qml
```

### Basis for this approach:

- Something that Qt calls "[FocusPolicy](https://doc.qt.io/qt-5/qt.html#FocusPolicy-enum)" can configure a widget for tab focus.
- The only kinds of QML elements that expose FocusPolicy are subtypes of "[Control](https://doc.qt.io/qt-5/qml-qtquick-controls2-control.html#focusPolicy-prop)"
- We often use "Rectangle" as the basis of our custom components, but "Rectangle" is not a subtype of Control. grrrr....
- Guess what? "[Pane](https://doc.qt.io/qt-5/qml-qtquick-controls2-pane.html)" is a subtype of Control.
- According to [this Qt tutorial](https://doc.qt.io/qt-5/qtquickcontrols-chattutorial-example.html): "Pane is basically a rectangle whose color comes from the application's style."

### Seeing is believing

![Animated demo](extra-example/demo.gif?raw=true)
