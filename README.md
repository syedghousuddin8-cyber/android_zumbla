# android_zumbla

Android project prepared for Git.

## How to push to GitHub

1. Create a new empty repository on GitHub (do **not** initialize with a README).
2. Run the script below (replace the URL with your repo URL).

```bash
bash push_to_github.sh https://github.com/USERNAME/android_zumbla.git
```

Or run the commands manually:

```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/USERNAME/android_zumbla.git
git push -u origin main
```
