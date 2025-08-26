INSERT INTO users (username, college, "group", password, role, created_at)
VALUES (
    'test@example.com',
    'Test College',
    'Test Group',
    'password',
    'student',
    CURRENT_TIMESTAMP
); 