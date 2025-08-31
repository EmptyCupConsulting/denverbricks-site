---
title: "Theme Debug"
layout: single
permalink: /debug/
---

**site.logo:** `{{ site.logo }}`

Below should render your logo using the same Liquid filter as the theme:

<img src="{{ site.logo | relative_url }}" alt="logo test" style="height:60px;border:1px solid #eee;padding:4px;">
