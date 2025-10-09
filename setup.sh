#!/bin/bash
# Setup mdBook documentation in your EXISTING repository
# Run this from wherever you want the books to live

echo "📚 Setting up mdBook documentation in current directory"
echo "📍 Current location: $(pwd)"
echo ""

read -p "Continue here? (y/n) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Cancelled."
    exit 1
fi

# Create individual book projects
echo ""
echo "📖 Creating Book 1: Le Istitutioni Harmoniche..."
mdbook init le-istitutioni-harmoniche << EOF
y
Le Istitutioni Harmoniche
EOF

echo "📖 Creating Book 2: Harmonielehre..."
mdbook init harmonielehre << EOF
y
Harmonielehre
EOF

echo "📖 Creating Book 3: Harmonie Universelle..."
mdbook init harmonie-universelle << EOF
y
Harmonie Universelle
EOF

echo ""
echo "✅ Created 3 books!"
echo ""

# Add content to Rust Guide
echo "✍️  Adding content to books..."

cat > le-istitutioni-harmoniche/src/SUMMARY.md << 'EOF'
# Summary

[LE ISTITUTIONI HARMONICHE](./cover-page.md)
[THE HARMONIC INSTITUTIONS](./title-page.md)
[Preface](./preface.md)

# Part 1
- [P1 Chapter 1](./p1-01.md)
- [P1 Chapter 2](./p1-02.md)
- [P1 Chapter 3](./p1-03.md)
EOF

cat > le-istitutioni-harmoniche/src/introduction.md << 'EOF'
# Cover

LE ISTIUTIONI HARMONICHE

By M. GIOSEFFO ZARLINO OF CHIOGGIA

Venice, 1558

# Title Page

Rust is a systems programming language focusing on safety, speed, and concurrency.

## What You'll Learn

- Rust fundamentals
- Memory management
- Concurrency patterns
- Building real projects

Let's get started!
EOF

cat > le-istitutioni-harmoniche/src/installation.md << 'EOF'
# Installation

Install Rust using rustup:

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

Verify installation:

```bash
rustc --version
cargo --version
```
EOF

cat > le-istitutioni-harmoniche/src/hello-world.md << 'EOF'
# Hello World

Your first Rust program:

```rust
fn main() {
    println!("Hello, world!");
}
```

Run it:

```bash
cargo run
```
EOF

touch le-istitutioni-harmoniche/src/ownership.md
touch le-istitutioni-harmoniche/src/borrowing.md
touch le-istitutioni-harmoniche/src/lifetimes.md

# Add content to Web Dev
cat > harmonielehre/src/SUMMARY.md << 'EOF'
# Summary

[Introduction](./introduction.md)

# HTML & CSS
- [HTML Basics](./html-basics.md)
- [CSS Fundamentals](./css-fundamentals.md)

# JavaScript
- [JavaScript Basics](./js-basics.md)
- [DOM Manipulation](./dom-manipulation.md)
EOF

cat > harmonielehre/src/introduction.md << 'EOF'
# Web Development Guide

Learn modern web development!

## Topics

- HTML5 & CSS3
- JavaScript (ES6+)
- Modern frameworks
- Best practices
EOF

cat > harmonielehre/src/html-basics.md << 'EOF'
# HTML Basics

HTML structure:

```html
<!DOCTYPE html>
<html>
<head>
    <title>My Page</title>
</head>
<body>
    <h1>Hello World</h1>
</body>
</html>
```
EOF

touch harmonielehre/src/css-fundamentals.md
touch harmonielehre/src/js-basics.md
touch harmonielehre/src/dom-manipulation.md

# Add content to API Design
cat > harmonie-universelle/src/SUMMARY.md << 'EOF'
# Summary

[Introduction](./introduction.md)

# Fundamentals
- [REST Principles](./rest-principles.md)
- [HTTP Methods](./http-methods.md)

# Design
- [Resource Naming](./resource-naming.md)
- [Versioning](./versioning.md)
EOF

cat > harmonie-universelle/src/introduction.md << 'EOF'
# API Design Patterns

Learn to design great APIs!

## What Makes a Great API?

- Intuitive
- Consistent
- Well-documented
- Secure
- Scalable
EOF

cat > harmonie-universelle/src/rest-principles.md << 'EOF'
# RESTful Principles

REST API basics:

```
GET    /users          # List users
GET    /users/123      # Get user
POST   /users          # Create user
PUT    /users/123      # Update user
DELETE /users/123      # Delete user
```
EOF

touch harmonie-universelle/src/http-methods.md
touch harmonie-universelle/src/resource-naming.md
touch harmonie-universelle/src/versioning.md

