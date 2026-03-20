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
    <p>Research Assistant @ CVAI Lab</p>
    <p>Prof. Daniel Cremers' Group, TUM</p>
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

Hi! I'm a Master's student in **Robotics, Cognition, Intelligence** at the [Technical University of Munich (TUM)](https://www.tum.de). I work on **machine learning, generative models, and inference-time alignment** — specifically on efficient, reward-agnostic methods to steer diffusion and flow models without fine-tuning or differentiable rewards.

I did my Bachelor's in **Electrical Engineering and Information Technology** at TUM and moved into AI and machine learning during my later semesters. Before starting my Master's, I interned at **Siemens AG**, where I applied ML to 3D part retrieval in industrial manufacturing. During my Master's, I spent an exchange semester at [Chalmers University of Technology](https://www.chalmers.se) in Gothenburg, Sweden.

## Projects

<div class="projects">
  <div class="row row-cols-1">
    {% assign sorted_projects = site.projects | sort: "importance" %}
    {% for project in sorted_projects %}
      {% include projects_horizontal.liquid %}
    {% endfor %}
  </div>
</div>
