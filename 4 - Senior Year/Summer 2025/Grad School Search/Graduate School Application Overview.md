# 🎓 Graduate School Application Overview

> A live summary of every school note in **4 - Senior Year / Summer 2025 / Grad School Search / Applications**.  
> Edit a property inside any note and this dashboard updates instantly.

---

## Upcoming Deadlines & Status Tracker
```dataview
table deadline, status
from "4 - Senior Year/Summer 2025/Grad School Search/Applications"
where deadline
sort deadline asc
```
## School Broad Information

```dataview
table location, enrollment, tuition, stipend, cost_of_living, rank, created
from "4 - Senior Year/Summer 2025/Grad School Search/Applications"
sort rank desc
```

## How to deploy

1. **Put** file #1 in your **Templates** folder.  
2. **Put** file #2 anywhere convenient (e.g., vault root).  
3. Create a new school note using the template, fill in `location` and `deadline` in the Properties pane.  
4. Open/refresh *Grad School Dashboard* — the tables should populate.

Let me know if you’d like Kanban lanes, charts, or any other custom views!