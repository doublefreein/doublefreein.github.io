#!/bin/bash

# Multilingual Content Management Script for Doublefree.in
# This script helps create Marathi versions of English content

echo "🌐 Doublefree Multilingual Content Manager"
echo "=========================================="

# Function to create Marathi version of a page
create_marathi_page() {
    local english_file="$1"
    local marathi_file="$2"
    
    if [ -f "$english_file" ]; then
        echo "📝 Creating Marathi version: $marathi_file"
        
        # Create directory if it doesn't exist
        mkdir -p "$(dirname "$marathi_file")"
        
        # Copy the file and update front matter
        cp "$english_file" "$marathi_file"
        
        # Update front matter for Marathi
        sed -i 's/permalink: \//permalink: \/mr\//' "$marathi_file"
        sed -i '/layout:/a lang: mr' "$marathi_file"
        
        echo "✅ Created: $marathi_file"
        echo "⚠️  Remember to translate the content!"
    else
        echo "❌ English file not found: $english_file"
    fi
}

# Function to create Marathi version of a post
create_marathi_post() {
    local english_file="$1"
    local marathi_file="$2"
    
    if [ -f "$english_file" ]; then
        echo "📝 Creating Marathi version: $marathi_file"
        
        # Create directory if it doesn't exist
        mkdir -p "$(dirname "$marathi_file")"
        
        # Copy the file and update front matter
        cp "$english_file" "$marathi_file"
        
        # Update front matter for Marathi
        sed -i 's/layout: single_multilingual/layout: single_multilingual\nlang: mr/' "$marathi_file"
        
        echo "✅ Created: $marathi_file"
        echo "⚠️  Remember to translate the content!"
    else
        echo "❌ English file not found: $english_file"
    fi
}

# Main menu
while true; do
    echo ""
    echo "Choose an option:"
    echo "1) Create Marathi version of a page"
    echo "2) Create Marathi version of a post"
    echo "3) List existing Marathi content"
    echo "4) Exit"
    echo ""
    read -p "Enter your choice (1-4): " choice
    
    case $choice in
        1)
            echo "Available English pages:"
            ls _pages/*.md | sed 's/_pages\///g' | sed 's/\.md//g'
            echo ""
            read -p "Enter page name (without .md): " page_name
            create_marathi_page "_pages/${page_name}.md" "mr/_pages/${page_name}.md"
            ;;
        2)
            echo "Available English posts:"
            ls _posts/*.md | sed 's/_posts\///g' | sed 's/\.md//g'
            echo ""
            read -p "Enter post filename (with date): " post_name
            create_marathi_post "_posts/${post_name}.md" "mr/_posts/${post_name}.md"
            ;;
        3)
            echo "📋 Existing Marathi content:"
            echo "Pages:"
            ls mr/_pages/*.md 2>/dev/null | sed 's/mr\/_pages\///g' | sed 's/\.md//g' || echo "No Marathi pages found"
            echo "Posts:"
            ls mr/_posts/*.md 2>/dev/null | sed 's/mr\/_posts\///g' | sed 's/\.md//g' || echo "No Marathi posts found"
            ;;
        4)
            echo "👋 Goodbye!"
            exit 0
            ;;
        *)
            echo "❌ Invalid choice. Please try again."
            ;;
    esac
done
