-- 1. Kiểm tra số chỗ của lớp học phần
SELECT class_id, capacity, enrolled, remaining
FROM v_section_summary
WHERE class_id IN ('WEB-01', 'RACE-01')
ORDER BY class_id;


-- 2. Kiểm tra các lớp sinh viên 22000004 đã đăng ký
SELECT student_id, class_section_id
FROM enrollments
WHERE student_id = '22000004'
ORDER BY class_section_id;


-- 3. Kiểm tra lịch sử đăng ký/hủy đăng ký WEB-01
SELECT id, student_id, class_section_id, event_type, occurred_at
FROM enrollment_events
WHERE dataset = 'demo'
  AND student_id = '22000004'
  AND class_section_id = 'WEB-01'
ORDER BY id DESC
LIMIT 10;