jQuery ->
  $("a[rel^='prettyPhoto'] img.photo_image").parent("a[rel^='prettyPhoto']").prettyPhoto({theme: 'facebook', slideshow: 10000, autoplay_slideshow: false, deeplinking: false})