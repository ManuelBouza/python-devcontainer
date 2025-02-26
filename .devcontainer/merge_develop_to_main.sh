#!/bin/bash

set -e  # Stop execution if an error occurs

echo "🔀 Switching to the main branch..."
git switch main
echo ""

echo "🔧 Merging changes from develop into main..."
git merge develop --no-ff
echo ""

echo "🚀 Pushing changes to main..."
git push
echo ""

echo "🏷️ Pushing tags..."
git push --tags
echo ""

echo "🔄 Switching back to the develop branch..."
git switch develop
echo ""

echo "✅ Merge, push, and branch switch completed successfully! 🎉"
