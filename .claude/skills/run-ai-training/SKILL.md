---
name: run-ai-training
description: Run, view, and update the IIT KGP Applied AI & ML study schedule. Use when asked to show upcoming sessions, check prep status, update ✅/⏳ markers, or view the training schedule.
---

This repo is a markdown-based study tracker for the IIT KGP × upGrad Applied AI & ML programme (June 2026 → January 2027). There is no server or GUI — the driver is a bash smoke script that reads `IITKGP_Study_Schedule.md` and surfaces what's next.

## Prerequisites

- Git Bash (already installed on this machine)
- No additional installs needed

## Run (agent path)

```bash
bash ".claude/skills/run-ai-training/smoke.sh"
```

Output shows:
- Next 8 upcoming live sessions
- All pending prep slots (⏳)
- Count of completed prep (✅)

## Read the full schedule

```bash
cat "IITKGP_Study_Schedule.md"
```

## Update prep status

To mark a topic as done, edit `IITKGP_Study_Schedule.md` and replace `⏳` with `✅ <source>` in the matching row.

Example — marking Ensemble prep done:
```
| 4 | Jul 11 | Ensemble methods ... | Adway Mitra | ✅ Ensemble prep Mod X |
```

## Push changes to GitHub

```bash
git -C "D:/AI Training" add IITKGP_Study_Schedule.md
git -C "D:/AI Training" commit -m "Update prep status"
git -C "D:/AI Training" push
```

## Gotchas

- The schedule file uses emoji markers (✅ ⏳) — grep works on these in Git Bash but may break in plain cmd.exe
- Live sessions are Saturdays 10am–1pm IST; prep must be done *before* the session date
- ⏳ slots mean the prep video hasn't been shared yet — don't mark ✅ until the source is known

## Troubleshooting

**smoke.sh shows no sessions** — check that `SCHEDULE` path in `smoke.sh` matches the actual file location  
**Push fails** — run `git -C "D:/AI Training" remote -v` to confirm origin is set to `https://github.com/ayesha-shaik/AI_Training.git`
