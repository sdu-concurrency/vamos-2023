---
title: Attending
layout: page
#feature_image: "/assets/images/lion.jpg"
---

<ul class="nav nav-tabs nav-justified">
  <li role="presentation" class="active">
    <a href="#venue">Venue: Odense</a></li>
  <li role="presentation"><a href="#hotels">Hotels</a></li>
</ul>

<div class="tab-content">
<div role="tabpanel" class="tab-pane active" id="venue">

  {% include_relative include_md.html file="subpages/venue.md" %}

</div>

<div role="tabpanel" class="tab-pane" id="hotels">
   
  {% include_relative include_md.html file="subpages/hotels.md" %}

</div>

</div>

<script>
$('.nav-tabs li a').click(function (e){e.preventDefault();$(this).tab('show');})
</script>
