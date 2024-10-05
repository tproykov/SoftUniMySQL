SELECT
    m.title,
    CASE
        WHEN mai.rating <= 4 THEN 'poor'
        WHEN mai.rating > 4 AND mai.rating <= 7 THEN 'good'
        WHEN mai.rating > 7 THEN 'excellent'
    END,
    CASE
        WHEN mai.has_subtitles = 1 THEN 'english'
        WHEN mai.has_subtitles = 0 THEN '-'
    END,
    mai.budget
FROM movies AS m
JOIN movies_additional_info AS mai on mai.id = m.movie_info_id
ORDER BY budget DESC;
