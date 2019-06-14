@building-fill: #f2f2f2; //Lch(84, 5, 70)
@building-line: darken(@building-fill, 2%);
@building-low-zoom: darken(@building-fill, 1%);

@building-major-fill: #f2f2f2;
@building-major-line: darken(@building-major-fill, 1%);


#buildings {
  [zoom >= 18] {
    polygon-fill: @building-low-zoom;
    polygon-clip: false;
    [zoom >= 15] {
      line-color: @building-line;
      polygon-fill: @building-fill;
      line-width: .50;
      line-clip: false;
    }
  }
}

#buildings-major {
  [zoom >= 18] {
    [aeroway = 'terminal'],
    [amenity = 'place_of_worship'],
    [building = 'train_station'],
    [aerialway = 'station'],
    [public_transport = 'station'] {
      polygon-fill: @building-major-fill;
      polygon-clip: false;
      [zoom >= 15] {
        line-width: .50;
        line-clip: false;
        line-color: @building-major-line;
      }
    }
  }
}

#bridge {
  [zoom >= 17] {
    polygon-fill: #B8B8B8;
  }
}
