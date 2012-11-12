INSERT INTO `quiz_definitions` (`id`, `difficulty`, `category_id`, `created_at`, `updated_at`)
VALUES (1, 4, 4, date('now'), date('now'));

INSERT INTO `questions` (`id`, `question`, `quiz_definition_id`, `created_at`, `updated_at`)
VALUES (1, 'In what American state are the Blue Ridge Mountains located?', 1, date('now'), date('now'));

INSERT INTO `question_options` (`id`, `answer`, `is_correct`, `question_id`, `created_at`, `updated_at`)  VALUES 
(1, 'Utah', 0, 1, date('now'), date('now')),
(2, 'Alaska', 0, 1, date('now'), date('now')),
(3, 'Washington', 0, 1, date('now'), date('now')),
(4, 'Virginia', 1, 1, date('now'), date('now'));

INSERT INTO `questions` (`id`, `question`, `quiz_definition_id`, `created_at`, `updated_at`)
VALUES (2, 'How did Sitting Bull allegedly die?', 1, date('now'), date('now'));

INSERT INTO `question_options` (`id`, `answer`, `is_correct`, `question_id`, `created_at`, `updated_at`) VALUES 
(5, 'Killed at the Battle of the Little Bighorn', 0, 2, date('now'), date('now')),
(6, 'Natural old age', 0, 2, date('now'), date('now')),
(7, 'Drowned near the Grand River, South Dakota', 0, 2, date('now'), date('now')),
(8, 'Killed by the Indian police', 1, 2, date('now'), date('now'));

INSERT INTO `questions` (`id`, `question`, `quiz_definition_id`, `created_at`, `updated_at`)
VALUES (3, 'Who said, "When I was young I used to think that money was the most important thing in life, now that I am old, I know it is"?', 1, date('now'), date('now'));

INSERT INTO `question_options` (`id`, `answer`, `is_correct`, `question_id`, `created_at`, `updated_at`) VALUES 
(9, 'Ebeneezer Scrooge', 0, 3, date('now'), date('now')),
(10, 'Groucho Marx', 0, 3, date('now'), date('now')),
(11, 'Fagin', 0, 3, date('now'), date('now')),
(12, 'Oscar Wilde', 1, 3, date('now'), date('now'));

INSERT INTO `questions` (`id`, `question`, `quiz_definition_id`, `created_at`, `updated_at`)
VALUES (4, 'What is called the second full moon which occurs in the same calendar month?', 1, date('now'), date('now'));

INSERT INTO `question_options` (`id`, `answer`, `is_correct`, `question_id`, `created_at`, `updated_at`) VALUES 
(13, 'Blue moon', 1, 4, date('now'), date('now')),
(14, 'Harvest moon', 0, 4, date('now'), date('now')),
(15, 'Gibbous moon', 0, 4, date('now'), date('now')),
(16, 'Set moon', 0, 4, date('now'), date('now'));

INSERT INTO `questions` (`id`, `question`, `quiz_definition_id`, `created_at`, `updated_at`)
VALUES (5, 'Name the island which is shaped like a fish hook.', 1, date('now'), date('now'));

INSERT INTO `question_options` (`id`, `answer`, `is_correct`, `question_id`, `created_at`, `updated_at`) VALUES 
(17, 'Sardinia', 0, 5, date('now'), date('now')),
(18, 'Madagascar', 0, 5, date('now'), date('now')),
(19, 'Bermuda', 1, 5, date('now'), date('now')),
(20, 'Iceland', 0, 5, date('now'), date('now'));

INSERT INTO `questions` (`id`, `question`, `quiz_definition_id`, `created_at`, `updated_at`)
VALUES (6, 'What did Orson Welles describe as the biggest train set a boy ever had?', 1, date('now'), date('now'));

INSERT INTO `question_options` (`id`, `answer`, `is_correct`, `question_id`, `created_at`, `updated_at`) VALUES 
(21, 'The London Underground', 0, 6, date('now'), date('now')),
(22, 'The striking set of Citizen Kane', 1, 6, date('now'), date('now')),
(23, 'The Central Railroad of Casey Jones', 0, 6, date('now'), date('now')),
(24, 'The Paris Metro', 0, 6, date('now'), date('now'));

INSERT INTO `questions` (`id`, `question`, `quiz_definition_id`, `created_at`, `updated_at`)
VALUES (7, 'Where is the Soviet cosmonaut, Yuri Gagarin, buried?', 1, date('now'), date('now'));

INSERT INTO `question_options` (`id`, `answer`, `is_correct`, `question_id`, `created_at`, `updated_at`) VALUES 
(25, 'Within the Kremlin walls', 1, 7, date('now'), date('now')),
(26, 'Highgate Cemetery, London', 0, 7, date('now'), date('now')),
(27, 'The Palace of Versailles', 0, 7, date('now'), date('now')),
(28, 'Vladivostok, Russia', 0, 7, date('now'), date('now'));

INSERT INTO `questions` (`id`, `question`, `quiz_definition_id`, `created_at`, `updated_at`)
VALUES (8, 'Which American novelist and humorist said: "I didn''t attend the funeral, but I sent a nice letter saying I approved of it"?', 1, date('now'), date('now'));

INSERT INTO `question_options` (`id`, `answer`, `is_correct`, `question_id`, `created_at`, `updated_at`) VALUES 
(29, 'Louisa May Alcott', 0, 8, date('now'), date('now')),
(30, 'Margaret Mitchell', 0, 8, date('now'), date('now')),
(31, 'Herbert George Wells', 0, 8, date('now'), date('now')),
(32, 'Mark Twain', 1, 8, date('now'), date('now'));

INSERT INTO `questions` (`id`, `question`, `quiz_definition_id`, `created_at`, `updated_at`)
VALUES (9, 'Name the North American bird famous for its vocal imitation.', 1, date('now'), date('now'));

INSERT INTO `question_options` (`id`, `answer`, `is_correct`, `question_id`, `created_at`, `updated_at`) VALUES 
(33, 'Mockingbird', 1, 9, date('now'), date('now')),
(34, 'Nutcracker', 0, 9, date('now'), date('now')),
(35, 'Frogmouth', 0, 9, date('now'), date('now')),
(36, 'Hooded crow', 0, 9, date('now'), date('now'));

INSERT INTO `questions` (`id`, `question`, `quiz_definition_id`, `created_at`, `updated_at`)
VALUES (10, 'Who said, "Some people say that I must be a terrible person, but it''s not true. I have the heart of a young boy in a jar on my desk"?', 1, date('now'), date('now'));

INSERT INTO `question_options` (`id`, `answer`, `is_correct`, `question_id`, `created_at`, `updated_at`) VALUES 
(37, 'Peter Lorre', 0, 10, date('now'), date('now')),
(38, 'Stephen King', 1, 10, date('now'), date('now')),
(39, 'Vincent Price', 0, 10, date('now'), date('now')),
(40, 'Anne Rice', 0, 10, date('now'), date('now'));
