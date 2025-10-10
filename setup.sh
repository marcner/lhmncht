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

- [Part 1]
  - [Chapter 1](./p1-01.md)
  - [Chapter 2](./p1-02.md)
  - [Chapter 3](./p1-03.md)
EOF

cat > le-istitutioni-harmoniche/src/cover-page.md << 'EOF'

# Cover

LE ISTIUTIONI HARMONICHE

By M. GIOSEFFO ZARLINO OF CHIOGGIA

Venice, 1558

EOF

cat > le-istitutioni-harmoniche/src/title-page.md << 'EOF'

# Title Page

THE HARMONIC INSTITUTIONS
OF M. GIOSEFFO ZARLINO CHIOGGIA

In which, beyond the matters pertaining to **MUSIC**, many passages are explained from Poets, Historians, and Philosophers; as can be clearly seen in reading them.

*"Without rhythm, there is no labor; and without music, there is no toil."*

With Privilege of the Most Illustrious Signoria of Venice, for ten years.

**IN VENICE 1558**

EOF

cat > le-istitutioni-harmoniche/src/preface.md << 'EOF'

### The Privilege of the Most Illustrious Signoria of Venice

*October 16, 1557, in Council*

It is granted to M. P. Gioseffo Zarlino of Chioggia, that no one other than he, or whoever has authority from him, may print in this our city, nor in any place of our Signoria, nor sell elsewhere anything printed therein, the work titled *Harmonic Institutions*, Latin or vernacular, composed by him, for the space of ten years forthcoming, under all the penalties contained in his supplication: he being obligated to observe all that is disposed in matters of Printing.

*Iosephus Tramezinus*
*Duc. Not.*

---

## DEDICATION

### TO THE MOST ILLUSTRIOUS AND MOST REVEREND LORD
### THE LORD VINCENZO DIEDO
### PATRIARCH OF VENICE

The Ancient Sages were of common opinion that all things, through the desire they have to return to their origin, are naturally inclined to their proper operation and to attain their perfection. Wherefore, Science being the perfection of the Intellect, and Understanding and Knowledge being the proper operation of Man, by means of which he comes to join himself to his Principle: from this it follows that everyone is naturally drawn to the knowledge of things, nor does he ever tire or satiate himself in going to investigate their causes and to wish to understand the high secrets of Nature.

Nor do I think that the hope of acquiring knowledge of many things alone spurs him to this, but even of a single thing: because in knowing it he understands that he is walking toward perfection; and he judges that in this, surpassing all others, it is a thing worthy of much praise and honorable.

Therefore I believe that men, loving to hold the first place in some faculty, day by day, now adding one thing and now another, have caused the Sciences and Arts to grow in such a way that it is almost impossible to see from what side one might add anything new to them. And although it could be said that each of them has had this good fortune, perhaps because of the profit that men derive from them; nevertheless, until now it seems to me, if I am not mistaken, that Music has been somewhat unfortunate: because although many authors are found who have written many things about the Science and the Art, nevertheless a man reading them cannot acquire from them that knowledge which he desires: because truly they have not touched sufficiently, nor shown anything of those things that are of great importance.

### Zarlino's Purpose in Writing

Wherefore I, who from my tender years have always had a natural inclination to Music, having already consumed a good part of my age in the knowledge of her, having perceived this thing, wished to try whether I could in some manner draw the things that pertain to Theory and Practice toward their perfection, to do something pleasing to all those who delight in such a faculty. And although I knew that this was too heavy a burden for me, nevertheless I thought that even if I was not going to reduce them to their ultimate degree of perfection, at least I would perhaps have been able to direct the matter in such a way that I would have been the cause of giving courage to some noble spirit to pass even further beyond.

Wherefore, having proposed this end to myself, and having written these **INSTITUTIONS** in past years, which teach the things pertaining to one and the other of the named parts, encouraged by my friends who judged they could be useful to Students, I have decided to send them into the light, dedicating them to Your Most Illustrious and Most Reverend Lordship.

### Reasons for the Dedication

And I have been moved to do this primarily to show in some part how much I am obliged for the kindnesses shown to me by you; then, because if perchance there should be anyone of such malign spirit who, not having respect that I do it with the intention of helping others, should move to criticize these my labors, at least he would be constrained to have regard for the Most Illustrious name of that Lord to whom they have been dedicated.

Beyond this is added that, your singular prudence, justice, religion, and benignity—things in you known and praised by all—having given birth in me to an incredible reverence and devotion, I had no other way or means to be able to demonstrate it.

### The Virtues of Patriarch Diedo

Nor can one truly have doubt of the singular virtues of Your Most Illustrious and Most Reverend Lordship, since clear testimony has been given of them by that most wise Senate, which, through many experiences having known how prudent you were in the governments of the Republic, both in the city and outside, in the regencies of Verona and Udine, ultimately finding yourself in Padua as magistrate when the death of the Most Reverend Contarini occurred, judging you worthy of such honor, elected you Patriarch of Venice.

And although honors obtained most often change the minds and customs of men, nevertheless, though you have attained such an honored rank, the goodness of your spirit has not changed or diminished in the slightest; rather it has greatly increased, as can clearly be seen: for immediately upon attaining this dignity, you turned first to adorning the Church, and then, with the greatest expense, to repairing the Palace, which was already beginning to fall into ruin.

But just as you continually do not cease to renew and adorn the material church, so from day to day (which is the most evident sign of religion and charity) you do not cease to succor and sustain the spiritual one, continually offering help to the Poor; not only to those of your city, but also to foreigners, and to those who, departing from infidelity, come to Christianity. And as a vigilant pastor and diligent farmer and guardian of the Lord's Vineyard, you attend to ensuring that your flock is not harmed by Wolves, and that from that Vineyard are removed the branches that are not good, or else they are governed in such a manner that they become fruitful.

### Conclusion

All these things truly give the clearest testimony to the World of your rare virtues, which have moved me to dedicate to you these my labors, such as they are. And although the gift is small, at least regard the devotion of my spirit toward you, which is infinitely great.

---

*Of Your Most Illustrious and Most Reverend Lordship*

*Most affectionate Servant*

**Gioseffo Zarlino**

EOF

touch le-istitutioni-harmoniche/src/p1-01.md
touch le-istitutioni-harmoniche/src/p1-02.md
touch le-istitutioni-harmoniche/src/p1-03.md

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
