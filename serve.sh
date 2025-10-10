#!/bin/bash
echo "🚀 Starting development servers..."
echo ""
echo "  Le Istitutioni Harmoniche:  http://localhost:3000"
echo "  Harmonielehre:     http://localhost:3001"
echo "  Harmonie Universelle:  http://localhost:3002"
echo ""
(cd le-istitutioni-harmoniche && mdbook serve -p 3000) &
(cd harmonielehre && mdbook serve -p 3001) &
(cd harmonie-universelle && mdbook serve -p 3002) &
wait
