# 📊 CAFLA Web – Database Schema Documentation (Updated)

This document describes the structure and purpose of each table used in the CAFLA Web platform, including new updates such as user/referee separation, match home/away teams, and notification support.

---

## 🔐 `role`
Defines the level of access a user has in the system.

| Column     | Description |
|------------|-------------|
| id         | Unique identifier |
| name       | Role name (e.g., referee, admin, super_admin) |
| created_at | Timestamp of creation |

---

## 👤 `users`
Stores credentials and access role for each user in the system.

| Column     | Description |
|------------|-------------|
| id         | Unique identifier |
| email      | Login email (must be unique) |
| password   | Hashed password |
| role_id    | Role assigned to the user |
| created_at | Timestamp of creation |

---

## 🧍‍♂️ `referee_profile`
Extended profile information for users who are active referees.

| Column                     | Description |
|----------------------------|-------------|
| id                         | Unique identifier |
| user_id                    | Link to `users` (1-to-1 relationship) |
| first_name / last_name     | Referee’s full name |
| address / date_of_birth    | Optional personal data |
| phone                      | Optional phone number |
| badge                      | Referee certification level |
| calsouth_number            | Unique referee ID |
| status                     | `active` or `inactive` |
| gender                     | Optional gender |
| profile_picture            | URL or reference to image |
| emergency_contact_*        | Contact details in case of emergency |
| signup_date / updated_at   | Timestamps |

---

## 🏆 `league`
Information about registered leagues.

| Column     | Description |
|------------|-------------|
| id         | Unique identifier |
| name       | League name |
| is_active  | Active flag |
| created_at / updated_at | Timestamps |

---

## 🎯 `match_type`
Describes different match formats.

| Column     | Description |
|------------|-------------|
| id         | Unique identifier |
| league_id  | FK to `league` |
| division   | Division or tier (e.g., Premier) |
| level      | Format (e.g., 11v11, 7v7) |
| created_at / updated_at | Timestamps |

---

## 💰 `match_type_fee`
Stores payment amounts per referee position per match type.

| Column       | Description |
|--------------|-------------|
| id           | Unique identifier |
| match_type_id| FK to `match_type` |
| position     | Referee position (e.g., Referee, AR1, AR2) |
| fee          | Payment amount |

---

## 🏟️ `match`
Stores match-level data (shared across referee assignments).

| Column      | Description |
|-------------|-------------|
| id          | Unique identifier |
| date / time | Schedule |
| location / address / field | Match venue |
| home_team / away_team | Names of the playing teams |
| league_id / match_type_id | Linked references |
| status      | `Pending`, `Completed`, etc. |
| notes       | Additional information |
| created_at / updated_at | Timestamps |

---

## 🤝 `referee_match_assignment`
Links referees to matches.

| Column       | Description |
|--------------|-------------|
| id           | Unique identifier |
| match_id     | FK to `match` |
| referee_id   | FK to `referee_profile` |
| position     | Referee role in the match |
| paid_status  | Boolean indicator |
| notes        | Optional comments |
| Constraint   | Unique per (match_id, referee_id) |

---

## 💳 `balance_history`
Tracks financial records for referees.

| Column        | Description |
|---------------|-------------|
| id            | Unique identifier |
| referee_id    | FK to `referee_profile` |
| match_id      | FK to `match` |
| amount        | Positive (credit) or negative (debit) |
| payment_type  | `credit` or `debit` |
| note          | Reason or description |
| authorized_by | FK to `users` |
| created_at    | Timestamp |

---

## 🔔 `notification`
Tracks system messages sent to users.

| Column      | Description |
|-------------|-------------|
| id          | Unique identifier |
| user_id     | FK to `users` |
| title       | Short title for the notification |
| message     | Full content |
| type        | Category (e.g., match, system) |
| is_read     | Boolean flag |
| read_at     | Timestamp if opened |
| created_at  | Timestamp of creation |

---
