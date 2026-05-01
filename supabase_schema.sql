-- ════════════════════════════════════════════════════════════════
-- Bijli Samjho — Supabase Schema (FREE tier safe)
-- Run this in Supabase SQL Editor
-- ════════════════════════════════════════════════════════════════

-- ─── bills table ─────────────────────────────────────────────────
-- Receives sync from local Isar DB.
-- Images are NEVER stored here — only bill summary data.
create table if not exists public.bills (
  id            uuid primary key default gen_random_uuid(),
  user_id       uuid references auth.users on delete cascade,
  consumer_number text,
  disco_name    text not null,
  bill_month    date not null,
  units_consumed integer not null,
  total_amount  decimal(10,2) not null,
  is_overcharged boolean default false,
  created_at    timestamptz default now()
);

-- Index for per-user queries
create index if not exists bills_user_id_idx on public.bills(user_id);
create index if not exists bills_disco_idx on public.bills(disco_name);
create index if not exists bills_month_idx on public.bills(bill_month);

-- Row Level Security — users can only see their own bills
alter table public.bills enable row level security;

create policy "Users see own bills"
  on public.bills for select
  using (auth.uid() = user_id);

create policy "Users insert own bills"
  on public.bills for insert
  with check (auth.uid() = user_id);

create policy "Users delete own bills"
  on public.bills for delete
  using (auth.uid() = user_id);


-- ─── tariff_reports table (crowdsourced overcharge reports) ───────
create table if not exists public.tariff_reports (
  id            uuid primary key default gen_random_uuid(),
  user_id       uuid references auth.users on delete set null,
  disco_name    text not null,
  district      text,
  report_type   text not null check (report_type in ('overcharge', 'meter_issue', 'bill_error')),
  units         integer,
  expected_amount  decimal(10,2),
  charged_amount   decimal(10,2),
  verified      boolean default false,
  created_at    timestamptz default now()
);

alter table public.tariff_reports enable row level security;

create policy "Anyone can insert tariff reports"
  on public.tariff_reports for insert
  with check (true);

create policy "Anyone can read verified reports"
  on public.tariff_reports for select
  using (verified = true);


-- ─── tariff_updates table (admin-maintained FC/QTA values) ────────
create table if not exists public.tariff_updates (
  id            uuid primary key default gen_random_uuid(),
  disco_name    text not null,
  fc_per_unit   decimal(6,4) not null default 0,
  qta_per_unit  decimal(6,4) not null default 0,
  effective_from date not null,
  notes         text,
  created_at    timestamptz default now()
);

-- Public read-only — tariff data is public
alter table public.tariff_updates enable row level security;

create policy "Public can read tariff updates"
  on public.tariff_updates for select
  using (true);


-- ─── Seed: initial tariff_updates rows ───────────────────────────
-- Update these whenever NEPRA announces new FC/QTA adjustments.
insert into public.tariff_updates (disco_name, fc_per_unit, qta_per_unit, effective_from, notes)
values
  ('LESCO', 3.23, 0.0, '2024-10-01', 'NEPRA Oct 2024 FC determination'),
  ('MEPCO', 3.23, 0.0, '2024-10-01', 'NEPRA Oct 2024 FC determination'),
  ('FESCO', 3.23, 0.0, '2024-10-01', 'NEPRA Oct 2024 FC determination'),
  ('IESCO', 3.23, 0.0, '2024-10-01', 'NEPRA Oct 2024 FC determination'),
  ('PESCO', 3.23, 0.0, '2024-10-01', 'NEPRA Oct 2024 FC determination'),
  ('HESCO', 3.23, 0.0, '2024-10-01', 'NEPRA Oct 2024 FC determination'),
  ('SEPCO', 3.23, 0.0, '2024-10-01', 'NEPRA Oct 2024 FC determination'),
  ('QESCO', 3.23, 0.0, '2024-10-01', 'NEPRA Oct 2024 FC determination');
