# Learning Log — Applied AI & ML

*A running record of every study session: what I understood, what challenged me, and what to revisit.*

**How to read this:** newest sessions at the top. Each entry captures the concepts covered,
the "aha" understandings, the sticking points, and the action items for next time.

---

<!-- NEW ENTRIES GO BELOW THIS LINE -->

## Session — June 27, 2026 (foundation so far)

**Topic:** Stats foundation (mean/median, std, IQR) + Linear Regression intuition

**✅ Understood well:**
- Median is robust to outliers — *why* the breast-cancer notebook replaces outliers with the median, not the mean
- Standard deviation = spread around the mean
- IQR method: IQR = Q3 − Q1; bounds = Q1 − 1.5×IQR and Q3 + 1.5×IQR; outside = outlier

**⚠️ Challenges / sticking points:**
- Pending check to confirm: `5, 6, 7, 8, 50` with Q1=6, Q3=8 → identify the outlier (answer: 50, since upper bound = 11)

**🎯 Action items / next time:**
- Confirm the IQR check above
- Unit C — translate stats concepts into real Python code
- Then: Linear Regression intuition before the live regression session

---
