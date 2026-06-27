#!/usr/bin/env bash
# smoke.sh — show upcoming sessions and prep status from IITKGP_Study_Schedule.md
SCHEDULE="D:/AI Training/IITKGP_Study_Schedule.md"

echo "=== AI Training Schedule — $(date '+%b %d %Y') ==="
echo ""
echo "--- UPCOMING SESSIONS ---"
grep -E "\| [0-9]+\s+\| (Jun|Jul|Aug|Sep|Oct|Nov|Dec|Jan)" "$SCHEDULE" | head -8

echo ""
echo "--- PENDING PREP (⏳ slots) ---"
grep "⏳" "$SCHEDULE" | grep -v "^#" | grep -v "^-" | head -10

echo ""
echo "--- COMPLETED PREP ---"
grep "✅" "$SCHEDULE" | grep -v "^#" | grep -v "^-" | wc -l | xargs echo "Total completed:"
