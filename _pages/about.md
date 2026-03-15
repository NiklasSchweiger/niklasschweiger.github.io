---
layout: about
title: about
permalink: /
subtitle: MSc Student at <a href='https://www.tum.de' target='_blank'>TU Munich</a> · Robotics, Cognition, Intelligence

profile:
  align: right
  image: 863a9578-6ef9-4fa3-bee0-6203a62e9691.jpg
  image_circular: true # crops the image to make it circular
  more_info: >
    <p>MSc Robotics, Cognition, Intelligence</p>
    <p>Technical University of Munich (TUM)</p>
    <p>📧 niklas.schweiger@tum.de</p>

selected_papers: false # includes a list of papers marked as "selected={true}"
social: true # includes social icons at the bottom of the page

announcements:
  enabled: false # includes a list of news items
  scrollable: true # adds a vertical scroll bar if there are more than 3 news items
  limit: 5 # leave blank to include all the news in the `_news` folder

latest_posts:
  enabled: false
---

Hi! I am a Master's student in **Robotics, Cognition, Intelligence** at the [Technical University of Munich (TUM)](https://www.tum.de). My research interests lie at the intersection of **machine learning, generative models, and inference-time alignment** — particularly in finding efficient, reward-agnostic ways to steer diffusion and flow models towards desired outcomes.

I completed my Bachelor's degree in **Electrical Engineering and Information Technology** at TUM, where I discovered my passion for AI and machine learning in my later semesters. During my Master's, I spent an enriching exchange semester at [Chalmers University of Technology](https://www.chalmers.se) in Gothenburg, Sweden, broadening my academic and cultural horizons.

Before my Master's, I interned at **Siemens AG**, applying AI methods to industrial production settings — a hands-on experience that continues to shape how I think about real-world ML deployment.


## Projects

<div class="projects">
  <div class="row row-cols-1">
    {% assign sorted_projects = site.projects | sort: "importance" %}
    {% for project in sorted_projects %}
      {% include projects_horizontal.liquid %}
    {% endfor %}
  </div>
</div>
