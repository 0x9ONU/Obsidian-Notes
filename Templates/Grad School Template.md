<%*
/* ───────────────────────────────────────────────
   Graduate-School single-note template
   • Adds all Dataview-needed fields to YAML
   • Renames file to the school name
   • Produces tasks block scoped to this note
──────────────────────────────────────────────── */
const school = await tp.system.prompt("School Name");
const date   = tp.date.now("YYYY-MM-DD");
await tp.file.rename(school);
const slug   = school.toLowerCase().replace(/ /g, "-");

tR = `---
aliases: ["${school}"]
tags: [gradschool, applications, ${slug}]
school: "${school}"
created: "${date}"
status: "🕓 researching"        # researching | contacted | applied | interview | accepted | rejected
type: "PhD"
location: ""                    # <-- EDIT in Properties
deadline: ""                    # <-- YYYY-MM-DD
enrollment:
tuition:
stipend:
cost_of_living:
rank: 
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

## 💻 Programs Offered

### Program 1
- **Name**:
- **Website**:
- **Summary**:
- **Requirements?**:

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
- *(Duplicate block as needed)*

## 🗺️ City Insights
- **Living Quality:** 
- **Safety Rating:** 
- **Public Transit:** 
- **Typical Rent / Housing Availability:** 
- **Nearest Airports:** 

## ✅ Application Tasks
\`\`\`tasks
not done
path includes "${school}"
\`\`\`

## 🔖 Notes
Write down your impressions, visits, Reddit anecdotes, etc.
`;
%>
