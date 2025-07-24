#!/bin/bash

echo "Setting up GitHub repository..."

# Create repo using gh CLI with web auth
gh repo create framer-rive-assets --public --description "Rive animation files for Framer projects" --source=. --remote=origin --push

# If that fails, provide manual instructions
if [ $? -ne 0 ]; then
    echo ""
    echo "Please create the repository manually:"
    echo "1. Go to: https://github.com/new"
    echo "2. Repository name: framer-rive-assets"
    echo "3. Make it Public"
    echo "4. Don't initialize with README"
    echo "5. Create repository"
    echo ""
    echo "Then run these commands:"
    echo "git remote add origin https://github.com/adshine/framer-rive-assets.git"
    echo "git push -u origin main"
fi