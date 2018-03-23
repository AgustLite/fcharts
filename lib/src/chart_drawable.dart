import 'package:fcharts/src/utils/merge_tween.dart';
import 'package:fcharts/src/utils/painting.dart';
import 'package:flutter/material.dart';

/// A chart which can be drawn within a [CanvasArea]. It can also
/// be tweened from/to a chart of the same type.
abstract class ChartDrawable<T extends ChartDrawable<T, E>, E extends ChartTouchEvent>
    extends MergeTweenable<T> {
  /// Draw the chart within a [CanvasArea]. It should scale according
  /// to the width and height of the area.
  void draw(CanvasArea area);

  /// Handles a user touch. When the user touches the screen on a chart,
  /// this method is called.
  ///
  /// The result type, [E] is defined by the chart.
  E resolveTouch(Size chartSize, Offset touch);
}

abstract class ChartTouchEvent {}
