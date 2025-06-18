# 🎓 Graduate School Dashboard

> A live summary of all schools you're tracking. Click the school name to jump to its file.

---

## 📅 Upcoming Deadlines

```dataview
table school as "School", deadline as "Deadline", status as "Status"
from "Applications"
where deadline and status != "rejected"
sort deadline asc
```
```tasks
not done
path includes "Applications"
```

```dataview
table school, status, file.link as "Link"
from "Applications"
where contains(text, "Notes")
```

