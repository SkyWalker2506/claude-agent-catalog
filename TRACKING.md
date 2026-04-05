# Agent Tracking System

Her agent kullanimi otomatik loglanir. Hangi agent'lar kullanildi, hangisi test edilmedi, hangisi basarisiz oldu — hepsi takip edilir.

## Tracking Dosyalari

```
~/.claude/agent-memory/
├── agent_performance.json    # Agent bazli metrikler
├── decisions.json            # Routing kararlari
├── failures.json             # Basarisiz gorevler
├── adaptive_rules.json       # Otomatik ogrenen kurallar
└── usage_log.jsonl           # Her dispatch'in kronolojik logu
```

## usage_log.jsonl Format

Her dispatch bir satir:
```json
{"ts":"2026-04-05T10:30:00Z","agent":"B2","task":"REST endpoint yaz","model":"sonnet","tool_calls":12,"duration_sec":45,"outcome":"success","project":"my-app"}
```

## Kullanim Raporu

`/agent-refine` calistirdiginda otomatik rapor:

```
## Agent Kullanim Raporu

### Kullanilan (test edilmis)
- B2 Backend Coder: 45 gorev, %82 basari
- K1 Web Researcher: 12 gorev, %91 basari

### Hic kullanilmamis
- D4 Figma Assistant: 0 gorev
- E3 CAD Automation: 0 gorev
...

### Basarisiz (dikkat)
- B14 Scripting Agent: 3 gorev, %33 basari
  → Oneri: model upgrade (local-qwen-9b → haiku)
```

## Otomatik Kurallar

`adaptive_rules.json` zamanla ogrenir:

```json
{
  "rules": [
    {
      "condition": "B2.fail_rate > 0.4 with qwen-free",
      "action": "skip qwen-free for B2, use local-qwen-9b",
      "source": "auto"
    }
  ]
}
```

Haftalik A7 (Weekly Analyst) bu kurallari gozden gecirir.
