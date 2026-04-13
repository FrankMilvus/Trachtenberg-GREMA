# Project Improvements: Trachtenberg-GREMA

This document summarizes an audit of the repository and provides a prioritized, actionable plan for fixes, refactors, tests, CI, and security hardening.

Summary:
- Small-to-medium Flutter app using `provider` for state, localized using ARB files and generated `lib/l10n` code.
- Quick wins: security (keystore in repo), tests, lints, CI.

Files inspected (examples):
- [pubspec.yaml](pubspec.yaml)
- [analysis_options.yaml](analysis_options.yaml)
- [lib/main.dart](lib/main.dart)
- [lib/helper/digit_helper.dart](lib/helper/digit_helper.dart)
- [lib/providers/app_provider.dart](lib/providers/app_provider.dart)
- [lib/views/widget_tree.dart](lib/views/widget_tree.dart)
- [android/app/build.gradle.kts](android/app/build.gradle.kts)
- [android/app/key.properties](android/app/key.properties)
- [test/widget_test.dart](test/widget_test.dart)

High-level findings (short):
- **Secrets committed:** [android/app/key.properties](android/app/key.properties) contains keystore passwords — high priority to remove and rotate keys.
- **Generated / build artifacts present in repo history:** `.dart_tool/`, `build/` and other generated files were observed in the workspace; ensure these are not tracked.
- **Lints/tests:** only the default Flutter widget test exists and will likely fail (template counter test). Linting configuration uses `flutter_lints` but stricter rules can be enabled.
- **Dependencies:** `intl: any` in `pubspec.yaml` — using `any` is brittle; pin or range versions.
- **Navigation pattern:** Current page switching uses an index-based `pages` list in `WidgetTree`. This scales poorly for complex navigation.
- **Localization:** `lib/l10n` contains generated files with `// ignore_for_file: type=lint` and `unused_import` ignores. Consider regenerating and integrating l10n into CI.

Priority checklist (Immediate → Later):

High Priority (fix within 0–2 days):
- Remove sensitive files from the repository and rotate keys.
	- Remove the file from the index: `git rm --cached android/app/key.properties` and commit.
	- Rotate the keystore and upload new keys securely (do NOT keep them in the repo).
	- Purge the sensitive file from history (use `git filter-repo` or BFG) and rotate credentials.
	- Update `android/app/build.gradle.kts` to read credentials from environment variables or CI secrets instead of a checked-in file.
- Remove tracked build artifacts and `.dart_tool` from the repo if present: `git rm -r --cached build .dart_tool` → commit.

Medium Priority (1–3 days):
- Run static analysis and fix issues: `flutter analyze` then address errors/warnings.
- Replace the default failing test (`test/widget_test.dart`) with meaningful unit tests:
	- `DigitHelper` unit tests (number-to-list and back, randomEven behavior edge cases).
	- Widget tests for key screens (warmup, workout flow).
- Pin `intl` and other deps in `pubspec.yaml` to a tested range (e.g., `intl: ^0.18.0` if compatible) and run `flutter pub upgrade --major-versions` in a safe branch.

Medium→Low Priority (3–7 days):
- Refactor navigation away from index-based page switching in `lib/views/widget_tree.dart`.
	- Options: named routes, `Navigator` with typed arguments, or `go_router` for scalable routing.
- Improve provider usage to reduce rebuilds:
	- Replace broad `Consumer<AppProvider>` around `MaterialApp` with `Selector` or move appearance concerns higher-up so only parts of the tree rebuild.
- Add `const` modifiers and prefer immutable widgets where possible; run `dart fix --apply`.

Low Priority / Nice-to-have (weeks):
- Add integration tests covering flows (warmup → workout → results).
- Adopt stronger state-management (optional): consider `Riverpod` if app complexity grows.
- Performance profiling: measure with `flutter devtools` and optimize heavy build methods, image assets and layout passes.

Detailed findings and recommended actions (by area):

1) Security & repository hygiene
- Issue: [android/app/key.properties](android/app/key.properties) contains `storePassword` and `keyPassword` and is committed.
	- Action:
		1. Immediately remove the file from the index and commit: `git rm --cached android/app/key.properties`.
		2. Add `android/app/key.properties` and the JKS file (if present) to `.gitignore` (you already have entries, but the files are present in history).
		3. Purge the secret from repo history: use `git filter-repo --path android/app/key.properties --invert-paths` or BFG, then force-push to protected branches only after team coordination.
		4. Rotate the keystore passwords and the upload key in Play Console.
	- Prevent future: Configure CI to provide the keystore via secrets and environment variables; update `build.gradle.kts` to use `System.getenv("KEYSTORE_PASSWORD")` fallback.

2) Linting & static analysis
- Run: `flutter analyze` and fix all analyzer errors; treat warnings as errors in CI.
- Strengthen `analysis_options.yaml`: consider enabling `pedantic`/`package:lint` rules or add selected strict lints from `package:lint`.
- Remove or justify any `// ignore_for_file` in generated files; prefer keeping generated l10n outputs but ensure ARB source is authoritative.

3) Tests
- Replace default template test in `test/widget_test.dart`.
- Add unit tests for `DigitHelper` (`lib/helper/digit_helper.dart`).
- Add widget tests for interactive flows.
- Add a GitHub Actions workflow that runs `flutter analyze`, `flutter test`, and `flutter format --set-exit-if-changed` on PRs.

4) Dependencies & build
- Avoid `any` for `intl`. Pin to a safe version after verifying compatibility.
- Upgrade `flutter_lints` and other dev deps, then run `dart pub upgrade` in a branch and fix breaking lint changes.

5) Architecture & code quality
- `WidgetTree` uses a `pages` list + index → consider named routes to improve readability and reduce risk of index mismatches. See [lib/views/widget_tree.dart](lib/views/widget_tree.dart).
- Keep `ChangeNotifier` usage scoped and prefer `Selector`/`context.select` when only a specific field is required.
- Reuse common widgets and extract large build methods into smaller widgets to improve testability.

6) Localization
- Regenerate localizations with `flutter gen-l10n` and validate ARB keys.
- Add l10n generation to CI or commit generated files consistently (choose one approach and document it).

7) CI/CD
- Add a GitHub Actions workflow `./github/workflows/flutter.yml` (or similar) to run `flutter pub get`, `flutter analyze`, `flutter test`, and optionally `flutter build apk` in release for artifact validation.

Quick commands (run in project root):

```
flutter pub get
flutter analyze
flutter test
dart format --output=none --set-exit-if-changed .
git rm --cached android/app/key.properties
git rm -r --cached build .dart_tool
```

Estimates (rough):
- Secrets & repo purge: 0.5–2 days depending on coordination and rotation.
- Tests and analyze fixes: 1–3 days for first pass.
- Navigation refactor + provider improvements: 1–3 days.

Next steps I can take for you (pick one):
- Run `flutter analyze` and collect the report.
- Replace `test/widget_test.dart` with a set of unit tests for `DigitHelper`.
- Create a starter GitHub Actions CI workflow for `analyze` + `test`.

---

I will save this updated plan here: [PROJECT_IMPROVEMENTS.md](PROJECT_IMPROVEMENTS.md). If you want, I can now run `flutter analyze` and produce a precise list of analyzer issues to tackle next.

