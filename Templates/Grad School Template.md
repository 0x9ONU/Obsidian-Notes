## <%  
/* ------------------------------------------------------------  
Graduate School Application Template for Obsidian  
Uses: Templater, Dataview, Tasks, Admonition, Table‑Editor  
Place this file in your Templates folder and call it from  
any note with the Templater hot‑key (default: Ctrl+T > Insert Template)  
------------------------------------------------------------ */  
%>

type: #gradschool #applications
university: "<% tp.prompt('University name') %>"  
city: "<% tp.prompt('City') %>"  
state_province: "<% tp.prompt('State / Province') %>"  
country: "<% tp.prompt('Country') %>"  
city_population: "<% tp.prompt('City population (approx)') %>"  
col_index: "<% tp.prompt('Cost‑of‑living index') %>"  
application_deadline: "<% tp.prompt('Application deadline (YYYY-MM-DD)') %>"  
early_deadline: "<% tp.prompt('Priority/early deadline (optional)') %>"  
application_fee: "<% tp.prompt('Application fee (USD)') %>"  
acceptance_rate: "<% tp.prompt('Acceptance rate (%)') %>"  
enrollment_grad: "<% tp.prompt('Graduate enrollment') %>"  
tuition_in_state: "<% tp.prompt('Tuition – in‑state') %>"  
tuition_out_of_state: "<% tp.prompt('Tuition – out‑of‑state / international') %>"  
avg_stipend: "<% tp.prompt('Average PhD stipend') %>"  
funding_model: "<% tp.prompt('Funding model (TA/RA/fellowship)') %>"  
programs_offered:

- "<% tp.prompt('Primary PhD program') %>"
    
- "<% tp.prompt('Secondary / interdisciplinary program (optional)') %>"  
    key_faculty:
    
- name: "<% tp.prompt('Professor 1 name') %>"  
    research_tags: "<% tp.prompt('Prof 1 research areas') %>"  
    email: "<% tp.prompt('Prof 1 email') %>"  
    contacted: "no"
    
- name: "<% tp.prompt('Professor 2 name (optional)') %>"  
    research_tags: "<% tp.prompt('Prof 2 research areas') %>"  
    email: "<% tp.prompt('Prof 2 email (optional)') %>"  
    contacted: "no"  
    created: <% tp.date.now('YYYY-MM-DD') %>  
    updated: <% tp.date.now('YYYY-MM-DD') %>
    

---

> [!abstract]- Summary  
> **Program focus**: <% tp.prompt('One‑sentence program focus summary') %>
> 
> **Why I am interested**: <% tp.prompt('Why does this program appeal to you?') %>

## 🎯 Application Checklist

- [ ] Complete online application @due(<% tp.date.now('YYYY-MM-DD') %>)
- [ ] Pay application fee
- [ ] Request official transcripts
- [ ] Send GRE/TOEFL scores (if required)
- [ ] Solicit recommendation letters
- [ ] Draft & polish Statement of Purpose
- [ ] Email potential advisors

## 📊 Quick Facts

|Statistic|Value|
|---|---|
|Population|`= this.city_population`|
|Cost‑of‑Living|`= this.col_index`|
|Acceptance Rate|`= this.acceptance_rate`|
|Avg Stipend|`= this.avg_stipend`|

## 👥 Faculty Notes

```dataview
table research_tags as "Research Areas", contacted
from ""
where contains(file.type, "graduate_application") and file.name = this.file.name
flatten key_faculty as prof
sort prof.name
```

## 🏙️ Location & Lifestyle

- Housing cost notes:
    - 
- Climate / weather:
    - 
- Cultural highlights:
    - 

## ✅ Pros & ❗ Cons

```ad-check
collapse: open
title: Strengths
```

```ad-warning
collapse: open
title: Concerns
```

## 🔗 Useful Links

- Department Website
    
- [City Wikipedia]([https://en.wikipedia.org/wiki/](https://en.wikipedia.org/wiki/)<% tp.file.title %>)
    
- Cost Of Living Calculator
    

---

### Personal Impressions

_Jot reflections after campus visits, interviews, or additional research._