---
title: Attending
layout: page
---

<style>
ul {
    padding-left: 15px;
}

th,td {
    display: table-cell;
    text-align: center;
    vertical-align: middle;
}
</style>

<ul class="nav nav-tabs nav-justified">
  <li role="presentation" class="active"><a href="#registration">Registration</a></li>
  <li role="presentation"><a href="#venue">Venue</a></li>
  <li role="presentation"><a href="#hotels">Hotels</a></li>
</ul>

<div class="tab-content">
  <div role="tabpanel" class="tab-pane active" id="registration">
    {% include_relative include_md.html file="subpages/registration.md" %}
  </div>

  <div role="tabpanel" class="tab-pane" id="venue">
    {% include_relative include_md.html file="subpages/venue.md" %}
  </div>

  <div role="tabpanel" class="tab-pane" id="hotels">
    {% include_relative include_md.html file="subpages/hotels.md" %}
  </div>
</div>

<script>
$('.nav-tabs li a').click(function (e){e.preventDefault();$(this).tab('show');})
</script>
