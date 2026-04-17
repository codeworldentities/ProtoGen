-- Auto-generated: table creation v4206
-- Created for project optimization

CREATE TABLE IF NOT EXISTS table_creation_4206 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    email VARCHAR(255),
    priority SMALLINT DEFAULT 0,
    score DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_table_creation_4206_name
    ON table_creation_4206(name);

CREATE INDEX IF NOT EXISTS idx_table_creation_4206_created
    ON table_creation_4206(created_at DESC);

-- Seed data
INSERT INTO table_creation_4206 (name, description)
VALUES
    ('item_0', 'val_0_4206'),
    ('item_1', 'val_1_4206'),
    ('item_2', 'val_2_4206'),
    ('item_3', 'val_3_4206'),
    ('item_4', 'val_4_4206'),
    ('item_5', 'val_5_4206'),
    ('item_6', 'val_6_4206'),
    ('item_7', 'val_7_4206'),

-- View
CREATE OR REPLACE VIEW v_table_creation_4206_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM table_creation_4206
GROUP BY name
ORDER BY total DESC;
