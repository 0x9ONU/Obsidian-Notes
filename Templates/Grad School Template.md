<%*
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
> Add impressions from virtual tours, info sessions, etc.

