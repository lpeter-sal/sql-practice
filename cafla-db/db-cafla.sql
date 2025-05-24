CREATE EXTENSION IF NOT EXISTS "pgcrypto";
-- ===================== TABLE: role =====================
CREATE TABLE role (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(50) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- ===================== TABLE: users =====================
CREATE TABLE users (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    email VARCHAR(150) UNIQUE NOT NULL,
    password TEXT NOT NULL,
    role_id UUID REFERENCES role(id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- ===================== TABLE: referee_profile =====================
CREATE TABLE referee_profile (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID UNIQUE REFERENCES users(id),
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    address TEXT,
    date_of_birth DATE,
    phone VARCHAR(20),
    badge VARCHAR(50),
    calsouth_number VARCHAR(50) UNIQUE,
    status VARCHAR(20) DEFAULT 'active',
    gender VARCHAR(10),
    profile_picture TEXT,
    emergency_contact_name VARCHAR(100),
    emergency_contact_phone VARCHAR(20),
    emergency_contact_relationship VARCHAR(50),
    signup_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- ===================== TABLE: league =====================
CREATE TABLE league (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(100) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- ===================== TABLE: match_type =====================
CREATE TABLE match_type (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    league_id UUID REFERENCES league(id),
    division VARCHAR(100),
    level VARCHAR(20) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- ===================== TABLE: match_type_fee =====================
CREATE TABLE match_type_fee (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    match_type_id UUID REFERENCES match_type(id),
    position VARCHAR(30) NOT NULL,
    fee NUMERIC NOT NULL
);
-- ===================== TABLE: match =====================
CREATE TABLE match (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    date DATE,
    time TIME,
    location VARCHAR(150),
    address TEXT,
    field VARCHAR(50),
    home_team VARCHAR(100),
    away_team VARCHAR(100),
    status VARCHAR(20) DEFAULT 'Pending',
    league_id UUID REFERENCES league(id),
    match_type_id UUID REFERENCES match_type(id),
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- ===================== TABLE: referee_match_assignment =====================
CREATE TABLE referee_match_assignment (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    match_id UUID REFERENCES match(id),
    referee_id UUID REFERENCES referee_profile(id),
    position VARCHAR(20),
    paid_status VARCHAR(20) DEFAULT 'unpaid', -- unpaid, pending, confirmed, rejected
    notes TEXT,
    CONSTRAINT unique_assignment UNIQUE (match_id, referee_id)
);
-- ===================== TABLE: balance_history =====================
CREATE TABLE balance_history (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    referee_id UUID REFERENCES referee_profile(id),
    match_id UUID REFERENCES match(id),
    amount NUMERIC NOT NULL,
    payment_type VARCHAR(10) CHECK (payment_type IN ('debit', 'credit')),
    note TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    authorized_by UUID REFERENCES users(id)
);
-- ===================== TABLE: notification =====================
CREATE TABLE notification (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES users(id),
    title VARCHAR(100) NOT NULL,
    message TEXT NOT NULL,
    type VARCHAR(30) NOT NULL,
    is_read BOOLEAN DEFAULT FALSE,
    read_at TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);