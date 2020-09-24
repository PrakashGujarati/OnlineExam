<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        DB::statement("INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `mobile`, `address`, `city`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
        (1, 'Admin', 'pg@gmail.com', 'admin', '$2y$10$.XsgYWGoc8zoO.F/u2iPjeawYhYJoxHC/vlXVbKdv71GTfPcrL3oe', '9601026377', 'Rajkot', 'Rajkot', 'A', NULL, NULL, NULL),
        (2, 'prakash', 'prakash@gmail.com', '', '$2y$10$.XsgYWGoc8zoO.F/u2iPjeawYhYJoxHC/vlXVbKdv71GTfPcrL3oe', NULL, NULL, NULL, 'S', NULL, '2020-09-23 21:38:43', '2020-09-23 21:38:43');");

        DB::statement("INSERT INTO `settings` (`id`, `logo`, `favicon`, `welcome_txt`, `created_at`, `updated_at`) VALUES
        (1, 'logo.png', 'favicon.ico', 'AU Online Exam', NULL, NULL);");

        DB::statement("INSERT INTO `copyrighttexts` (`id`, `name`, `created_at`, `updated_at`) VALUES(1, '@2020 | AU OnlineExam', NULL, NULL);");

        DB::statement("INSERT INTO `topics` (`id`, `title`, `description`, `per_q_mark`, `timer`, `created_at`, `updated_at`) VALUES(1, 'Python CIA1', 'Python CIA1', 1, 30, NULL, NULL);");

        DB::statement("INSERT INTO `topic_user` (`id`, `user_id`, `topic_id`, `transaction_id`, `status`, `created_at`, `updated_at`) VALUES(1, 2, 1, '123', 1, NULL, NULL);");

        DB::statement("INSERT INTO `questions` (`id`, `topic_id`, `question`, `a`, `b`, `c`, `d`, `answer`, `mark`, `code_snippet`, `answer_exp`, `created_at`, `updated_at`, `question_img`, `question_video_link`) VALUES
        (6, 1, 'How to write Comments in Python? ', '#', '<!--  -->', ';', '\"\"', 'A', '1', NULL, NULL, NULL, NULL, NULL, NULL),
        (7, 1, 'Which is not built-in datatype ?', 'Numeric', 'Boolean', 'Dictionary', 'Random', 'D', '1', NULL, NULL, NULL, NULL, NULL, NULL),
        (8, 1, 'An identifier starts with a ?', ' A to Z or a to z', 'an underscore (_)', '_a123', 'all above', 'D', '1', NULL, NULL, NULL, NULL, NULL, NULL),
        (9, 1, 'Which is not a Looping in python ?', 'for', 'hasmany', 'while', 'nested loop', 'B', '1', NULL, NULL, NULL, NULL, NULL, NULL),
        (10, 1, '?How we can convert the given list into the set ?', 'list.set()', 'set.list()', 'set(list)', 'None of the above', '       C', '1', NULL, NULL, NULL, NULL, NULL, NULL),
        (11, 1, 'What is the maximum possible length of an identifier?', '31 characters', '63 characters', '79 characters', 'none of the mentioned', '       D', '2', NULL, NULL, NULL, NULL, NULL, NULL),
        (12, 1, 'for loop in python are work on', 'range', 'iteration', 'Both of the above', 'None of the above', '       B', '2', NULL, NULL, NULL, NULL, NULL, NULL),
        (13, 1, 'What data type is the object below ? L = [1, 23, ?hello?, 1]', 'lists', 'Dictionary', 'tuples', 'class', 'A', '2', NULL, NULL, NULL, NULL, NULL, NULL),
        (14, 1, '1. What is answer of this expression, 22 % 3 is?', '7', '1', '0', '5', 'B', '2', NULL, NULL, NULL, NULL, NULL, NULL),
        (15, 1, '2.?What is the output of this expression, 3*1**3?', '27', '9', '3', '1', 'C', '2', NULL, NULL, NULL, NULL, NULL, NULL),
        (16, 1, 'What will be the output of the following code snippet?  a=[1,2,3,4,5,6,7,8,9]\nprint(a[::2])', ' [1,2]', '[8,9]', '[1,3,5,7,9]', '[1,2,3]', 'C', '1', NULL, NULL, NULL, NULL, NULL, NULL),
        (17, 1, 'aList = [\'a\', \'b\', \'c\', \'d\']', 'newList = copy(aList)', 'newList = aList.copy()', 'newList.copy(aList)', 'newList = list(aList)', 'B and D', '1', NULL, NULL, NULL, NULL, NULL, NULL),
        (18, 1, 'Which collection does not allow duplicate members?', 'SET  ', 'LIST', 'TUPLE', 'Dictionary', 'a', '1', NULL, NULL, NULL, NULL, NULL, NULL),
        (19, 1, 'Which of the following data type is used to store values in Key & Value format?', 'Class', 'List ', 'Tuple', 'Dictionary', 'd', '1', NULL, NULL, NULL, NULL, NULL, NULL),
        (20, 1, 'Which of the statements about dictionary values if false?', 'More than one key can have the same value', 'The values of the dictionary can be accessed as dict[key]', 'Values of a dictionary must be unique', 'Values of a dictionary can be a mixture of letters and numbers', 'C', '1', NULL, NULL, NULL, NULL, NULL, NULL),
        (21, 1, 'What type of data is: a=[(1,1),(2,4),(3,9)]?', 'Array of tuples', 'List of tuples', 'Tuples of lists', 'Invalid type', '       B', '2', NULL, NULL, NULL, NULL, NULL, NULL),
        (22, 1, 'Which of the following is not a declaration of the dictionary?', '{1: ?A?, 2: ?B?}', 'dict([[1,?A?],[2,?B?]])', '{1,?A?,2?B?}', '{ }', '       C', '2', NULL, NULL, NULL, NULL, NULL, NULL),
        (23, 1, 'What is the correct command to shuffle the following list?   fruit=[\'apple\', \'banana\', \'papaya\', \'cherry\']', 'fruit.shuffle()', 'shuffle(fruit)', 'random.shuffle(fruit)', 'random.shuffleList(fruit)', 'C', '2', NULL, NULL, NULL, NULL, NULL, NULL),
        (24, 1, 'Suppose list1 is [2, 33, 222, 14, 25], What is list1[:-1]?', '?[2, 33, 222, 14]', ' Error', '25', '25, 14, 222, 33, 2]', 'A', '2', NULL, NULL, NULL, NULL, NULL, NULL),
        (25, 1, 'If a is a dictionary with some key-value pairs, what does a.popitem() do?', 'Removes an arbitrary element', 'Removes all the key-value pairs', 'Removes the key-value pair for the key given as an argument', 'Invalid method for dictionary', 'A', '2', NULL, NULL, NULL, NULL, NULL, NULL);");
    }
}
