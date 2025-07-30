-- Example queries for testing the media_files table

-- Insert a sample image
INSERT INTO media_files (title, description, category, tags, file_url, file_type, file_size, filename)
VALUES (
    'نموذج خلفية',
    'خلفية جميلة للاختبار',
    'طبيعة',
    ARRAY['طبيعة', 'مناظر', 'جبال'],
    'https://example.com/sample.jpg',
    'image',
    1024000,
    'sample.jpg'
);

-- Insert a sample audio file
INSERT INTO media_files (title, description, category, tags, file_url, file_type, file_size, filename)
VALUES (
    'موسيقى هادئة',
    'موسيقى للاسترخاء',
    'موسيقى',
    ARRAY['هادئة', 'استرخاء', 'موسيقى'],
    'https://example.com/sample.mp3',
    'audio',
    5120000,
    'sample.mp3'
);

-- Query to get all files
SELECT * FROM media_files ORDER BY created_at DESC;

-- Query to get only images
SELECT * FROM media_files WHERE file_type = 'image' ORDER BY created_at DESC;

-- Query to get files by category
SELECT * FROM media_files WHERE category = 'طبيعة' ORDER BY created_at DESC;

-- Query to search by tags
SELECT * FROM media_files WHERE tags && ARRAY['طبيعة'] ORDER BY created_at DESC;