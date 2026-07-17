#!/bin/bash

# Shiksha Sathi - AI Assistant for Teachers
# This script helps with local development setup

echo "🎓 Shiksha Sathi - Setup Script"
echo "================================"

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js first."
    exit 1
fi

echo "✅ Node.js version: $(node --version)"

# Check if yarn is installed
if ! command -v yarn &> /dev/null; then
    echo "📦 Installing yarn globally..."
    npm install -g yarn
fi

echo "✅ Yarn version: $(yarn --version)"

# Install dependencies
echo "📥 Installing dependencies..."
yarn install

# Copy environment variables
if [ ! -f .env ]; then
    echo "📋 Creating .env file from .env.example..."
    cp .env.example .env
    echo "⚠️  Please update .env with your API keys"
else
    echo "✅ .env file already exists"
fi

echo ""
echo "🚀 Setup complete!"
echo "📝 Next steps:"
echo "   1. Update .env with your API keys"
echo "   2. Run 'yarn dev' to start development server"
echo "   3. Open http://localhost:3000 in your browser"
