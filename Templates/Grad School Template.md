<%*
const school = await tp.system.prompt("School Name");
const date = tp.date.now("YYYY-MM-DD");
await tp.file.rename(school);
const slug = school.toLowerCase().replace(/ /g, "-");

tR = `---
aliases: ["${school}"]
tags: [gradschool, applications, ${slug}]
school: "${school}"
created: "${date}"
status: "🕓 researching"
type: "PhD"
---
# 🎓 ${school}

## 📌 Basic Information
- **Location:** 
- **City Population:** 
- **Campus Type:** urban / suburban / rural
- **Weather / Climate:** 
- **Cost of Living Index:** 

## 🧾 College Statistics

| Metric                | Value |
|-----------------------|-------|
| Enrollment            |       |
| Acceptance Rate       |       |
| Application Fee       |       |
| Tuition (per year)    |       |
| Average Funding       |       |
| Typical Stipend       |       |
| Cost of Attendance    |       |
| Financial Aid Offered | Yes/No |

## 📅 Application Details
- **Deadline:** 
- **GRE Required:** Yes / No
- **TOEFL / IELTS:** Required / Waived
- **Application Portal:** [Link]()
- **Statement Notes:** 
- **Letters of Recommendation Required:** 

## 👩‍🏫 Faculty of Interest

### Professor 1
- **Name:** 
- **Website:** 
- **Research Focus:** 
- **Key Papers to Read:** 
- **Contacted?** ☐
- **Responded?** ☐
- **Notes:** 

### Professor 2
- *(Repeat as needed)*

## 🗺️ City Insights
- **Living Quality:** 
- **Safety Rating:** 
- **Public Transit:** 
- **Typical Rent / Housing Availability:** 
- **Nearest Airports:** 

## ✅ Application Tasks
```tasks
not done
path includes "${school}"
%>

