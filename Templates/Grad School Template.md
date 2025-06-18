[<%*
/* ───────────────
   Grad-School Note
   ─────────────── */
const uni          = tp.prompt("University name");
const city         = tp.prompt("City");
const state        = tp.prompt("State/Province (abbr.)");
const country      = tp.prompt("Country", "USA");
const dept         = tp.prompt("PhD Department");
const degree       = tp.prompt("Degree title", "PhD");
const field        = tp.prompt("Field tag (e.g., ECE, CS)");
const deadline     = tp.prompt("App deadline (YYYY-MM-DD)");
const fee          = tp.prompt("Application fee (USD)", "0");
const status       = "Not Started";      // default; update later
const now          = tp.date.now("YYYY-MM-DD");
%>
---
#  ========  Dataview front-matter  ========
title: "<% uni %>"
tags: 
  - gradschool
  - application
  - <% field %>
university: "<% uni %>"
city: "<% city %>"
state: "<% state %>"
country: "<% country %>"
institution_type: "<% tp.prompt("Public or Private?") %>"
department: "<% dept %>"
degree: "<% degree %>"
deadline: <% deadline %>          # YYYY-MM-DD  ← Dataview reads this as a date
fee: <% fee %>
status: "<% status %>"            # Not Started | In Progress | Submitted | Interview | Accepted | Rejected
last_updated: <% now %>
program_url: "<% tp.prompt("Program URL") %>"
application_portal: "<% tp.prompt("Portal URL (if different)") %>"
funding_info: "<% tp.prompt("Funding (TA/RA/Fellowship…)", "Fully-funded TA/RA") %>"
total_enrollment: "<% tp.prompt("Total enrollment?", "-") %>"
grad_enrollment: "<% tp.prompt("Graduate enrollment?", "-") %>"
accept_rate: "<% tp.prompt("PhD acceptance rate (%)", "-") %>"
avg_GRE_Q: "<% tp.prompt("Avg GRE Quant", "-") %>"
avg_GRE_V: "<% tp.prompt("Avg GRE Verbal", "-") %>"
avg_GRE_W: "<% tp.prompt("Avg GRE Writing", "-") %>"
min_GPA: "<% tp.prompt("Min GPA?", "-") %>"
TOEFL_required: "<% tp.prompt("TOEFL/IELTS required?", "No") %>"
city_pop: "<% tp.prompt(\"City population?\", \"-\") %>"
cost_of_living_idx: "<% tp.prompt(\"Cost-of-living index (US=100)\", \"-\") %>"
weather_notes: "<% tp.prompt(\"Climate notes\", \"-\") %>"
transportation: "<% tp.prompt(\"Transit / airport access\", \"-\") %>"
cultural_scene: "<% tp.prompt(\"Tech/cultural scene\", \"-\") %>"
---

# 🏫 School Overview
- **University:** [[<% uni %>]]
- **Location:** <% city %>, <% state %>, <% country %>
- **Department:** <% dept %>
- **Degree:** <% degree %>
- **Program Website:** <[% program_url %>]
- **Institution Type:** <% tp.frontmatter["institution_type"] %>

## 📊 Statistics
Acceptance Rate:: <% tp.frontmatter["accept_rate"] %>
Total Enrollment:: <% tp.frontmatter["total_enrollment"] %>
Graduate Students:: <% tp.frontmatter["grad_enrollment"] %>
Min GPA:: <% tp.frontmatter["min_GPA"] %>
Average GRE (Q/V/W):: <% tp.frontmatter["avg_GRE_Q"] %> / <% tp.frontmatter["avg_GRE_V"] %> / <% tp.frontmatter["avg_GRE_W"] %>
TOEFL/IELTS:: <% tp.frontmatter["TOEFL_required"] %>

# 📅 Application
Deadline:: <% deadline %>
Fee:: $<% fee %>
Required Docs::
- Statement of Purpose
- CV / Resume
- Transcripts
- Letters of Recommendation (3)
- Test Scores
- Writing Sample (if any)

# 🧑‍🏫 Professors to Contact
| Name | Research Area | Email | Notes |
| ---- | ------------- | ----- | ----- |
| <% tp.cursor %> | | | |

# 🌆 City Snapshot
Population:: <% tp.frontmatter["city_pop"] %>
Cost-of-Living Index:: <% tp.frontmatter["cost_of_living_idx"] %>
Weather Notes:: <% tp.frontmatter["weather_notes"] %>
Transit & Access:: <% tp.frontmatter["transportation"] %>
Culture & Industry:: <% tp.frontmatter["cultural_scene"] %>

# 📝 Personal Notes
> Add impressions from virtual tours, info sessions, etc.](<%3C%*
/* ─────────────────────────
   Grad-School Dataview Note
   ───────────────────────── */
const uni          = await tp.system.prompt("University name");
const city         = await tp.system.prompt("City");
const state        = await tp.system.prompt("State or province (abbr.)");
const country      = await tp.system.prompt("Country", "USA");
const dept         = await tp.system.prompt("PhD department");
const degree       = await tp.system.prompt("Degree title", "PhD");
const field        = await tp.system.prompt("Field tag (e.g., ECE, CS)");
const deadline     = await tp.system.prompt("Application deadline (YYYY-MM-DD)");
const fee          = await tp.system.prompt("Application fee (USD)", "0");
const urlProgram   = await tp.system.prompt("Program URL");
const urlPortal    = await tp.system.prompt("Application-portal URL (or leave blank)", "");
const funding      = await tp.system.prompt("Funding info (TA/RA/Fellowship…)", "Fully-funded TA/RA");
const typeInst     = await tp.system.prompt("Institution type (Public / Private)");
const now          = tp.date.now("YYYY-MM-DD");
%%3E
---
title: "<% uni %>"
tags: [gradschool, application, <% field %>]
status: "Not Started"       # you’ll update this later
last_updated: <% now %>

university: "<% uni %>"
institution_type: "<% typeInst %>"
city: "<% city %>"
state: "<% state %>"
country: "<% country %>"

department: "<% dept %>"
degree: "<% degree %>"
program_url: "<% urlProgram %>"
application_portal: "<% urlPortal %>"

deadline: <% deadline %>      # Dataview stores this as date
fee: <% fee %>
funding_info: "<% funding %>"

total_enrollment: "-"
grad_enrollment: "-"
accept_rate: "-"
avg_GRE_Q: "-"
avg_GRE_V: "-"
avg_GRE_W: "-"
min_GPA: "-"
TOEFL_required: "No"

city_pop: "-"
cost_of_living_idx: "-"
weather_notes: "-"
transportation: "-"
cultural_scene: "-"
---

# 🏫 School Overview
- **University:** <% uni %>
- **Location:** <% city %>, <% state %>, <% country %>
- **Department:** <% dept %>
- **Degree:** <% degree %>
- **Program Website:** [link](<% urlProgram %>)
- **Institution Type:** <% typeInst %>

## 📊 Statistics
Acceptance Rate:: <% this.accept_rate %>
Total Enrollment:: <% this.total_enrollment %>
Graduate Students:: <% this.grad_enrollment %>
Min GPA:: <% this.min_GPA %>
Average GRE (Q/V/W):: <% this.avg_GRE_Q %> / <% this.avg_GRE_V %> / <% this.avg_GRE_W %>
TOEFL/IELTS:: <% this.TOEFL_required %>

# 📅 Application
Deadline:: <% deadline %>
Fee:: $<% fee %>
Required Docs::
- Statement of Purpose
- CV / Resume
- Transcripts
- Letters of Recommendation (3)
- Test Scores
- Writing Sample (if any)

# 🧑‍🏫 Professors to Contact
| Name | Research Area | Email | Notes |
| ---- | ------------- | ----- | ----- |
| <% tp.cursor %> | | | |

# 🌆 City Snapshot
Population:: <% this.city_pop %>
Cost-of-Living Index:: <% this.cost_of_living_idx %>
Weather Notes:: <% this.weather_notes %>
Transit & Access:: <% this.transportation %>
Culture & Industry:: <% this.cultural_scene %>

# 📝 Personal Notes
> Add impressions from virtual tours, info sessions, etc.>)