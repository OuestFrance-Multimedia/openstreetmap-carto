// --- Parks, woods, other green things ---

@grass: #c0ecae; // also grassland, meadow, common, village_green
@scrub: #c0ecae;
@forest: #c0ecae;       // Lch(80,30,135)
@forest-text: #46673b;  // Lch(40,30,135)
@park: #c0ecae;         // Lch(94,30,145) also garden
@orchard: #c0ecae; // also vineyard, plant_nursery

// --- "Base" landuses ---

@built-up-upper-lowzoom: #c0c0c0;
@built-up-lower-lowzoom: #ffffff;
@residential: #edebe8;      // Lch(89,0,0)
@residential-line: #edebe8; // Lch(75,0,0)
@retail: #edebe8;           // Lch(89,16,30)
@retail-line: #d99c95;      // Lch(70,25,30)
@commercial: #edebe8;       // Lch(89,8.5,25)
@commercial-line: #edebe8;  // Lch(75,12,25)
@industrial: #edebe8;       // Lch(89,9,330) (Also used for railway)
@industrial-line: #edebe8;  // Lch(75,11,330) (Also used for railway-line)
@farmland: #edebe8;         // Lch(94,12,80)
@farmland-line: #edebe8;    // Lch(80,15,80)
@farmyard: #edebe8;         // Lch(89,20,80)
@farmyard-line: #edebe8;    // Lch(75,25,80)

// --- Transport ----

@aerodrome: #edebe8;
@apron: #edebe8;
@garages: #edebe8;
@parking: #edebe8;
@railway: @industrial;
@railway-line: @industrial-line;
@rest_area: #efc8c8; // also services

// --- Other ----

@allotments: #eecfb3;       // Lch(85,19,70)
@bare_ground: #eee5dc;
@campsite: #def6c0; // also caravan_site, picnic_site
@cemetery: #aacbaf; // also grave_yard
@construction: #f2f2f2; // also brownfield
@danger_area: #f2f2f2;
@danger_background: #f2f2f2;
@heath: #d6d99f;
@mud: rgba(203,177,154,0.3); // produces #e6dcd1 over @land
@place_of_worship: #f2f2f2;
@place_of_worship_outline: #111;
@leisure: lighten(@park, 5%);
@power: darken(@industrial, 5%);
@power-line: darken(@industrial-line, 5%);
@sand: #f5e9c6;
@societal_amenities: #f2f2f2;
@tourism: #f2f2f2;
@quarry: #c5c3c3;
@military: #f2f2f2;
@beach: #fff1ba;

// --- Sports ---

@pitch: #aae0cb; // also track
@track: @pitch;
@stadium: @leisure; // also sports_centre
@golf_course: #b5e3b5;

