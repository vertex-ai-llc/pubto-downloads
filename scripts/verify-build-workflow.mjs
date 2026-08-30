import assert from "node:assert/strict";
import fs from "node:fs";

const workflow = fs.readFileSync(new URL("../.github/workflows/build-release.yml", import.meta.url), "utf8");
const readme = fs.readFileSync(new URL("../README.md", import.meta.url), "utf8");

for (const [pattern, label] of [
  [/name: Build Pubto Desktop/, "workflow name"],
  [/repository_dispatch:/, "source tag dispatch"],
  [/workflow_dispatch:/, "manual recovery trigger"],
  [/target.*all/s, "single all-target dispatch"],
  [/strategy:[\s\S]*matrix:/, "parallel macOS matrix"],
  [/runs-on: windows-2022/, "Windows builder"],
  [/actions\/upload-artifact@v4/g, "runner artifact handoff"],
  [/actions\/download-artifact@v4/, "runner artifact aggregation"],
  [/gh release create[\s\S]*--draft/, "draft release transaction"],
  [/gh release edit[\s\S]*--draft=false/, "atomic release publication"],
  [/generate-release-manifest\.mjs/, "release manifest generation"],
  [/render-homebrew-cask\.mjs/, "Homebrew generation"],
  [/verify-published-release\.mjs/, "remote publication verification"],
  [/PUBTO_DESKTOP_REQUIRE_CONTROL_SEEDS/, "production Control seed gate"],
]) assert.match(workflow, pattern, `missing ${label}`);

for (const [pattern, label] of [
  [/circleci|CIRCLE_/i, "CircleCI"],
  [/control\.postlynpress\.com/i, "test Control"],
  [/github\.com\/vertex-ai-llc\/pubto(?:\.git)?(?=$|[\s"'`/#])/i, "private source repository"],
  [/github_pat_[A-Za-z0-9_]+|gh[pousr]_[A-Za-z0-9_]{20,}/i, "GitHub credential"],
  [/GOCSPX-|cfut_/i, "service credential"],
  [/downloads?\s+to\s+(?:the\s+)?local|local\s+upload/i, "maintainer-local release path"],
]) {
  assert.doesNotMatch(workflow, pattern, `workflow exposes or uses ${label}`);
  assert.doesNotMatch(readme, pattern, `README exposes or uses ${label}`);
}

for (const internal of ["BUILD_SOURCE_TOKEN", "APPLE_CERTIFICATE", "PUBTO_DESKTOP_CONTROL_URLS"]) {
  assert.ok(!readme.includes(internal), `README exposes internal setting ${internal}`);
}

assert.match(readme, /https:\/\/pubto\.dev\/downloads/);
assert.match(readme, /Install or update the official Pubto Skill/);
console.log("downloads workflow contract: PASS");

