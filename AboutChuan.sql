-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 26, 2022 at 03:19 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `AboutChuan`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Sách IT'),
(2, 'Sách Văn học nghệ thuật.'),
(3, 'Sách Trinh Thám'),
(4, 'Sách Tình Cảm');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(30) NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `messenger` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_create` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_new` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `username`, `email`, `messenger`, `date_create`, `id_new`) VALUES
(1, 'Viết Khánh', '', 'Tin tức rất thú vị, hãy cập nhật thêm nhé', '2020-01-02 17:47:37', 1),
(2, 'Tuyết Trinh', '', 'ok', '2020-03-08 15:20:48', 2),
(3, 'Tuấn Tài', '', 'áda', '2020-03-11 15:21:05', 2),
(4, 'Thư Hiền', '', 'ádasd', '2020-03-11 15:21:05', 4),
(5, 'admin', '', '123', '2020/03/21 20:07:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `website`, `message`) VALUES
(1, 'Lâm Ngọc Khương', 'chatwithme9x@gmail.com', '', 'Liên hệ admin trang Liên hệ admin trang Liên hệ admin trangLiên hệ admin trangLiên hệ admin trangLiên hệ admin trangLiên hệ admin trang Liên hệ admin trang Liên hệ admin trang Liên hệ admin trang Liên hệ admin trang Liên hệ admin trang Liên hệ admin trang Liên hệ admin trang Liên hệ admin trang Liên hệ admin trang'),
(2, 'Lâm Ngọc Khương', 'chatwithme9x@gmail.com', '', 'Liên hệ admin trang'),
(3, 'Trần Văn Sơn', 'sontv@vinaenter.com', '', 'Liên hệ admin trang'),
(4, 'Hoa Hồng', 'chatwithme9x@gmail.com', NULL, 'Liên hệ admin trang'),
(33, 'Le Viet Khanh', 'levietkhanh99@gmail.com', '', 'Anh muốn mời em về làm cho anh');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `preview_text` text COLLATE utf8_unicode_ci NOT NULL,
  `detail_text` text COLLATE utf8_unicode_ci NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `picture` text COLLATE utf8_unicode_ci NOT NULL,
  `counter` int(11) NOT NULL DEFAULT 0,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `preview_text`, `detail_text`, `date_create`, `picture`, `counter`, `cat_id`) VALUES
