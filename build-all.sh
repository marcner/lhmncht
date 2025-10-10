#!/bin/bash
echo "🔨 Building all books..."
cd le-istitutioni-harmoniche && mdbook build && cd ..
cd harmonielehre && mdbook build && cd ..
cd harmonie-universelle && mdbook build && cd ..
echo "✅ All books built!"
