<%*  
let university = await tp.system.prompt("University name");  
let city = await tp.system.prompt("City");  
let state = await tp.system.prompt("State / Province");  
let country = await tp.system.prompt("Country");  
let city_population = await tp.system.prompt("City population (approx)");  
let col_index = await tp.system.prompt("Cost-of-living index");  
let application_deadline = await tp.system.prompt("Application deadline (YYYY-MM-DD)");  
let early_deadline = await tp.system.prompt("Priority/early deadline (optional)");  
let application_fee = await tp.system.prompt("Application fee (USD)");  
let acceptance_rate = await tp.system.prompt("Acceptance rate (%)");  
let enrollment_grad = await tp.system.prompt("Graduate enrollment");  
let tuition_in_state = await tp.system.prompt("Tuition – in-state");  
let tuition_out_of_state = await tp.system.prompt("Tuition – out-of-state / international");  
let avg_stipend = await tp.system.prompt("Average PhD stipend");  
let funding_model = await tp.system.prompt("Funding model (TA/RA/fellowship)");  
let program1 = await tp.system.prompt("Primary PhD program");  
let program2 = await tp.system.prompt("Secondary / interdisciplinary program (optional)");  
let prof1_name = await tp.system.prompt("Professor 1 name");  
let prof1_tags = await tp.system.prompt("Prof 1 research areas");  
let prof1_email = await tp.system.prompt("Prof 1 email");  
let prof2_name = await tp.system.prompt("Professor 2 name (optional)");  
let prof2_tags = await tp.system.prompt("Prof 2 research areas");  
let prof2_email = await tp.system.prompt("Prof 2 email (optional)");  
let focus_summary = await tp.system.prompt("One-sentence program focus summary");  
let interest_reason = await tp.system.prompt("Why does this program appeal to you?");  
let dept_link = await tp.system.prompt("Program website URL");  
let col_link = await tp.system.prompt("COL link (optional)");  
%>

---

type: graduate_application  
university: "<%= university %>"  
city: "<%= city %>"  
state_province: "<%= state %>"  
country: "<%= country %>"  
city_population: "<%= city_population %>"  
col_index: "<%= col_index %>"  
application_deadline: "<%= application_deadline %>"  
early_deadline: "<%= early_deadline %>"  
application_fee: "<%= application_fee %>"  
acceptance_rate: "<%= acceptance_rate %>"  
enrollment_grad: "<%= enrollment_grad %>"  
tuition_in_state: "<%= tuition_in_state %>"  
tuition_out_of_state: "<%= tuition_out_of_state %>"  
avg_stipend: "<%= avg_stipend %>"  
funding_model: "<%= funding_model %>"  
programs_offered:

- "<%= program1 %>"
    
- "<%= program2 %>"  
    key_faculty:
    
- name: "<%= prof1_name %>"  
    research_tags: "<%= prof1_tags %>"  
    email: "<%= prof1_email %>"  
    contacted: "no"
    
- name: "<%= prof2_name %>"  
    research_tags: "<%= prof2_tags %>"  
    email: "<%= prof2_email %>"  
    contacted: "no"  
    created: <% tp.date.now("YYYY-MM-DD") %>  
    updated: <% tp.date.now("YYYY-MM-DD") %>
    

---

> [!abstract]- Summary  
> **Program focus**: <%= focus_summary %>
> 
> **Why I am interested**: <%= interest_reason %>

## 🎯 Application Checklist

-  Complete online application @due(<% tp.date.now('YYYY-MM-DD') %>)
    
-  Pay application fee
    
-  Request official transcripts
    
-  Send GRE/TOEFL scores (if required)
    
-  Solicit recommendation letters
    
-  Draft & polish Statement of Purpose
    
-  Email potential advisors
    

## 📊 Quick Facts

|Statistic|Value|
|---|---|
|Population|`= this.city_population`|
|Cost-of-Living|`= this.col_index`|
|Acceptance Rate|`= this.acceptance_rate`|
|Avg Stipend|`= this.avg_stipend`|

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
    
- Climate / weather:
    
- Cultural highlights:
    

## ✅ Pros & ❗ Cons

```ad-pros
collapse: closed
title: Strengths
```

```ad-cons
collapse: closed
title: Concerns
```

## 🔗 Useful Links

- Department Website
    
- [City Wikipedia]([https://en.wikipedia.org/wiki/](https://en.wikipedia.org/wiki/)<% tp.file.title %>)
    
- Cost Of Living Calculator
    

---

### Personal Impressions

_Jot reflections after campus visits, interviews, or additional research._