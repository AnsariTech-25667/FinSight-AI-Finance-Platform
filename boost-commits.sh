#!/bin/bash

# --- 13. Update README with badges ---
echo -e "![Build Status](https://github.com/AnsariTech-25667/FinSight-AI/actions/workflows/ci.yml/badge.svg)\n![License](https://img.shields.io/github/license/AnsariTech-25667/FinSight-AI)\n\n$(cat README.md)" > README.md
git add README.md
git commit -m "docs: Added CI and License badges to README"
git push

# --- 14. Add Getting Started section ---
echo -e "\n## Getting Started\nRun the following to install and start:\n\`\`\`bash\nnpm install\nnpm start\n\`\`\`" >> README.md
git add README.md
git commit -m "docs: Added getting started guide"
git push

# --- 15. Add .editorconfig ---
cat <<EOF > .editorconfig
root = true

[*]
indent_style = space
indent_size = 2
end_of_line = lf
charset = utf-8
trim_trailing_whitespace = true
insert_final_newline = true
EOF
git add .editorconfig
git commit -m "chore: Added editorconfig for consistent code style"
git push

# --- 16. Add Dockerfile ---
cat <<EOF > Dockerfile
FROM node:18
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
CMD ["npm", "start"]
EOF
git add Dockerfile
git commit -m "chore: Added Dockerfile for containerized deployment"
git push

# --- 17. Add docker-compose.yml ---
cat <<EOF > docker-compose.yml
version: "3.9"
services:
  app:
    build: .
    ports:
      - "3000:3000"
    volumes:
      - .:/app
EOF
git add docker-compose.yml
git commit -m "chore: Added docker-compose for development setup"
git push

# --- 18. Add Dependabot config ---
mkdir -p .github/dependabot
cat <<EOF > .github/dependabot/dependabot.yml
version: 2
updates:
  - package-ecosystem: "npm"
    directory: "/"
    schedule:
      interval: "weekly"
EOF
git add .github/dependabot/dependabot.yml
git commit -m "chore: Added Dependabot for dependency updates"
git push

# --- 19. Add tests folder ---
mkdir -p tests
cat <<EOF > tests/sample.test.js
test('sample test', () => {
  expect(2 + 2).toBe(4);
});
EOF
git add tests
git commit -m "test: Added initial Jest sample test"
git push

# --- 20. Add test script to package.json ---
sed -i 's/"scripts": {/"scripts": {\n    "test": "jest",/' package.json
git add package.json
git commit -m "chore: Added test script in package.json"
git push

# --- 21. Add .nvmrc ---
echo "18" > .nvmrc
git add .nvmrc
git commit -m "chore: Added nvmrc for Node version management"
git push

# --- 22. Add src/index.js ---
mkdir -p src
echo 'console.log("FinSight-AI is running...");' > src/index.js
git add src/index.js
git commit -m "feat: Added entry point file"
git push

# --- 23. Add src/utils/math.js ---
mkdir -p src/utils
cat <<EOF > src/utils/math.js
function add(a, b) {
  return a + b;
}
module.exports = { add };
EOF
git add src/utils/math.js
git commit -m "feat: Added math utility function"
git push

# --- 24. Add ESLint config ---
cat <<EOF > .eslintrc.json
{
  "env": {
    "browser": true,
    "es2021": true
  },
  "extends": ["eslint:recommended"],
  "rules": {
    "semi": ["error", "always"],
    "quotes": ["error", "double"]
  }
}
EOF
git add .eslintrc.json
git commit -m "chore: Added ESLint configuration"
git push

# --- 25. Add VSCode workspace settings ---
mkdir -p .vscode
cat <<EOF > .vscode/settings.json
{
  "editor.formatOnSave": true,
  "files.exclude": {
    "node_modules": true
  }
}
EOF
git add .vscode/settings.json
git commit -m "chore: Added VSCode workspace settings"
git push
