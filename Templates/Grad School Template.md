<%*
const date = tp.date.now("YYYY-MM-DD");
const school = await tp.system.prompt("School Name");
tR += `---\naliases: ["${school}"]
tags: [gradschool, applications, ${school.toLowerCase().replaceAll(" ", "-")}]
school: "${school}"
created: "${date}"
status: "🕓 researching"
type: "PhD"
---\n\n`;
%>

---

# 🎓 [[<%= school %>]]

## 📌 Basic Information
- **School Name:** <%= school %>
- **Location:** 
- **City Population:** 
- **Region:** 
- **Campus Type:** urban / suburban / rural
- **Weather/Climate:** 
- **Cost of Living:** 

## 🧾 College Stats
| Metric | Value |
|--------|-------|
| Enrollment |  |
| Acceptance Rate |  |
| Application Fee |  |
| Tuition (per year) |  |
| Average Funding |  |
| Stipend (if any) |  |
| Cost of Attendance |  |
| Financial Aid Available? |  |

## 📅 Application Info
- **Due Date:** 
- **GRE Required:** Yes / No
- **TOEFL/IELTS Required:** 
- **Application Portal:** [Link]()
- **Notes:** 

## 🎓 Program Details
- **Department:** 
- **Degree Offered:** PhD / MS / MA
- **Research Areas:** 
- **Special Tracks / Labs:** 
- **Collaborative Programs:** 
- **Funding Model:** RA / TA / Fellowship

## 👩‍🏫 Faculty of Interest
### Professor 1
- **Name:** 
- **Website:** 
- **Research Focus:** 
- **Publications to Read:** 
- **Contacted?:** ✅ / ❌
- **Response?:** ✅ / ❌
- **Notes:** 

### Professor 2
- *(Repeat above block as needed)*

## 🗺️ City Insights
- **Living Quality:** 
- **Safety Rating:** 
- **Public Transit:** 
- **Housing Availability:** 
- **Nearby Airports:** 

## 🔖 Notes & Commentary
> Use this space for subjective notes: vibes, prestige, anecdotal info from Reddit/forums, YouTube tours, etc.

## 📊 Dataview Metadata (for dashboard queries)
```dataview
table school, location, type, status, "Due Date" as deadline, "Tuition (per year)" as tuition
from "Applications"
where status != "rejected"
sort deadline asc
