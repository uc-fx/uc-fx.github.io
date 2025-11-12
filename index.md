---
layout: default
title: UCFX Project
subtitle: Universal Composability using Effects and Handlers
---

Homepage for the UCFX project.

## People
{% for grouping in site.data.people %}
### {{ grouping.category }}
<ul class="grid-5">
{% for person in grouping.people %}
<li>
    <div class="member">
        <div class="member-photograph">
            <img src="assets/images/{{ person.image }}" alt="{{ person.name }}">
        </div>
        <div class="member-name">
            <a href="{{ person.website }}">{{ person.name }}</a>
        </div>
        {% if person.role %}
        <div class="member-role">
            {{ person.role }}
        </div>
        {% endif %}
    </div>
</li>
{% endfor %}
</ul>
{% endfor %}
