# Copilot Working Rules

## Planning First

- Always present a short action plan before making any code edits, running commands, or other tool actions.
- Wait for user confirmation before executing the plan when the user asks for planning first.

## Execution Style

- Keep plans concise and numbered.
- After approval, execute exactly what was planned.
- If scope changes, present an updated plan before continuing.

## Simplicity First (KISS)

- Do not overengineer solutions.
- Prefer simple, readable code over complex abstractions.
- Implement only what is needed for the current requirement.
- Avoid premature optimization and unnecessary layers.
- Prefer small functions and straightforward naming over clever patterns.

## Localization Rule

- Do not hardcode user-facing text.
- Keep all user-facing text in `lib/l10n/*.arb` files.
- Regenerate localization outputs after ARB changes.
