-- DSA Quest Cloud: run this whole file in Supabase SQL Editor.
create table if not exists public.dsa_progress (
  user_id uuid primary key references auth.users(id) on delete cascade,
  payload jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.dsa_progress enable row level security;

drop policy if exists "dsa progress select own" on public.dsa_progress;
drop policy if exists "dsa progress insert own" on public.dsa_progress;
drop policy if exists "dsa progress update own" on public.dsa_progress;

create policy "dsa progress select own"
on public.dsa_progress for select
to authenticated
using (auth.uid() = user_id);

create policy "dsa progress insert own"
on public.dsa_progress for insert
to authenticated
with check (auth.uid() = user_id);

create policy "dsa progress update own"
on public.dsa_progress for update
to authenticated
using (auth.uid() = user_id)
with check (auth.uid() = user_id);

-- Optional index for the sync lookup.
create index if not exists dsa_progress_updated_at_idx
on public.dsa_progress(updated_at);
