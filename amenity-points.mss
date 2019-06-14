@marina-text: #576ddf; // also swimming_pool
@wetland-text: darken(#4aa5fa, 25%); /* Also for marsh and mud */
@shop-icon: #ac39ac;
@shop-text: #939;
@transportation-icon: #0092da;
@transportation-text: #0066ff;
@accommodation-icon: @transportation-icon;
@accommodation-text: @transportation-text;
@airtransport: #8461C4; //also ferry_terminal
@health-color: #da0092;
@amenity-brown: #734a08;
@gastronomy: @amenity-brown;
@memorials: @amenity-brown;
@culture: @amenity-brown;
@public-service: @amenity-brown;
@man-made-icon: #555;
@landform-color: #d08f55;
@leisure-green: darken(@park, 60%);

@landcover-font-size: 10;
@landcover-wrap-width-size: 30; // 3 em
@landcover-line-spacing-size: -1.5; // -0.15 em
@landcover-font-size-big: 12;
@landcover-wrap-width-size-big: 36; // 3 em
@landcover-line-spacing-size-big: -1.8; // -0.15 em
@landcover-font-size-bigger: 15;
@landcover-wrap-width-size-bigger: 45; // 3 em
@landcover-line-spacing-size-bigger: -2.25; // -0.15 em
@landcover-face-name: @oblique-fonts;

@standard-font-size: 10;
@standard-wrap-width: 30; // 3 em
@standard-line-spacing-size: -1.5; // -0.15 em
@standard-font: @book-fonts;



#amenity-line {
  // Ford tagging on ways
  [feature = 'highway_ford'][zoom >= 16] {
    marker-file: url('symbols/ford.svg');
    marker-fill: @transportation-icon;
  }
  // Slipway tagging on ways
  [feature = 'leisure_slipway'][zoom >= 17] {
    marker-file: url('symbols/transport_slipway.p.20.svg');
    marker-fill: @transportation-icon;
  }
}

#trees [zoom >= 25] {
  ::canopy {
    opacity: 0.3;
    [natural = 'tree_row'] {
      line-color: green;
      line-cap: round;
      line-width: 2.5;
      [zoom >= 25] {
        line-width: 5;
      }
      [zoom >= 25] {
        line-width: 10;
      }
      [zoom >= 25] {
        line-width: 15;
      }
      [zoom >= 25] {
        line-width: 30;
      }
    }
    [natural = 'tree'] {
      [zoom >= 25] {
        marker-fill: green;
        marker-allow-overlap: true;
        marker-line-width: 0;
        marker-ignore-placement: true;
        marker-width: 10;
        marker-height: 10;
      }
      [zoom >= 25] {
        marker-width: 15;
        marker-height: 15;
      }
      [zoom >= 25] {
        marker-width: 30;
        marker-height: 30;
      }
    }
  }
  [natural = 'tree']::trunk {
    [zoom >= 25] {
      trunk/marker-fill: #b27f36;
      trunk/marker-allow-overlap: true;
      trunk/marker-line-width: 0;
      trunk/marker-width: 2;
      trunk/marker-height: 2;
      trunk/marker-ignore-placement: true;
    }
    [zoom >= 25] {
      trunk/marker-width: 3;
      trunk/marker-height: 3;
    }
    [zoom >= 25] {
      trunk/marker-width: 6;
      trunk/marker-height: 6;
    }
  }
}
