---
title: Program
layout: page
---

{% assign preliminary = false %}
{% assign ready = true %}

## Invited Speakers

{% for speaker in site.data.speakers %}
<div class="col-md-12" style="padding-right:2rem">
<h3><a id="{{speaker.name|slugify}}"></a>{{ speaker.name }}</h3>
<span class="glyphicon glyphicon-home" aria-hidden="true"></span> {{ speaker.affiliation }}
{% if speaker.homepage %}<br><span class="glyphicon glyphicon-bookmark" aria-hidden="true"></span> <a href="{{ speaker.homepage }}">Homepage</a>{% endif %}
{% if speaker.title %}<br><span class="glyphicon glyphicon-blackboard" aria-hidden="true"></span>
  {% if speaker.link %}
    <a href="{{ speaker.link }}">{{ speaker.title }}</a>
  {% else %}
    {{ speaker.title }}
  {% endif %}
{% endif %}
{% if speaker.date %}<br><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> {{ speaker.date }}{% endif %}

{% if speaker.abstract %}
<h4>Abstract</h4>
<div class="text-muted text-justify" style="padding-top: 10px;">
{{ speaker.abstract }}
</div>
{% endif %}

{% if speaker.bio %}
<h4>Speaker's Bio</h4>

<div class="text-muted text-justify" style="padding-top: 10px;">
{% if speaker.picture %}
<img class="img-thumbnail" style="margin:8px;max-width:120px;height:auto" align="left" src="{{ 'assets/images/speakers/' | append: speaker.picture | relative_url }}">
{% endif %}
{{ speaker.bio }}
</div>
{% elsif speaker.picture %}
<br>
<img class="img-thumbnail" style="margin:8px;max-width:120px;height:auto" align="left" src="{{ 'assets/images/speakers/' | append: speaker.picture | relative_url }}">
{% endif %}
<div class="clearfix"></div>
</div>
{% endfor %}

&nbsp;
&nbsp;

## Most Influential Paper

{% assign mip = site.data.papers | find: "id", "mip1" %}

#### [{{ mip.title }}]({{ mip.link }})

{% for author in mip.authors %} {{ author }}{% if forloop.last == false %}, {% endif %} {% endfor %}

#### Abstract

Over more than two decades, numerous variability modeling techniques have been
introduced in academia and industry. However, little is known about the actual
use of these techniques. While dozens of experience reports on software product
line engineering exist, only very few focus on variability modeling. This lack
of empirical data threatens the validity of existing techniques, and hinders
their improvement. As part of our effort to improve empirical understanding of
variability modeling, we present the results of a survey questionnaire
distributed to industrial practitioners. These results provide insights into
application scenarios and perceived benefits of variability modeling, the
notations and tools used, the scale of industrial models, and experienced
challenges and mitigation strategies.

## Schedule

{% if ready %}

{% if preliminary %}
Please be aware that this is a preliminary version of the conference program.
The finalised version will be published at the beginning of January.
{% endif %}

<style>
  td { padding: 8px;
    border-top: 1px solid #ddd;
    border-bottom: 1px solid #ddd;
  }
  .left-td {  border-right: 4px solid #ddd; }
  .right-td {  border-left: 4px solid #ddd; }
  .presentation { margin-top: 1em; }
  .btn:focus { outline: 0 !important; }
</style>

{% for day in site.data.program %}
<div style="margin-top:30px;background-color:{{ day.color }};border-radius: 5px 5px 0px 0px;padding-left: 5px;padding-bottom: 20px;padding-top: 1px;"><h1>{{ day.day }}</h1></div>
<table class="col-xs-12">
  <tbody>
      {% for event in day.events %}
      <tr {% if event.non-session %} style="background-color:#ececec"{% endif %}>
        <td class="left-td col-xs-1">
          <strong>{{event.from}}</strong><br>
          <strong class="text-muted">{{event.to}}</strong>
        </td>
        <td class="right-td">
          <span class="text-primary lead">{{event.title}}</span>
          {% unless event.keynote %}
            {% if event.chair %}
              <br>
              <span class="text-muted">
              Session Chair: {{event.chair}}
              </span>
            {% endif %}
          {% endunless %}
          {% if event.keynote %}
            <br>
            <span class="lead"><a href="{{ event.keynote.link }}" style="color:#000000;"><strong>{{event.keynote.title}}</strong></a></span>
          {% endif %}
          {% if event.authors %}
            <br>
            {% for author in event.authors %}
              {% if author.title %}
                {{author.title}}: <strong>{{author.name}}</strong>
              {% else %}
                {{author.name}}
              {% endif %}
            {% endfor %}
            {% if event.chair %}
              <br>
              <span class="text-muted">
              Session Chair: {{event.chair}}
              </span>
            {% endif %}
          {% endif %}
          {% if event.slides %}
            <br>
            <a target="_blank" style="color:white" href="/slides/{{event.slides}}"><label class="btn btn-xs btn-success">
            <span class="glyphicon glyphicon-blackboard"></span> Slides</label></a>
            <br>
          {% endif %}
          {% if event.video %}
            <br>
            <a target="_blank" style="color:white" href="https://www.youtube.com/watch?v={{event.video}}"><label class="btn btn-xs btn-success">
            <span class="glyphicon glyphicon-film"></span> Video</label></a>
            <br>
          {% endif %}
          {% if event.description %}
            <br>
            <span class="text-muted">{{ event.description }}</span>
            <br>
          {% endif %}
          {% if event.papers.size > 0 %}
            {% for event_paper in event.papers %}
              {% assign paper = site.data.papers | find: "id", event_paper.id %}
              <div class="presentation">
              <a href="{{ paper.link }}" style="color:#000000;"><strong>{{ paper | vamos_program_title }}</strong></a>
              <br>
              <span class="text-muted">
                {% if paper.authors.size == 1 %}
                Author:
                {% else %}
                Authors:
                {% endif %}
                {% for author in paper.authors %}
                  {{author}}{% if forloop.last == false %}, {% endif %}
                {% endfor %}
              </span>
              {% if event_paper.presenter %}
              <br>
              <span class="text-muted">
                Presenter: {{event_paper.presenter}}
              </span>
              {% endif %}
              {% if event_paper.discussant %}
              <br>
              <span class="text-muted">
                Discussant: {{event_paper.discussant}}
              </span>
              {% endif %}
              {% unless preliminary %}
              <br>
              {% if paper.slides %}
              <a target="_blank" style="color:white" href="/slides/papers/{{paper.slides}}">
                <label class="btn btn-xs btn-success"> <span class="glyphicon glyphicon-circle-arrow-down"></span> Slides</label></a>
              {% endif %}
              {% endunless %}
              </div>
            {% endfor %}
          {% endif %}
          {% if event.chairs %}
            <br>
            {% if event.chairs.size == 1 %}
                Chair: <strong>{{event.chairs[0]}}</strong>
            {% else %}
                Chairs: <strong>{{event.chairs | join: ", "}}</strong>
            {% endif %}
          {% endif %}
          <br>
          {% if event.location %} Location: <strong>{{event.location}}</strong> {% endif %}
        </td>
      </tr>
      {% endfor %}
  </tbody>
</table>
<div stlye="margin-bottom:50px;" class="clearfix"></div>
{% endfor %}
<script>
  $( document ).ready( function() {
    $( ".abstract_btn" ).click( function(event) {
      $( event.target ).siblings( ".abstract" ).slideToggle('fast');
    });
  });
</script>
{% else %}
The schedule will be announced in early December.
{% endif %}
