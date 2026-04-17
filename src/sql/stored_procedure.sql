-- Auto-generated: stored procedure v8968
-- Created for project optimization

CREATE TABLE IF NOT EXISTS stored_procedure_8968 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    counter INTEGER DEFAULT 0,
    metadata JSONB,
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_8968_name
    ON stored_procedure_8968(name);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_8968_created
    ON stored_procedure_8968(created_at DESC);

-- Seed data
INSERT INTO stored_procedure_8968 (name, counter)
VALUES
    ('item_0', 'val_0_8968'),
    ('item_1', 'val_1_8968'),
    ('item_2', 'val_2_8968'),
    ('item_3', 'val_3_8968'),
    ('item_4', 'val_4_8968'),
    ('item_5', 'val_5_8968'),
    ('item_6', 'val_6_8968'),
    ('item_7', 'val_7_8968'),

-- View
CREATE OR REPLACE VIEW v_stored_procedure_8968_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM stored_procedure_8968
GROUP BY name
ORDER BY total DESC;