(1, 'Clean Code: A Handbook of Agile Software Craftsmanship', 'Even bad code can function. But if code isn’t clean, it can bring a development organization to its knees. Every year, countless hours and significant resources are lost because of poorly written code. But it doesn’t have to be that way.', '<p>Noted software expert Robert C. Martin presents a revolutionary paradigm with Clean Code: A Handbook of Agile Software Craftsmanship . Martin has teamed up with his colleagues from Object Mentor to distill their best agile practice of cleaning code &ldquo;on the fly&rdquo; into a book that will instill within you the values of a software craftsman and make you a better programmer&mdash;but only if you work at it. What kind of work will you be doing? You&rsquo;ll be reading code&mdash;lots of code. And you will be challenged to think about what&rsquo;s right about that code, and what&rsquo;s wrong with it. More importantly, you will be challenged to reassess your professional values and your commitment to your craft. Clean Code is divided into three parts. The first describes the principles, patterns, and practices of writing clean code. The second part consists of several case studies of increasing complexity. Each case study is an exercise in cleaning up code&mdash;of transforming a code base that has some problems into one that is sound and efficient. The third part is the payoff: a single chapter containing a list of heuristics and &ldquo;smells&rdquo; gathered while creating the case studies. The result is a knowledge base that describes the way we think when we write, read, and clean code. Readers will come away from this book understanding How to tell the difference between good and bad code How to write good code and how to transform bad code into good code How to create good names, good functions, good objects, and good classes How to format code for maximum readability How to implement complete error handling without obscuring code logic How to unit test and practice test-driven development This book is a must for any developer, software engineer, project manager, team lead, or systems analyst with an interest in producing better code.</p>\r\n', '2020-03-22 11:28:12', '41zoxjP9lcL-_SX323_BO1,204,203,200_-3366810333955.jpg', 3, 1),
(2, 'Ebook Head First Java 2nd Edition', 'Learning a complex new language is no easy task especially when it s an object-oriented computer programming language like Java. You might think the problem is your brain. It seems to have a mind of its own, a mind that doesn\'t always want to take in the dry, technical stuff you\'re forced to study.', 'The fact is your brain craves novelty. It\'s constantly searching, scanning, waiting for something unusual to happen. After all, that\'s the way it was built to help you stay alive. It takes all the routine, ordinary, dull stuff and filters it to the background so it won\'t interfere with your brain\'s real work--recording things that matter. How does your brain know what matters? It\'s like the creators of the Head First approach say, suppose you\'re out for a hike and a tiger jumps in front of you, what happens in your brain? Neurons fire. Emotions crank up. Chemicals surge. That\'s how your brain knows.\r\n\r\nAnd that\'s how your brain will learn Java. Head First Java combines puzzles, strong visuals, mysteries, and soul-searching interviews with famous Java objects to engage you in many different ways. It\'s fast, it\'s fun, and it\'s effective. And, despite its playful appearance, Head First Java is serious stuff: a complete introduction to object-oriented programming and Java. You\'ll learn everything from the fundamentals to advanced topics, including threads, network sockets, and distributed programming with RMI. And the new. second edition focuses on Java 5.0, the latest version of the Java language and development platform. Because Java 5.0 is a major update to the platform, with deep, code-level changes, even more careful study and implementation is required. So learning the Head First way is more important than ever.\r\n\r\nIf you\'ve read a Head First book, you know what to expect--a visually rich format designed for the way your brain works. If you haven\'t, you\'re in for a treat. You\'ll see why people say it\'s unlike any other Java book you\'ve ever read.\r\n\r\nBy exploiting how your brain works, Head First Java compresses the time it takes to learn and retain--complex information. Its unique approach not only shows you what you need to know about Java syntax, it teaches you to think like a Java programmer. If you want to be bored, buy some other book. But if you want to understand Java, this book\'s for you.', '2020-03-20 17:24:08', '318a6b70cfce3391d296140d4e96ef07-4977451417945.jpg', 8, 1),
(3, 'Làm Quen với SQL Server 2008 - Tủ Sách FPT', 'Truy cập tới CSDL qua mạng,Hỗ trợ mô hình Client/Server Kho dữ liệu (Data WareHouse ), Tương thích với chuẩn ANSI/ISO SQL -92', '<p>Vẫn như mọi đêm, anh ngồi đây bên cạnh là chiếc điện thoại và những dòng tin nhắn cũ. Cũng lâu rồi em nhỉ...à phải rồi...cũng gần 3 năm chúng ta không gặp nhau rồi còn gì....!<br />\r\n3 năm...không dài nhưng cũng chẳng ngắn. anh không biết em có còn nhớ anh, nhớ những ký ức của ngày xưa không? nhưng với anh, hằng đêm vẫn đọc lại những dòng tin nhắn ta đã nhắn cho nhau, rồi khẽ mỉm cười hạnh phúc...cứ như anh vẫn đang nhắn tin với em nư ngày xưa vậy...!</p>\r\n\r\n<p>Em biết không! mỗi ngày trôi qua với anh dù cho có khó khăn, vất vã, áp lực đến đâu đi nữa thì anh vẫn cố gắng vượt qua tất cả vì anh biết rằng: \"anh đã yêu, đang yêu và sẽ mãi yêu một người đó là em...\". Ngày đó anh vẫn còn nhớ rất rõ khi ta gặp nhau lần đầu tiên, đó là ngày nhập học đầu tiên của năm lớp 9. Lúc ấy với anh em chỉ là một cô bạn mới quen vừa hòa đồng vừa thân thiện và đặc biệt là nụ cười mà đến giờ anh vẫn không quên được. Những ngày tháng học chung với em tuy cuộc sống anh có nhiều biến cố và nhiều chuyện không vui trong gia đình cũng như học tập, thế nhưng sự xuất hiện của em đã khiến anh thêm ý chí và niềm vui trong cuộc sống. em còn nhớ không, anh từng vì em mà lần đầu tiên đứng ra cản thằng cá biệt nhất lớp khi nó ghẹo em; cũng có lần vì em anh phan cả đôi giày của mình cho thằng cứ theo dê em hoài...ha ha...nhớ lại ngày đó anh cũng trẻ con thật...</p>\r\n\r\n<p>Lên cấp 3, tuy anh và em vẫn học chung trường nhưng lại khác lớp. đây cũng là giai đoạn anh biết anh đã yêu em nhiều như thế nào...nhưng cũng là giai đoạn anh đau khổ vì em nhiều nhất...nhưng thôi...anh chỉ muốn nhớ những kỷ niệm đẹp về em thôi, còn những nỗi đau anh gửi gió cuốn đi hết rồi...vì anh biết : \"tình yêu phải trãi qua sóng gió, phải xa nhau, phải đau khổ thì mới có được hạnh phúc, niềm vui trọn vẹn phải không em\".</p>\r\n\r\n<p>“ Rồi đôi ta xa nhau trên đường về vắng em <br />\r\nTừng làn mây vẫn trôi như ngày xưa kỷ niệm <br />\r\nTrên những cung đàn xưa vấn vương nổi buồn nào <br />\r\nMà bài ca tình yêu, giờ đây đành dang dỡ <br />\r\nDòng thời gian trôi nhanh, anh vẫn chờ bóng em <br />\r\nĐường về 2 hình bóng nay sao chỉ 1 mình <br />\r\nBước chân đi mình anh, cô đơn trong lặng thầm <br />\r\nGọi tên em anh chờ 1 hình dung <br />\r\nĐk: <br />\r\nCó lẽ trong màn đêm càng làm anh nhớ em <br />\r\nCó lẽ em bây giờ đang vui bên hạnh phúc mới <br />\r\nKhóe môi anh lại gọi thầm tên của em thôi <br />\r\nNhững tình yêu ngày xưa, bao ngày qua vẫn giữ nguyên <br />\r\nNước mắt anh bao đêm, cứ lặng thầm khẽ rơi <br />\r\nNhớ mong em từng ngày trên đường anh vẫn bước <br />\r\nTrái tim anh chờ mong khi cơn mưa ngừng rơi <br />\r\nTa sẽ bên cạnh nhau, và yêu lại từ đầu..”</p>\r\n\r\n<p><br />\r\nAnh không biết em còn nhớ lời hứa ngày đó với anh hay không?. Có thể em đã quên lời hứa đó và đã có người yêu, có người yêu thương chăm sóc...Thế nhưng anh vẫn không ngừng hy vọng, không ngừng đặt niềm tin vào em...vì anh biết rằng \"trái tim anh muốn gì...\" Hãy đợi anh em nhé...vì chỉ còn khoản 3 tháng nữa thôi là anh sẽ được gặp lại em rồi...anh thật sự rất mong chờ ngay ấy sẽ đến, khi đó anh sẽ chạy đến và ôm chằm lấy em thật chặt để em mãi không rời xa anh....thế nhưng cũng có thể khi anh gặp em thì em đã tay trong tay với người con trai khác...!!! chắc lúc đó anh sẽ buồn lắm, tuyệt vọng lắm, muốn khóc lắm...! nhưng em đừng lo, nếu điều ấy xãy ra anh sẽ cố gắng tươi cười và chúc phúc cho em, anh sẽ không khóc trước mặt em đâu...vì anh không muốn em phải buồn vì anh....</p>\r\n\r\n<p>Đợi anh em nhé, dù ý nghĩa của sự chờ mong là tình yêu hay tình bạn thì anh vẫn vậy, vẫn là anh của ngày nào...em nhé !</p>\r\n\r\n<p>SP.<br />\r\n<a href=\"https://l.facebook.com/l.php?u=http%3A%2F%2Fmp3.zing.vn%2Fbai-hat%2FVan-Cho-Mong-Tan-Khanh%2FZWZDDF6E.html&h=ATMon4oAHiclnG8QJAVparnJZCgvzaTzkRiPoL4v4OcsY5mas5CHJqaAe414JEtj-0crhHtVMK86CKrQyCZSmMWtPygC9yv9zDJYqAPpmrPDcQORHTbIoVvWkNQoJmjTIG5dLInDPIU3jsHtstKO5L0F-A&enc=AZPZxTF7dDT0Lyscloc8OX6LY-mPQht5iTE-IwPkuIWe4iBK3GhADlkpLrcWX7aE7dMCD6_UgFVoC62E2HvnG3dtywE99gbzAEz7PxGToJR6gaK90yq__hhu8uniUWUQEQUHgvMvnaPEr-h4utK-mBQcc_amotl7UVYxIhNIrf1D08xSXLd0kIVKyGzI4rERG0vlyAosFgk4b3OEIQyUsODR&s=1\" onclick=\"LinkshimAsyncLink.referrer_log(this, \"http:\\/\\/mp3.zing.vn\\/bai-hat\\/Van-Cho-Mong-Tan-Khanh\\/ZWZDDF6E.html\", \"\\/si\\/ajax\\/l\\/render_linkshim_log\\/?u=http\\u00253A\\u00252F\\u00252Fmp3.zing.vn\\u00252Fbai-hat\\u00252FVan-Cho-Mong-Tan-Khanh\\u00252FZWZDDF6E.html&h=ATMon4oAHiclnG8QJAVparnJZCgvzaTzkRiPoL4v4OcsY5mas5CHJqaAe414JEtj-0crhHtVMK86CKrQyCZSmMWtPygC9yv9zDJYqAPpmrPDcQORHTbIoVvWkNQoJmjTIG5dLInDPIU3jsHtstKO5L0F-A&enc=AZPZxTF7dDT0Lyscloc8OX6LY-mPQht5iTE-IwPkuIWe4iBK3GhADlkpLrcWX7aE7dMCD6_UgFVoC62E2HvnG3dtywE99gbzAEz7PxGToJR6gaK90yq__hhu8uniUWUQEQUHgvMvnaPEr-h4utK-mBQcc_amotl7UVYxIhNIrf1D08xSXLd0kIVKyGzI4rERG0vlyAosFgk4b3OEIQyUsODR&d\");\" rel=\"nofollow noopener\" target=\"_blank\">http://mp3.zing.vn/bai…/Van-Cho-Mong-Tan-Khanh/ZWZDDF6E.html</a></p>\r\n', '2020-03-20 17:24:17', '9786046701019-4986207641274.jpeg', 2, 1),
(4, 'Mạng Máy Tính - Tủ Sách FPT', 'Quan hệ giữa developer và tester\r\nViệc kiểm thử phần mềm và tìm ra bug không hề đơn giản. Do vậy, ngành mình có một hướng phát triển khác là tester, gọi sang chảnh hơn là QA engineer – công việc chính của họ xoay quanh việc chạy thử, phá chương trình để tìm ra bug.\r\n\r\nTester thường là nữ, vì người ta đồn rằng phụ nữ tinh tế tỉ mẩn hơn. Tuy nhiên cả nam hay nữ đều làm tester được (nam cũng có nhiều người tỉ mẩn mà).\r\n\r\nCả 2 bên đều có chung mục đích là tạo ra sản phẩm hoàn hảo nhất cho khách hàng, nhưng công việc lại hoàn toàn đối nghịch nhau.\r\n\r\nCông việc của developer là phát triển hệ thống, viết code và bỏ bug vào code; vai trò của tester là tìm lôi đầu những con bug đáng ghét ra cho developer trừng trị.\r\nDeveloper thì rất tin tưởng code mình hoàn hảo không có bug. Tester cố chứng minh điều ngược lại bằng cách bới bug ra cho developer sửa.\r\nVì vậy cả 2 bên thường dễ xung đột, cãi nhau, dẫn đến quýnh lộn. Quýnh nhau rồi lại hoá thương nhau, do lửa gần rơm nên trong ngành mình cũng có khá nhiều cặp đôi chồng developer, vợ tester và ngược lại.\r\n\r\n', 'Developer thì cần gì phải biết testing, để cho các bác tester làm cũng được mà\r\nKhông phải vô duyên vô cớ mà người ta đưa môn Kiểm thử phần mềm (software testing) vào chương trình học Đại Học. Dù cho bạn là developer, bạn cũng nên rèn luyện cho mình tư duy tester vì những lợi ích sau:\r\n\r\nTư duy tester giúp chúng ta mới nghĩ ra được toàn bộ những corner case có thể gây ra lỗi cho hệ thống, từ đó nghĩ ra phương pháp giải quyết phù hợp\r\nTư duy tester cũng sẽ giúp bạn thấu hiểu tester và dễ giao tiếp với họ hơn\r\nKhi viết code, ta sẽ để ý và biết cách tách hệ thống ra từng phần cho dễ test\r\nDeveloper có tư duy tester sẽ chạy thử code mình viết kĩ lưỡng hơn, tiết kiệm được thời gian cho cả tester và developer.\r\nCode viết ra ít có bug hơn, giúp nâng cao chất lượng phần mềm\r\nKhông nói đâu xa, bản thân developer cũng thường phải viết Unit Test. Để viết unit test một cách đúng đắn, developer chúng ta phải sử dụng tư duy tester để xác định các case cần test. Các phong cách lập trình TDD, BDĐ cũng bắt nguồn từ lập trình viên mà ra cả!', '2020-03-20 17:24:30', 'mt-4999527460957.jpg', 1, 1),
(5, 'Bố Già (The Godfather)', 'Bố già là tên một cuốn tiểu thuyết nổi tiếng của nhà văn người Mỹ gốc Ý Mario Puzo được xuất bản lần đầu vào năm 1969 bởi nhà xuất bản G. P. Putnam\'s Sons. Tác phẩm là câu chuyện về một gia đình mafia gốc Sicilia tại Mỹ được tạo lập và lãnh đạo bởi một nhân vật được gọi là \"Bố già\" Don Vito Corleone.', 'Thế giới ngầm được phản ánh trong tiểu thuyết Bố già là sự gặp gỡ giữa một bên là ý chí cương cường và nền tảng gia tộc chặt chẽ theo truyền thống Mafia xứ Sicily với một bên là xã hội Mỹ nhập nhằng đen trắng, mảnh đất màu mỡ cho những cơ hội làm ăn bất chính hứa hẹn những món lợi kếch xù. Trong thế giới ấy, hình tượng Bố già được tác giả dày công khắc họa đã trở thành bức chân dung bất hủ trong lòng người đọc.\r\n\r\nTừ một kẻ nhập cư tay trắng đến ông trùm tột đỉnh quyền uy, Don Vito Corleone là con rắn hổ mang thâm trầm, nguy hiểm khiến kẻ thù phải kiềng nể, e dè, nhưng cũng được bạn bè, thân quyến xem như một đấng toàn năng đầy nghĩa khí. Nhân vật trung tâm ấy đồng thời cũng là hiện thân của một pho triết lí rất “đời” được nhào nặn từ vốn sống của hàng chục năm lăn lộn giữa chốn giang hồ bao phen vào sinh ra tử.\r\n\r\nVới kết cấu hoàn hảo, cốt truyện không thiếu những pha hành động gay cấn, tình tiết bất ngờ và không khí kình địch đến nghẹt thở, Bố già xứng đáng là đỉnh cao trong sự nghiệp văn chương của Mario Puzo.', '2020-03-21 13:12:31', 'bo-gia_1_1-5008225905612.jpg', 8, 3),
(6, 'The Sherlock Holmes Handbook', 'Full of fascinating how-to skills and evocative illustrations, this must-have guide will appeal to Baker Street Irregulars of all ages.\r\n', '<p>This reader&rsquo;s companion to the casework of Sherlock Holmes explores the methodology of the world&rsquo;s most famous consulting detective. From analyzing fingerprints and decoding ciphers to creating disguises and faking one&rsquo;s own death, readers will learn how Holmes solved his most celebrated cases&mdash;plus an arsenal of modern techniques available to today&rsquo;s armchair sleuths. Along the way, readers will discover a host of trivia about the master detective and his universe: Why did Holmes never marry? How was the real Scotland Yard organized? Was cocaine really legal back then? And why were the British so terrified of Australia? For die-hardSherlockians and amateur investigators alike, this handbook is nothing less than . . . elementary.</p>\r\n', '2020-03-22 11:28:28', '91743TsDedL-3383211151371.jpg', 8, 2),
(7, 'ROMEO AND JULIET', 'Truyền thuyết về Roméo và Juliet đã được kể lại nhiều lần hơn 100 năm trước khi William Shakespeare viết thành kịch bản. Vào năm 1476 trong cuốn sách Ý nhan đề là Il Novellino, tác giả Masuccio Salernitano đã kể về mối tình vụng trộm, về vụ giết người, vụ đầy đi khỏi xứ, về một nhà tu sẵn lòng giúp đỡ và cả về đám cưới của hai gia đình thù nghịch. Năm 1530, Luigi da Porta cũng kể lại câu chuyện tình này, gắn cho các nhân vật trong truyện các tên Ý và nơi diễn ra nghịch cảnh là thành phố Verona. Theo truyện của Da Porta, đôi tình nhân này cũng tự sát. Tới năm 1562 tại nước Anh, nhà thơ Arthur Brooke đã dùng đề tài này trong tập thơ dài \"The Tragical Historye of Romeus and Julius\" (Lịch sử bi thương của Romeus và Julius), đã đề cập tới một thứ đam mê không thánh thiện, một thứ tình yêu vụng trộm, sự không vâng lời cha mẹ và bất tuân luật pháp. Ngôn ngữ trong tập thơ của Brooke thì khô khan, thiếu hấp dẫn dù cho tác giả có cảm tình với cặp uyên ương.', '<p>Tới khi William Shakespeare d&ugrave;ng c&acirc;u chuyện t&igrave;nh kể tr&ecirc;n l&agrave;m chất liệu cho vở bi kịch, th&igrave; Đại Văn H&agrave;o đ&atilde; l&agrave;m cho c&aacute;c nh&acirc;n vật h&agrave;nh xử giống như ch&uacute;ng ta ng&agrave;y nay : họ c&oacute; c&aacute;c ưu điểm v&agrave; khuyết điểm, c&oacute; l&uacute;c nổi giận, c&oacute; l&uacute;c kh&ocirc;i h&agrave;i&hellip; Vở kịch &quot;Rom&eacute;o v&agrave; Juliet&quot; l&agrave; một chuyện t&igrave;nh v&agrave; một định mạng bi thương. C&aacute;c nh&acirc;n vật trong vở kịch đ&atilde; suy nghĩ như thế n&agrave;o, tại sao họ đ&atilde; chọn c&aacute;c c&aacute;ch h&agrave;nh động như vậy? Trong vở kịch &quot;Rom&eacute;o v&agrave; Juliet&quot; của Shakespeare, c&oacute; hai loại nh&acirc;n vật : loại chuyển biến (maturing characters) v&agrave; loại thụ động (static characters). C&aacute;c nh&acirc;n vật chuyển biến đ&atilde; ph&aacute;t triển v&agrave; thay đổi qua thời gian, đ&atilde; h&agrave;nh động theo nhiều c&aacute;ch t&ugrave;y theo c&aacute;c ho&agrave;n cảnh kh&aacute;c nhau, gồm c&oacute; Juliet, Rom&eacute;o, Cha Lawrence, Ho&agrave;ng Tử Escalus. Loại thụ động kh&ocirc;ng thay đổi, h&agrave;nh động theo lề lối ch&uacute;ng ta c&oacute; thể đo&aacute;n ra được, gồm c&oacute; b&agrave; v&uacute; nu&ocirc;i, Mercutio, Hầu Tước v&agrave; b&agrave; Montague, Hầu Tước v&agrave; b&agrave; Capulet, Tybalt, Benvolio, Paris &hellip; 1) Juliet l&agrave; một thiếu nữ trẻ, đang dần dần trở th&agrave;nh phụ nữ. Theo cốt truyện &Yacute;, Juliet 18 rồi qua tập thơ của Arthur Brooke, c&ocirc; ta 16 xu&acirc;n xanh nhưng trong vở kịch của Shakespeare, Juliet mới 13 tuổi, thơ ng&acirc;y v&agrave; &ocirc;m nhiều hy vọng. Juliet rất đẹp v&agrave; Rom&eacute;o đ&atilde; bị m&ecirc; hồn l&uacute;c mới gặp n&agrave;ng. Rồi ngay cả khi nằm trong ng&ocirc;i nh&agrave; mồ, khi ngắm nh&igrave;n x&aacute;c của Juliet, Rom&eacute;o đ&atilde; phải than rằng &quot;Tử Thần đ&atilde; h&uacute;t đi mật ngọt trong hơi thở của em, nhưng bất lực trước sắc đẹp của em !&quot;. Juliet l&agrave; một con người thực tế trong khi Rom&eacute;o thuộc loại người l&atilde;ng mạn. Tr&ecirc;n bao lơn thơ mộng, Rom&eacute;o thốt ra c&aacute;c lời y&ecirc;u đương th&igrave; Juliet n&oacute;i tới h&ocirc;n nh&acirc;n, b&agrave;n về l&uacute;c gặp nhau sắp tới v&agrave; c&aacute;ch th&ocirc;ng tin cho nhau. Juliet đ&atilde; lớn l&ecirc;n b&ecirc;n cạnh b&agrave; v&uacute; nu&ocirc;i v&agrave; b&agrave; mẹ, đ&atilde; muốn chiều l&ograve;ng mẹ cha trong cuộc h&ocirc;n nh&acirc;n mai sau, nhưng n&agrave;ng đ&atilde; suy nghĩ v&agrave; h&agrave;nh động cho ch&iacute;nh m&igrave;nh khi gặp Rom&eacute;o. N&agrave;ng biết rằng c&oacute; nhiều vấn đề tr&ecirc;n đời n&agrave;y, nhưng vẫn tin rằng &quot;t&igrave;nh y&ecirc;u&quot; c&oacute; thể gi&uacute;p cho con người vượt qua được mọi trở ngại. Juliet đ&atilde; kh&ocirc;ng c&ograve;n l&agrave; một c&ocirc; g&aacute;i dễ v&acirc;ng lời, m&agrave; l&agrave; một phụ nữ trẻ chịu tr&aacute;ch nhiệm về cuộc đời của ch&iacute;nh m&igrave;nh. 2) Romeo l&agrave; một thanh ni&ecirc;n lương thiện, tốt bụng, lịch sự, đẹp trai, đ&atilde; h&ocirc;n tay Juliet một c&aacute;ch k&iacute;nh mến v&agrave; gọi người đẹp l&agrave; n&agrave;ng ti&ecirc;n. Nhiều người đ&atilde; ưa th&iacute;ch Rom&eacute;o như Mercutio, Benvolio, b&agrave; v&uacute; của Juliet v&agrave; ngay cả Hầu Tước Capulet đ&atilde; gọi ch&agrave;ng l&agrave; &quot;người trẻ đức hạnh, biết kiềm chế&quot;. Cha Lawrence cũng y&ecirc;u mến Rom&eacute;o v&agrave; cố gắng l&agrave;m cho ch&agrave;ng hạnh ph&uacute;c. Kh&ocirc;ng được n&agrave;ng Rosaline đ&aacute;p lại t&igrave;nh y&ecirc;u, Romeo trở n&ecirc;n lẩn thẩn, đ&atilde; từng lang thang tr&ecirc;n đường phố hay giam m&igrave;nh trong căn ph&ograve;ng c&ocirc; đơn. Nhưng tới khi gặp Juliet, Romeo mới kh&aacute;m ph&aacute; thấy ch&iacute;nh m&igrave;nh v&agrave; t&igrave;nh y&ecirc;u đ&iacute;ch thực đ&atilde; l&agrave;m cho lời n&oacute;i của Rom&eacute;o trở th&agrave;nh c&aacute;c lời thơ! Tới khi phải bỏ trốn, đi cầu cứu Cha Lawrence, Rom&eacute;o đ&atilde; đ&aacute;nh mất ch&iacute;nh m&igrave;nh, kh&ocirc;ng c&ograve;n khả năng h&agrave;nh động đ&uacute;ng c&aacute;ch. Tới khi biết rằng Juliet vẫn c&ograve;n y&ecirc;u m&igrave;nh, Rom&eacute;o lại trở n&ecirc;n con người của h&agrave;nh động. V&agrave; trong ng&ocirc;i nh&agrave; mồ, Romeo đ&atilde; n&oacute;i sẽ h&agrave;nh động như thế n&agrave;o v&agrave; tại sao. Thật l&agrave; bi thương khi t&igrave;nh y&ecirc;u trở th&agrave;nh s&acirc;u đậm nhất! Romeo đ&atilde; t&igrave;m thấy ch&iacute;nh m&igrave;nh khi tự s&aacute;t. Ngo&agrave;i 2 nh&acirc;n vật ch&iacute;nh, c&ograve;n c&oacute; nhiều người kh&aacute;c như Cha Lawrence, một tu sĩ Cơ Đốc (Catholic) được k&iacute;nh trọng, c&oacute; c&aacute;c đức t&iacute;nh v&agrave; c&aacute;c yếu điểm, thường cố vấn cho Rom&eacute;o bằng c&aacute;c lời dạy của Ch&uacute;a v&agrave; cố gắng d&ugrave;ng địa vị của m&igrave;nh để chấm dứt mối hận th&ugrave; l&acirc;u đời. Ho&agrave;ng Tử Escalus l&agrave; một nh&agrave; cai trị Th&agrave;nh Verona, l&agrave; người đại diện cho trật tự v&agrave; luật ph&aacute;p. Escalus đ&atilde; ban h&agrave;nh c&aacute;c quy luật v&agrave; mong đợi người d&acirc;n tu&acirc;n theo kỷ luật. Trước mối t&igrave;nh ngang tr&aacute;i của Rom&eacute;o v&agrave; Juliet, Ho&agrave;ng Tử Escalus đ&atilde; kh&ocirc;ng hiểu r&otilde; c&aacute;c t&igrave;nh tiết của sự việc v&agrave; đ&atilde; chấp nhận rằng ch&iacute;nh m&igrave;nh kh&ocirc;ng phải l&agrave; thẩm quyền cuối c&ugrave;ng, v&agrave; ph&aacute;n x&eacute;t cuối c&ugrave;ng phải thuộc về Thượng Đế. &quot;Romeo v&agrave; Juliet&quot; l&agrave; vở kịch c&oacute; c&aacute;c chủ đề (themes) l&agrave; t&igrave;nh y&ecirc;u của hai người trẻ đối với mối hận th&ugrave; của hai gia đ&igrave;nh, t&igrave;nh y&ecirc;u giả hiệu (false love) giữa Rom&eacute;o v&agrave; Rosaline khi Rom&eacute;o tạo ra c&aacute;c t&igrave;nh cảm nh&acirc;n tạo đối với người đẹp, t&igrave;nh y&ecirc;u l&atilde;ng mạn (romantic), đ&iacute;ch thực (true love) v&agrave; thuần chất (pure) giữa Rom&eacute;o v&agrave; Juliet. Hai người trẻ n&agrave;y đ&atilde; gắn b&oacute; với nhau qua h&ocirc;n nh&acirc;n, sẵn l&ograve;ng chết v&igrave; nhau hơn l&agrave; bất trung với nhau. C&otilde;i chết đ&atilde; tới với hai kẻ y&ecirc;u thương say đắm bởi v&igrave; &quot;số mệnh&quot; (fate) : Romeo đ&atilde; bị đưa đường tới dạ hội của gia đ&igrave;nh Capulet do một t&ecirc;n bạn m&ugrave; qu&aacute;ng, c&aacute;c kế hoạch x&acirc;y dựng của đ&ocirc;i trẻ đ&atilde; gặp thất bại phải chăng l&agrave; do &quot;Thượng Đế &quot; đ&atilde; an b&agrave;i? Ngo&agrave;i ra trong vở kịch &quot;Romeo v&agrave; Juliet&quot;, c&ograve;n thấy rất nhiều t&igrave;nh tiết về trật tự c&ocirc;ng cộng đối nghịch với c&aacute;c x&aacute;o trộn ngo&agrave;i x&atilde; hội, sự v&ocirc; tội của đ&ocirc;i trẻ trước c&aacute;c lời khuy&ecirc;n bảo của bậc cha mẹ v&agrave; c&aacute;c người cố vấn, c&aacute;c kinh nghiệm của những nh&acirc;n vật kh&aacute;c trong kịch bản&hellip; Vở kịch đ&atilde; tr&igrave;nh b&agrave;y t&igrave;nh cảm c&ocirc; đơn khi Rom&eacute;o v&agrave; Juliet thấy Mercutio v&agrave; Tybalt đ&atilde; bị giết, v&agrave; khi đ&oacute; đ&ocirc;i trẻ mới hiểu r&otilde; c&aacute;c tai nạn bi thương, c&aacute;c thất bại của con người v&agrave; sự t&agrave;n &aacute;c tr&ecirc;n thế gian ! V&agrave; c&ocirc; đơn l&agrave; ho&agrave;n cảnh Juliet bị bỏ rơi trước những người th&acirc;n như cha mẹ, b&agrave; v&uacute; nu&ocirc;i, Cha Lawrence v&agrave; cuối c&ugrave;ng l&agrave; người y&ecirc;u Rom&eacute;o. Trong vở kịch &quot;Romeo v&agrave; Juliet&quot;, mỗi nh&acirc;n vật đ&atilde; n&oacute;i bằng thứ ng&ocirc;n ngữ ri&ecirc;ng, chứng tỏ giai cấp x&atilde; hội của từng người. William Shakespeare đ&atilde; d&ugrave;ng 3 thể văn kh&aacute;c nhau để diễn tả c&aacute;c nh&acirc;n vật, với thể h&agrave;i kịch (comedy) m&ocirc; tả l&uacute;c c&aacute;c người trẻ gặp nhau, y&ecirc;u nhau, c&oacute; c&aacute;c bạn b&egrave; vui vẻ v&agrave; c&aacute;c người hầu th&ocirc; tục. Đại Văn H&agrave;o c&ograve;n d&ugrave;ng tới thể văn kiểu &Yacute; (commedia del l&#39; arte) để n&oacute;i về c&aacute;c bậc cha mẹ ngăn c&aacute;ch những kẻ mới biết y&ecirc;u, n&oacute;i về c&aacute;c người hầu b&igrave;nh luận về t&igrave;nh dục. &quot;Rom&eacute;o v&agrave; Juliet&quot; l&agrave; vở kịch chứa đựng b&ecirc;n trong rất nhiều loại b&agrave;i thơ l&atilde;ng mạn cũng như c&aacute;c b&agrave;i thơ loại Sonnet.</p>\r\n', '2020-03-22 11:28:49', 'ae759a95b1cff2d0acd7cbea15d255eb-3403695866522.jpeg', 8, 4),
(8, 'Án mạng trên sông Nile', '\"Án mạng trên sông Nile\" là một trong những tác phẩm nổi tiếng của nữ nhà văn Agatha Christie. Tác phẩm đã được chuyển thể thành phim điện ảnh, kịch và nhận được sự yêu thích, đón nhận nồng nhiệt của các độc giả khắp nơi trên thế giới.', '<p>chuyện đầy hấp dẫn, hồi hộp trong những c&acirc;u chữ, &quot;&Aacute;n mạng tr&ecirc;n s&ocirc;ng Nile&quot; khiến cho độc giả đi từ bất ngờ n&agrave;y đến bất ngờ kh&aacute;c. Nội dung cuốn tiểu thuyết xoay quanh vụ &aacute;n mạng nghi&ecirc;m trọng diễn ra tr&ecirc;n con t&agrave;u du lịch tr&ecirc;n s&ocirc;ng Nile, nơi m&agrave; th&aacute;m tử Hercule Poirot đang nghỉ dưỡng. Những cuộc truy t&igrave;m hung thủ, những kh&aacute;m ph&aacute; từ những chi tiết nhỏ c&ograve;n s&oacute;t lại sẽ khiến cho ch&uacute;ng ta bị l&ocirc;i cuốn theo từng t&igrave;nh tiết, từng c&acirc;u chữ của truyện. Hơn g&igrave; hết, một c&aacute;i kết bất ngờ lu&ocirc;n l&agrave; điểm nhấn ghi lại dấu ấn trong l&ograve;ng độc giả nhiều hơn. V&agrave; cuốn tiểu thuyết &quot;&Aacute;n mạng tr&ecirc;n s&ocirc;ng Nile&quot; đ&atilde; l&agrave;m được điều đ&oacute;. Quả l&agrave; một cuốn tiểu thuyết trinh th&aacute;m rất đ&aacute;ng xem.</p>\r\n', '2020-03-22 11:29:00', '101a2634-2324-11e7-8dfc-cac091044fd5-3415011445117.jpg', 8, 3),
(9, 'Sự im lặng của bầy cừu', '\"Sự im lặng của bầy cừu\" là một tác phẩm trinh thám xen lẫn yếu tối kinh dị nổi tiếng do tác giả Thomas Harris chắp bút. Tác phẩm cũng đã được chuyển thể thành phim với cùng tựa đề vào năm 1991, gây được tiếng vang lớn trong giới điện ảnh, cũng như đưa tác phẩm đến gần với bạn đọc hơn.', '<p>mi&ecirc;u tả t&acirc;m l&iacute; nh&acirc;n vật hết sức tinh tế, c&ugrave;ng với những t&igrave;nh tiết truyện gay cấn, hồi hộp, &quot;Sự im lặng của bầy cừu&quot; đ&atilde; để lại trong l&ograve;ng bạn đọc những ấn tượng s&acirc;u sắc, kh&oacute; phai v&agrave; &aacute;m ảnh về h&igrave;nh ảnh của Hannibal Lecter - một kẻ ăn thịt người.Nếu bạn l&agrave; người y&ecirc;u th&iacute;ch tiểu thuyết trinh th&aacute;m, đừng bỏ qua quyển tiểu thuyết nổi tiếng n&agrave;y nh&eacute;, Chắc chắn &quot;Sự im lặng của bầy cừu&quot; sẽ tạo được dấu ấn cực k&igrave; kh&oacute; phai với bạn. Link truyện online: http://sstruyen.com/doc-truyen/trinh-tham/su-im-lang-cua-bay-cuu/chuong-01/242897.html</p>\r\n', '2020-03-22 11:29:16', 'c4f9a14c-2324-11e7-a1b9-2e995a9a3302-3430844899557.jpg', 8, 3),
(10, 'Truyện Kiều', 'Đoạn trường tân thanh, thường được biết đến đơn giản là Truyện Kiều, là một truyện thơ của thi sĩ Nguyễn Du. Đây được xem là truyện thơ nổi tiếng nhất và xét vào hàng kinh điển trong văn học Việt Nam, tác phẩm được viết bằng chữ Nôm theo thể lục bát, gồm 3254 câu.', 'Thúy Kiều, nhân vật chính trong Truyện Kiều, một cô gái tài sắc vẹn toàn, có tâm hồn cao thượng. Nhân dịp du xuân, nàng gặp Kim Trọng, một thanh niên hào hoa phong nhã. Hai người yêu nhau và cùng nhau thề nguyền thủy chung. Nhưng tai họa bất ngờ ập đến với Kiều. Gia đình bị nạn. Kiều tự nguyện bán mình chuộc cha. Bị bọn Mã Giám Sinh và Tú Bà đưa vào lầu xanh. Kiều định tự tử để thoát khỏi cảnh ô nhục nhưng không được. Sau lần mắc mưu Sở Khanh đi trốn bị bắt lại, bị đánh đập tàn nhẫn, nàng đành chịu tiếp khách. Ít lâu sau, Kiều được Thúc Sinh – một kẻ giàu có say mê nàng, chuộc nàng về làm vợ lẽ. Nhưng chưa được một năm Kiều lại bị Hoạn Thư, vợ cả của Thúc Sinh, bày mưu bắt về hành hạ. Nàng bị bắt làm con ở hầu rượu gảy đàn mua vui cho vợ chồng ả. Khổ nhục quá, Kiều bỏ trốn khỏi nhà Hoạn Thư nhưng lại lọt vào một lầu xanh khác. Ở đây, nàng gặp Từ Hải và trở thành vợ người anh hùng này. Phất cờ khởi nghĩa, hùng cứ một phương, Từ Hải giúp Kiều báo ân báo oán. Nhưng cũng chẳng bao lâu, Kiều bị mắc lừa Hồ Tôn Hiến, nàng khuyên Từ Hải ra hàng phục triều đình, Từ Hải bị phản bội và chết đứng.\r\n\r\nKiều bị làm nhục và bị ép gả cho một viên thổ quan. Đau xót và tủi nhục, nàng đã tự tử ở sông Tiền Đường nhưng lại được sư Giác Duyên cứu sống. Kim Trọng và gia đình Thúy Kiều đi tìm.\r\n\r\nSau mười lăm năm trời lưu lạc, Kiều trở lại sum họp với gia đình. Nàng từ chối không chắp nối mối duyên xưa cùng Kim Trọng mà họ trở thành bạn bè để giữ tình cảm cho được trong sáng và đẹp đẽ.', '2020-03-20 17:25:46', 'small_18035-5075960239045.jpg', 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `ten` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tuoi` int(11) NOT NULL,
  `ngaysinh` date NOT NULL,
  `diachi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SĐT` int(11) NOT NULL,
  `picture` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`ten`, `tuoi`, `ngaysinh`, `diachi`, `SĐT`, `picture`, `email`) VALUES
('Phan Minh Chuẩn', 20, '1999-11-16', '20', 859743442, '264b1e3f5683daca0922af56be4a78a2-5094131653350.jpg', 'minhchuan.me@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `name`, `picture`) VALUES
(1, 'Book Review', ''),
(2, 'Scheduling', ''),
(3, 'QHTT WITH SIMPLEX', '');

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `finish` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`id`, `name`, `finish`) VALUES
(1, 'HTML', 85),
(2, 'CSS', 70),
(3, 'BOOTSTRAP', 75),
(4, 'JAVASCRIPT', 80),
(8, 'JQUERY', 80),
(9, 'JAVA CORE', 90);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fullname`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'Administrator'),
(2, 'admindemo', 'e10adc3949ba59abbe56e057f20f883e', 'AdminDemo'),
(3, 'demo', 'e10adc3949ba59abbe56e057f20f883e', 'Phan Minh Chuẩn');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`ten`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