echo "✅ Content added!"
echo ""

# Create landing page
echo "🏠 Creating landing page..."
cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>L'Harmonicht</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 40px 20px;
        }

        .container {
            max-width: 1200px;
            width: 100%;
        }

        header {
            text-align: center;
            color: white;
            margin-bottom: 60px;
        }

        h1 {
            font-size: 48px;
            margin-bottom: 10px;
        }

        .subtitle {
            font-size: 20px;
            opacity: 0.9;
        }

        .books-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 30px;
        }

        .book-card {
            background: white;
            border-radius: 12px;
            padding: 30px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
            transition: transform 0.3s, box-shadow 0.3s;
            text-decoration: none;
            color: inherit;
            display: block;
        }

        .book-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.4);
        }

        .book-icon {
            font-size: 64px;
            margin-bottom: 20px;
        }

        .book-title {
            font-size: 24px;
            font-weight: 600;
            margin-bottom: 10px;
            color: #333;
        }

        .book-description {
            color: #666;
            line-height: 1.6;
            margin-bottom: 20px;
        }

        .book-link {
            color: #667eea;
            font-weight: 500;
        }

        footer {
            text-align: center;
            color: white;
            margin-top: 60px;
            opacity: 0.8;
        }

        @media (max-width: 768px) {
            h1 { font-size: 36px; }
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1>📚 L'Harmonicht</h1>
            <p class="subtitle">Choose a guide to get started</p>
        </header>

        <div class="books-grid">
            <a href="./le-istitutioni-harmoniche/book/index.html" class="book-card">
                <div class="book-icon">🦀</div>
                <h2 class="book-title">Le Istitutioni Harmoniche</h2>
                <p class="book-description">
                    Le Istitutioni Harmoniche
                </p>
                <span class="book-link">Start reading →</span>
            </a>

            <a href="./harmonielehre/book/index.html" class="book-card">
                <div class="book-icon">🌐</div>
                <h2 class="book-title">Harmonielehre</h2>
                <p class="book-description">
                    Harmonielehre
                </p>
                <span class="book-link">Start reading →</span>
            </a>

            <a href="./harmonie-universelle/book/index.html" class="book-card">
                <div class="book-icon">🔌</div>
                <h2 class="book-title">Harmonie Universelle</h2>
                <p class="book-description">
                    Harmonie Universelle
                </p>
                <span class="book-link">Start reading →</span>
            </a>
        </div>

        <footer>
            <p>Built with ❤️ using mdBook</p>
        </footer>
    </div>
</body>
</html>
EOF

echo "✅ Landing page created!"
echo ""

# Create build script
echo "🔧 Creating build script..."
cat > build-all.sh << 'EOF'
#!/bin/bash
echo "🔨 Building all books..."
cd le-istitutioni-harmoniche && mdbook build && cd ..
cd harmonielehre && mdbook build && cd ..
cd harmonie-universelle && mdbook build && cd ..
echo "✅ All books built!"
EOF

chmod +x build-all.sh

# Create serve script
cat > serve.sh << 'EOF'
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
EOF

chmod +x serve.sh

echo "✅ Scripts created!"
echo ""

# Update .gitignore if it exists
if [ -f ../.gitignore ]; then
    echo "📝 Updating .gitignore..."
    cat >> ../.gitignore << 'EOF'

# mdBook output
*/book/
EOF
elif [ -f .gitignore ]; then
    echo "📝 Updating .gitignore..."
    cat >> .gitignore << 'EOF'

# mdBook output
*/book/
EOF
else
    echo "📝 Creating .gitignore..."
    cat > .gitignore << 'EOF'
# mdBook output
*/book/
EOF
fi

echo ""
echo "═══════════════════════════════════════════"
echo "🎉 Setup Complete!"
echo "═══════════════════════════════════════════"
echo ""
echo "📁 Created in: $(pwd)"
echo ""
echo "   ✓ le-istitutioni-harmoniche/"
echo "   ✓ harmonielehre/"
echo "   ✓ harmonie-universelle/"
echo "   ✓ index.html"
echo "   ✓ build-all.sh"
echo "   ✓ serve.sh"
echo ""
echo "🚀 Next steps:"
echo ""
echo "   # Serve all books:"
echo "   ./serve.sh"
echo ""
echo "   # Or serve one book:"
echo "   cd le-istitutioni-harmoniche && mdbook serve --open"
echo ""
echo "   # Build all books:"
echo "   ./build-all.sh"
echo ""
echo "═══════════════════════════════════════════"