#landcover-low-zoom[zoom < 10],
#landcover[zoom >= 10] {
  ::low-zoom[zoom < 10]                   { image-filters: scale-hsla(0,1,0,1,0.6,0.95,0,1); }
  ::lower-mid-zoom[zoom >= 10][zoom < 11] { image-filters: scale-hsla(0,1,0,1,0.6,0.95,0,1); }
  ::mid-zoom[zoom >= 11][zoom < 12]       { image-filters: scale-hsla(0,1,0,1,0.5,0.96,0,1); }
  ::upper-mid-zoom[zoom >= 12][zoom < 13] { image-filters: scale-hsla(0,1,0,1,0.4,0.97,0,1); }
  ::high-zoom[zoom >= 13]                 { image-filters: scale-hsla(0,1,0,1,0,  1,   0,1); }

  ::low-zoom[zoom < 10],
  ::lower-mid-zoom[zoom >= 10][zoom < 11],
  ::mid-zoom[zoom >= 11][zoom < 12],
  ::upper-mid-zoom[zoom >= 12][zoom < 13],
  ::high-zoom[zoom >= 13] {

 

 

 
  [feature = 'leisure_park'],
  [feature = 'leisure_garden'] {
    [zoom >= 10] {
      polygon-fill: @park;
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }
  }

  [feature = 'leisure_dog_park'] {
    [zoom >= 10] {
      polygon-fill: @leisure;
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }
    [zoom >= 16] {
      polygon-pattern-file: url('symbols/dog_park.png');
      polygon-pattern-alignment: global;
      [way_pixels >= 4]  { polygon-pattern-gamma: 0.75; }
      [way_pixels >= 64] { polygon-pattern-gamma: 0.3;  }
    }
  }

 


 



 

 

 

  

  [feature = 'amenity_hospital'],
  [feature = 'amenity_clinic'],
  [feature = 'amenity_university'],
  [feature = 'amenity_college'],
  [feature = 'amenity_school'],
  [feature = 'amenity_kindergarten'],
  [feature = 'amenity_community_centre'],
  [feature = 'amenity_social_facility'] {
    [zoom >= 10] {
      polygon-fill: @residential;
      [zoom >= 12] {
        polygon-fill: @societal_amenities;
        [zoom >= 13] {
          line-width: 0.3;
          line-color: darken(@societal_amenities, 35%);
        }
      }
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }
  }

 

  [feature = 'aeroway_apron'][zoom >= 10] {
    polygon-fill: @apron;
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }

  [feature = 'aeroway_aerodrome'][zoom >= 10],
  [feature = 'amenity_ferry_terminal'][zoom >= 15] {
    polygon-fill: @aerodrome;
    line-width: 0.2;
    line-color: saturate(darken(@aerodrome, 40%), 20%);
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }

  [feature = 'natural_beach'][zoom >= 10],
  [feature = 'natural_shoal'][zoom >= 10] {
    polygon-fill: @beach;
    [way_pixels >= 4]  { polygon-gamma: 0.75; }
    [way_pixels >= 64] { polygon-gamma: 0.3;  }
  }

  [feature = 'highway_services'],
  [feature = 'highway_rest_area'] {
    [zoom >= 10] {
      polygon-fill: @rest_area;
      [way_pixels >= 4]  { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.3;  }
    }
  }

  [feature = 'railway_station'][zoom >= 10] {
    polygon-fill: @railway;
  }

}
}



#landcover-area-symbols {
  [natural = 'sand'][zoom >= 8] {
    polygon-pattern-file: url('symbols/beach.png');
    polygon-pattern-alignment: global;
  }
 
  [natural = 'reef'][zoom >= 10] {
    polygon-pattern-file: url('symbols/reef.png');
    polygon-pattern-alignment: global;
  }
  [zoom >= 14] {
   
    [natural = 'beach'],
    [natural = 'shoal'] {
      [surface = 'sand'] {
        polygon-pattern-file: url('symbols/beach.png');
        polygon-pattern-alignment: global;
      }
      [surface = 'gravel'],
      [surface = 'fine_gravel'],
      [surface = 'pebbles'],
      [surface = 'pebblestone'],
      [surface = 'shingle'],
      [surface = 'stones'],
      [surface = 'shells'] {
        polygon-pattern-file: url('symbols/beach_coarse.png');
        polygon-pattern-alignment: global;
      }
    }
    [natural = 'scrub'] {
      polygon-pattern-file: url('symbols/scrub.png');
      polygon-pattern-alignment: global;
    }
  }

  //Also landuse = forest, converted in the SQL
  [natural = 'wood'][zoom >= 13]::wood {
    polygon-pattern-file: url('symbols/leaftype_unknown.svg'); // Lch(55,30,135)
    [leaf_type = "broadleaved"] { polygon-pattern-file: url('symbols/leaftype_broadleaved.svg'); }
    [leaf_type = "needleleaved"] { polygon-pattern-file: url('symbols/leaftype_needleleaved.svg'); }
    [leaf_type = "mixed"] { polygon-pattern-file: url('symbols/leaftype_mixed.svg'); }
    [leaf_type = "leafless"] { polygon-pattern-file: url('symbols/leaftype_leafless.svg'); }
    polygon-pattern-alignment: global;
    opacity: 0.4; // The entire layer has opacity to handle overlapping forests
  }
}






#text-line {
  [feature = 'natural_cliff'][zoom >= 15],
  [feature = 'man_made_embankment'][zoom >= 15] {
    text-name: "[name]";
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-fill: #999;
    text-size: 10;
    text-face-name: @book-fonts;
    text-placement: line;
    text-dy: 8;
    text-vertical-alignment: middle;
    text-spacing: 400;
  }
}
