-- Auto-generated: complex query v8272
-- Created for project optimization

CREATE TABLE IF NOT EXISTS complex_query_8272 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    priority SMALLINT DEFAULT 0,
    score DECIMAL(10,2),
    metadata JSONB,
    counter INTEGER DEFAULT 0,
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_complex_query_8272_name
    ON complex_query_8272(name);

CREATE INDEX IF NOT EXISTS idx_complex_query_8272_created
    ON complex_query_8272(created_at DESC);

-- Seed data
INSERT INTO complex_query_8272 (name, priority)
VALUES
    ('item_0', 'val_0_8272'),
    ('item_1', 'val_1_8272'),
    ('item_2', 'val_2_8272'),
    ('item_3', 'val_3_8272'),
    ('item_4', 'val_4_8272'),
    ('item_5', 'val_5_8272'),
    ('item_6', 'val_6_8272'),
    ('item_7', 'val_7_8272'),

-- View
CREATE OR REPLACE VIEW v_complex_query_8272_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM complex_query_8272
GROUP BY name
ORDER BY total DESC;
