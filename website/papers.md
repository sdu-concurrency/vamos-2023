---
title: Accepted Papers
layout: page
---

<style>ul { padding-left: 15px; }</style>

### Long Papers

{% assign papers = site.data.papers | vamos_accepted: "lp" %}
{% for paper in papers %}
  - **{{ paper.title | strip }}**; {% for author in paper.authors %} {{author}}{% if forloop.last == false %}, {% endif %} {% endfor %}
{% endfor %}

### Short Papers

{% assign papers = site.data.papers | vamos_accepted: "sp" %}
{% for paper in papers %}
  - **{{ paper.title | strip }}**; {% for author in paper.authors %} {{author}}{% if forloop.last == false %}, {% endif %} {% endfor %}
{% endfor %}

### Variability-in-Practice Papers

{% assign papers = site.data.papers | vamos_accepted: "vipp" %}
{% for paper in papers %}
  - **{{ paper.title | strip }}**; {% for author in paper.authors %} {{author}}{% if forloop.last == false %}, {% endif %} {% endfor %}
{% endfor %}

### New and Controversial Idea Papers

{% assign papers = site.data.papers | vamos_accepted: "ncip" %}
{% for paper in papers %}
  - **{{ paper.title | strip }}**; {% for author in paper.authors %} {{author}}{% if forloop.last == false %}, {% endif %} {% endfor %}
{% endfor %}

### VaMoS 2021 Talks

{% assign papers = site.data.papers | vamos_accepted: "v21t" %}
{% for paper in papers %}
  - **{{ paper.title | strip }}**; {% for author in paper.authors %} {{author}}{% if forloop.last == false %}, {% endif %} {% endfor %}
{% endfor %}

### VaMoS 2022 Talks

{% assign papers = site.data.papers | vamos_accepted: "v22t" %}
{% for paper in papers %}
  - **{{ paper.title | strip }}**; {% for author in paper.authors %} {{author}}{% if forloop.last == false %}, {% endif %} {% endfor %}
{% endfor %}
