-- Auto-generated: view creation v3654
-- Created for project optimization

CREATE TABLE IF NOT EXISTS view_creation_3654 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    metadata JSONB,
    email VARCHAR(255),
    priority SMALLINT DEFAULT 0,
    counter INTEGER DEFAULT 0,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_view_creation_3654_name
    ON view_creation_3654(name);

CREATE INDEX IF NOT EXISTS idx_view_creation_3654_created
    ON view_creation_3654(created_at DESC);

-- Seed data
INSERT INTO view_creation_3654 (name, metadata)
VALUES
    ('item_0', 'val_0_3654'),
    ('item_1', 'val_1_3654');

-- View
CREATE OR REPLACE VIEW v_view_creation_3654_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM view_creation_3654
GROUP BY name
ORDER BY total DESC;
