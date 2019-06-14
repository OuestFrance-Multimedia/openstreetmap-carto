#aerialways {
  [aerialway = 'cable_car'],
  [aerialway = 'gondola'],
  [aerialway = 'mixed_lift'] {
    [zoom >= 12] {
      line/line-width: 1;
      line/line-join: round;
      line/line-cap: round;
      line/line-color: #f2f2f2;

      dash/line-width: 3;
      dash/line-join: round;
      dash/line-cap: round;
      dash/line-color: white;
      dash/line-dasharray: 0.4,13;
      dash/line-clip: false;
    }
  }

  [aerialway = 'goods'] {
    [zoom >= 12] {
      line/line-width: 1;
      line/line-join: round;
      line/line-cap: round;
      line/line-color: #f2f2f2;

      dash/line-width: 3.5;
      dash/line-join: round;
      dash/line-color: #f2f2f2;
      dash/line-dasharray: 6,25;
      dash/line-clip: false;
    }
  }

  [aerialway = 'chair_lift'],
  [aerialway = 'drag_lift'],
  [aerialway = 't-bar'],
  [aerialway = 'j-bar'],
  [aerialway = 'platter'],
  [aerialway = 'rope_tow'] {
    [zoom >= 12] {
      line/line-width: 1;
      line/line-join: round;
      line/line-cap: round;
      line/line-color: #f2f2f2;

      dash/line-width: 4;
      dash/line-join: round;
      dash/line-color: white;
      dash/line-dasharray: 1,30;
      dash/line-clip: false;
    }
  }
}
