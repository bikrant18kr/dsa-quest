# DSA Quest Cloud

A full cloud-ready DSA revision website.

## What works
- Supabase email/password authentication
- Per-user cloud progress
- Automatic debounced cloud saves
- Cloud load after login
- Local fallback/demo mode
- Dashboard, daily mission, master bank, search/filter, pattern lab
- Focus timer
- Mistake lab
- Personal problem notes
- XP, achievements, daily history and heatmap
- Analytics
- JSON backup/restore
- Responsive mobile UI

## One-time cloud setup
1. Create a Supabase project.
2. Open SQL Editor.
3. Run `supabase.sql`.
4. Open `index.html`.
5. Enter your Supabase Project URL and publishable/anon key.
6. Create an account or sign in.

Do NOT use a Supabase secret/service-role key in the browser.

## Important
This is a frontend project and cannot itself deploy to the internet. To make it a public website, upload the folder to a static host such as Vercel/Netlify/GitHub Pages, or serve it from your own web server. The Supabase database is what makes progress follow the account across devices.
