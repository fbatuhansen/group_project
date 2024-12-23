-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 22 Ara 2024, 23:03:05
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `ecommerceweb`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(150) CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tbl_color`
--

INSERT INTO `tbl_color` (`color_id`, `color_name`) VALUES
(1, 'Kırmızı'),
(2, 'Siyah'),
(3, 'Mavi'),
(4, 'Sarı'),
(5, 'Yeşil'),
(6, 'Beyaz'),
(7, 'Portakal'),
(8, 'Kahverengi'),
(9, 'Tan'),
(10, 'Pembe'),
(11, 'Karma'),
(17, 'Gri'),
(20, 'Gümüş'),
(29, 'Bej');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(222, 'Turkey');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_cname` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_phone` varchar(50) NOT NULL,
  `cust_country` int(11) NOT NULL,
  `cust_address` text NOT NULL,
  `cust_city` varchar(100) NOT NULL,
  `cust_state` varchar(100) NOT NULL,
  `cust_zip` varchar(30) NOT NULL,
  `cust_b_name` varchar(100) NOT NULL,
  `cust_b_cname` varchar(100) NOT NULL,
  `cust_b_phone` varchar(50) NOT NULL,
  `cust_b_country` int(11) NOT NULL,
  `cust_b_address` text NOT NULL,
  `cust_b_city` varchar(100) NOT NULL,
  `cust_b_state` varchar(100) NOT NULL,
  `cust_b_zip` varchar(30) NOT NULL,
  `cust_s_name` varchar(100) NOT NULL,
  `cust_s_cname` varchar(100) NOT NULL,
  `cust_s_phone` varchar(50) NOT NULL,
  `cust_s_country` int(11) NOT NULL,
  `cust_s_address` text NOT NULL,
  `cust_s_city` varchar(100) NOT NULL,
  `cust_s_state` varchar(100) NOT NULL,
  `cust_s_zip` varchar(30) NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `cust_token` varchar(150) NOT NULL,
  `cust_datetime` varchar(100) NOT NULL,
  `cust_timestamp` varchar(100) NOT NULL,
  `cust_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_cname`, `cust_email`, `cust_phone`, `cust_country`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_b_name`, `cust_b_cname`, `cust_b_phone`, `cust_b_country`, `cust_b_address`, `cust_b_city`, `cust_b_state`, `cust_b_zip`, `cust_s_name`, `cust_s_cname`, `cust_s_phone`, `cust_s_country`, `cust_s_address`, `cust_s_city`, `cust_s_state`, `cust_s_zip`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`) VALUES
(12, 'ise311', '', 'ise311@gmail.com', '11111111111111', 222, 'Ankara', 'Ankara', 'Ankara', '11111111', 'Batuhan', 'Ev', '111111111111', 222, 'Etimesgut-Ankara', 'Ankara', 'Etimesgut', '11111', '?EN', 'Ev', '111111111111', 222, 'Etimesgut-Ankara', 'Ankara', 'Etimesgut', '11111', 'd19484cd70bf2ed79ab624753fa62e61', '953b53acd9b8ea49915dbc667cd0c4d9', '2024-12-21 06:23:11', '1734790991', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_customer_message`
--

CREATE TABLE `tbl_customer_message` (
  `customer_message_id` int(11) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `order_detail` text NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_end_category`
--

CREATE TABLE `tbl_end_category` (
  `ecat_id` int(11) NOT NULL,
  `ecat_name` varchar(150) CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `mcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tbl_end_category`
--

INSERT INTO `tbl_end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
(80, 'Ayakkabı', 22),
(81, 'Giyim', 22),
(82, 'Aksesuar', 22),
(83, 'Oyuncak', 22),
(84, 'Kitap', 22),
(85, 'Ayakkabı', 23),
(86, 'Giyim', 23),
(87, 'Aksesuar', 23),
(88, 'Oyuncak', 23),
(89, 'Kitap', 23),
(90, 'Ayakkabı', 24),
(91, 'Bebek Arabası & Puset', 24),
(92, 'Bebek Beslenme ve Emzirme', 24),
(93, 'Anne & Bebek Bakım', 24),
(94, 'Yenidoğan', 24),
(95, 'Ayakkabı', 25),
(96, 'Giyim', 25),
(97, 'Bebek Arabası & Puset', 25),
(98, 'Anne & Bebek Bakım', 25),
(99, 'Bebek Beslenme ve Emzirme', 25);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` varchar(150) NOT NULL,
  `faq_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` int(11) NOT NULL,
  `lang_name` varchar(150) NOT NULL,
  `lang_value` text CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'Currency', 'TL'),
(2, 'Search Product', 'Hadi gel aradığını hızlıca bulalım...'),
(3, 'Search', 'Ara'),
(4, 'Submit', 'Gönder'),
(5, 'Update', 'Güncelle'),
(6, 'Read More', 'Daha Fazla'),
(7, 'Serial', 'Serial'),
(8, 'Photo', 'Resim'),
(9, 'Login', 'Giriş Yap'),
(10, 'Customer Login', 'Üye Girişi'),
(11, 'Click here to login', 'Giriş Yapmak için Tıklayın '),
(12, 'Back to Login Page', 'Giriş Sayfasına Dön'),
(13, 'Logged in as', ''),
(14, 'Logout', 'Çıkış Yap'),
(15, 'Register', 'Üye Ol'),
(16, 'Customer Registration', 'Üye Kaydı'),
(17, 'Registration Successful', 'Kayıt Başarılı'),
(18, 'Cart', 'Sepet'),
(19, 'View Cart', 'Sepeti Görüntüle'),
(20, 'Update Cart', 'Sepeti Güncelle'),
(21, 'Back to Cart', 'Sepete Dön'),
(22, 'Checkout', 'Ödeme İşlemleri'),
(23, 'Proceed to Checkout', 'Ödeme İşlemine Geç'),
(24, 'Orders', 'Siparişler'),
(25, 'Order History', 'Sipariş Geçmişi'),
(26, 'Order Details', 'Sipariş Detayı'),
(27, 'Payment Date and Time', 'Ödeme Tarih ve Saati'),
(28, 'Transaction ID', 'İşlem Numarası'),
(29, 'Paid Amount', 'Ödenen Miktar'),
(30, 'Payment Status', 'Ödeme Durumu'),
(31, 'Payment Method', 'Ödeme Yöntemi'),
(32, 'Payment ID', 'Ödeme Numarası'),
(33, 'Payment Section', 'Ödeme Bölümü'),
(34, 'Select Payment Method', 'Ödeme Yöntemi Seç'),
(35, 'Select a Method', 'Yöntem Seç'),
(36, 'PayPal', 'PayPal'),
(37, 'Stripe', 'Stripe'),
(38, 'Bank Deposit', 'Banka Hesabı'),
(39, 'Card Number', 'Kart Numarası'),
(40, 'CVV', 'CVV'),
(41, 'Month', 'Ay'),
(42, 'Year', 'Yıl'),
(43, 'Send to this Details', 'Ayrıntıları Gönder'),
(44, 'Transaction Information', 'İşlem Bilgileri'),
(45, 'Include transaction id and other information correctly', 'İşlem numarasını ve diğer bilgileri doğru şekilde ekleyin'),
(46, 'Pay Now', 'Ödeme Yapın'),
(47, 'Product Name', 'Ürün Adı'),
(48, 'Product Details', 'Ürün Ayrıntıları'),
(49, 'Categories', 'Kategoriler'),
(50, 'Category:', 'Kategori:'),
(51, 'All Products Under', 'Ürünler'),
(52, 'Select Size', 'Beden'),
(53, 'Select Color', 'Renk'),
(54, 'Product Price', 'Ürün Fiyatı'),
(55, 'Quantity', 'Miktar'),
(56, 'Out of Stock', 'Stoklar Tükendi'),
(57, 'Share This', 'Paylaş'),
(58, 'Share This Product', 'Ürünü Paylaş'),
(59, 'Product Description', 'Ürün Açıklaması'),
(60, 'Features', 'Özellikler'),
(61, 'Conditions', 'Koşullar'),
(62, 'Return Policy', 'İade Politikası'),
(63, 'Reviews', 'Yorumlar'),
(64, 'Review', 'Yorum'),
(65, 'Give a Review', 'Yorum Yapın'),
(66, 'Write your comment (Optional)', 'Yorumunuzu yazın (isteğe bağlı)'),
(67, 'Submit Review', 'Yorum Gönder'),
(68, 'You already have given a rating!', 'Zaten bir puan verdiniz!'),
(69, 'You must have to login to give a review', 'Yorum yapabilmek için giriş yapmalısınız'),
(70, 'No description found', 'Açıklama bulunamadı'),
(71, 'No feature found', 'Özellik bulunamadı'),
(72, 'No condition found', 'Koşul bulunamadı'),
(73, 'No return policy found', 'İade politikası bulunamadı'),
(74, 'Review not found', 'Yorum bulunamadı'),
(75, 'Customer Name', 'Üye Adı'),
(76, 'Comment', 'Yorum'),
(77, 'Comments', 'Yorumlar'),
(78, 'Rating', 'Rating'),
(79, 'Previous', 'Önceki'),
(80, 'Next', 'Sonraki'),
(81, 'Sub Total', 'Ara Toplam'),
(82, 'Total', 'Toplam'),
(83, 'Action', 'Aksiyon'),
(84, 'Shipping Cost', 'Nakliye Maliyeti'),
(85, 'Continue Shopping', 'Alışverişe Devam Et'),
(86, 'Update Billing Address', 'Fatura Adresini Güncelle'),
(87, 'Update Shipping Address', 'Gönderim Adresini Güncelle'),
(88, 'Update Billing and Shipping Info', 'Fatura ve Gönderim Bilgilerini Güncelleyin'),
(89, 'Dashboard', 'Hesabım'),
(90, 'Welcome to the Dashboard', 'Hesabınıza Hoş Geldiniz!'),
(91, 'Back to Dashboard', 'Hesap Sayfanıza Dönün'),
(92, 'Subscribe', 'Abone'),
(93, 'Subscribe To Our Newsletter', 'Bültenimize Abone Olun'),
(94, 'Email Address', 'E-posta Adresi'),
(95, 'Enter Your Email Address', 'E-posta Adresinizi Girin'),
(96, 'Password', 'Şifre'),
(97, 'Forget Password', 'Şifremi Unuttum'),
(98, 'Retype Password', 'Şifrenizi Tekrar Yazın'),
(99, 'Update Password', 'Şifreyi Güncelle'),
(100, 'New Password', 'Yeni Şifre'),
(101, 'Retype New Password', 'Yeni Şifreyi Tekrar Yazın'),
(102, 'Full Name', 'Ad Soyad'),
(103, 'Company Name', 'Şirket Adı'),
(104, 'Phone Number', 'Telefon Numarası'),
(105, 'Address', 'Adres'),
(106, 'Country', 'Ülke'),
(107, 'City', 'Şehir'),
(108, 'State', 'Cadde / Sokak'),
(109, 'Zip Code', 'Posta Kodu'),
(110, 'About Us', 'Hakkımızda'),
(111, 'Featured Posts', 'Öne Çıkan Gönderiler'),
(112, 'Popular Posts', 'Popüler Gönderiler'),
(113, 'Recent Posts', 'Son Gönderiler'),
(114, 'Contact Information', 'İletişim Bilgileri'),
(115, 'Contact Form', 'İletişim Formu'),
(116, 'Our Office', 'Ofisimiz'),
(117, 'Update Profile', 'Profili Güncelle'),
(118, 'Send Message', 'Mesaj Gönder'),
(119, 'Message', 'Mesaj'),
(120, 'Find Us On Map', 'Bizi Haritada Bulun'),
(121, 'Congratulation! Payment is successful.', 'Tebrikler! Ödeme başarılı'),
(122, 'Billing and Shipping Information is updated successfully.', 'Fatura ve Gönderim Bilgileri başarıyla güncellendi.'),
(123, 'Customer Name can not be empty.', 'Müşteri Adı boş olamaz.'),
(124, 'Phone Number can not be empty.', 'Telefon Numarası boş olamaz.'),
(125, 'Address can not be empty.', 'Adres boş olamaz.'),
(126, 'You must have to select a country.', 'Bir ülke seçmelisiniz.'),
(127, 'City can not be empty.', 'Şehir boş olamaz.'),
(128, 'State can not be empty.', 'Cadde / Sokak boş olamaz.'),
(129, 'Zip Code can not be empty.', 'Posta Kodu boş olamaz.'),
(130, 'Profile Information is updated successfully.', 'Profil Bilgileri başarıyla güncellendi.'),
(131, 'Email Address can not be empty', 'E-posta Adresi boş olamaz'),
(132, 'Email and/or Password can not be empty.', 'E-posta ve/veya Şifre boş olamaz.'),
(133, 'Email Address does not match.', 'E-posta Adresi eşleşmiyor.'),
(134, 'Email address must be valid.', 'E-posta adresi geçerli olmalıdır.'),
(135, 'You email address is not found in our system.', 'E-posta adresiniz sistemimizde bulunamadı.'),
(136, 'Please check your email and confirm your subscription.', 'Lütfen e-postanızı kontrol edin ve aboneliğinizi onaylayın.'),
(137, 'Your email is verified successfully. You can now login to our website.', 'E-postanız başarıyla doğrulandı. Artık sitemize giriş yapabilirsiniz.'),
(138, 'Password can not be empty.', 'Şifre boş olamaz.'),
(139, 'Passwords do not match.', 'Şifreler eşleşmiyor.'),
(140, 'Please enter new and retype passwords.', 'Lütfen yeni girin ve şifreleri tekrar yazın.'),
(141, 'Password is updated successfully.', 'Şifre başarıyla güncellendi.'),
(142, 'To reset your password, please click on the link below.', 'Şifrenizi sıfırlamak için lütfen aşağıdaki bağlantıya tıklayın.'),
(143, 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM', 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM'),
(144, 'The password reset email time (24 hours) has expired. Please again try to reset your password.', 'Şifre sıfırlama e-postasının süresi (24 saat) doldu. Lütfen şifrenizi sıfırlamayı tekrar deneyin.'),
(145, 'A confirmation link is sent to your email address. You will get the password reset information in there.', 'E-posta adresinize bir onay bağlantısı gönderilir. Orada şifre sıfırlama bilgilerini alacaksınız.'),
(146, 'Password is reset successfully. You can now login.', 'Şifre başarıyla sıfırlandı. Artık giriş yapabilirsiniz.'),
(147, 'Email Address Already Exists', 'E-posta adresi zaten mevcut.'),
(148, 'Sorry! Your account is inactive. Please contact to the administrator.', 'Üzgünüm! Hesabınız etkin değil. Lütfen yöneticiyle iletişime geçin.'),
(149, 'Change Password', 'Şifre Değiştir'),
(150, 'Registration Email Confirmation for YOUR WEBSITE', 'WEB Siteniz için Kayıt E-posta Onayı.'),
(151, 'Thank you for your registration! Your account has been created. To active your account click on the link below:', 'Kaydınız için teşekkür ederiz! Hesabınız oluşturuldu. Hesabınızı aktif hale getirmek için aşağıdaki bağlantıya tıklayın:'),
(152, 'Your registration is completed. Please check your email address to follow the process to confirm your registration.', 'Kaydınız tamamlandı. Kaydınızı onaylama sürecini takip etmek için lütfen e-posta adresinizi kontrol edin.'),
(153, 'No Product Found', 'Ürün Bulunamadı'),
(154, 'Add to Cart', 'Sepete Ekle'),
(155, 'Related Products', 'İLGİLİ ÜRÜNLER'),
(156, 'See all related products from below', 'Aşağıda ilgili tüm ürünleri görün...'),
(157, 'Size', 'Beden'),
(158, 'Color', 'Renk'),
(159, 'Price', 'Ücret'),
(160, 'Please login as customer to checkout', 'Lütfen ödeme yapmak için kullanıcı olarak giriş yapın.'),
(161, 'Billing Address', 'Fatura Adresi'),
(162, 'Shipping Address', 'Gönderi Adresi'),
(163, 'Rating is Submitted Successfully!', 'Derecelendirme Başarıyla Gönderildi!');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_mid_category`
--

CREATE TABLE `tbl_mid_category` (
  `mcat_id` int(11) NOT NULL,
  `mcat_name` varchar(150) CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `tcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tbl_mid_category`
--

INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(22, 'Kız Çocuk (3-15 Yaş)', 3),
(23, 'Erkek Çocuk (3-15 Yaş)', 3),
(24, 'Kız Bebek (0-24 Ay)', 3),
(25, 'Erkek Bebek (0-24 Ay)', 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(150) CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `size` varchar(100) CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `color` varchar(100) CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `quantity` varchar(50) CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `unit_price` varchar(50) CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `payment_id` varchar(150) CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `about_title` varchar(150) NOT NULL,
  `about_content` text NOT NULL,
  `about_banner` varchar(150) NOT NULL,
  `about_meta_title` varchar(150) NOT NULL,
  `about_meta_keyword` text NOT NULL,
  `about_meta_description` text NOT NULL,
  `faq_title` varchar(150) NOT NULL,
  `faq_banner` varchar(150) NOT NULL,
  `faq_meta_title` varchar(150) NOT NULL,
  `faq_meta_keyword` text NOT NULL,
  `faq_meta_description` text NOT NULL,
  `blog_title` varchar(150) NOT NULL,
  `blog_banner` varchar(150) NOT NULL,
  `blog_meta_title` varchar(150) NOT NULL,
  `blog_meta_keyword` text NOT NULL,
  `blog_meta_description` text NOT NULL,
  `contact_title` varchar(150) NOT NULL,
  `contact_banner` varchar(150) NOT NULL,
  `contact_meta_title` varchar(150) NOT NULL,
  `contact_meta_keyword` text NOT NULL,
  `contact_meta_description` text NOT NULL,
  `pgallery_title` varchar(150) NOT NULL,
  `pgallery_banner` varchar(150) NOT NULL,
  `pgallery_meta_title` varchar(150) NOT NULL,
  `pgallery_meta_keyword` text NOT NULL,
  `pgallery_meta_description` text NOT NULL,
  `vgallery_title` varchar(150) NOT NULL,
  `vgallery_banner` varchar(150) NOT NULL,
  `vgallery_meta_title` varchar(150) NOT NULL,
  `vgallery_meta_keyword` text NOT NULL,
  `vgallery_meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `txnid` varchar(150) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `card_number` varchar(50) NOT NULL,
  `card_cvv` varchar(10) NOT NULL,
  `card_month` varchar(10) NOT NULL,
  `card_year` varchar(10) NOT NULL,
  `bank_transaction_info` text NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `shipping_status` varchar(20) NOT NULL,
  `payment_id` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `customer_id`, `customer_name`, `customer_email`, `payment_date`, `txnid`, `paid_amount`, `card_number`, `card_cvv`, `card_month`, `card_year`, `bank_transaction_info`, `payment_method`, `payment_status`, `shipping_status`, `payment_id`) VALUES
(58, 12, 'ise311', 'ise311@gmail.com', '2024-12-21 09:43:17', '', 5199, '', '', '', '', '', 'PayPal', 'Completed', 'Completed', '1734802997');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL,
  `caption` varchar(150) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tbl_photo`
--

INSERT INTO `tbl_photo` (`id`, `caption`, `photo`) VALUES
(1, 'Photo 1', 'photo-1.jpg'),
(2, 'Photo 2', 'photo-2.jpg'),
(3, 'Photo 3', 'photo-3.jpg'),
(4, 'Photo 4', 'photo-4.jpg'),
(5, 'Photo 5', 'photo-5.jpg'),
(6, 'Photo 6', 'photo-6.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(150) NOT NULL,
  `post_slug` varchar(150) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` varchar(150) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `category_id` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(150) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(150) CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `p_old_price` varchar(10) CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `p_current_price` varchar(10) CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `p_qty` int(10) NOT NULL,
  `p_featured_photo` varchar(150) CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `p_description` text CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `p_short_description` text CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `p_feature` text CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `p_condition` text CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `p_return_policy` text CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `p_total_view` int(11) NOT NULL,
  `p_is_featured` int(1) NOT NULL,
  `p_is_active` int(1) NOT NULL,
  `ecat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(103, 'Caterpillar Kız Çocuk Deri Bot', '3999', '2599', 9, 'product-featured-103.jpg', '<div class=\"product-information-card_content__Nf_Hn\"><div class=\"product-information-ca<span style=\" background-color:=\"\" rgb(255,=\"\" 156,=\"\" 0);\"=\"\"><div class=\"product-information-card_tableWrapper__mLIy4\"><div style=\"background-color: rgb(248, 246, 247); padding: 8px;\"><label>Dış Materyal</label>                 <label>:</label><span>Deri<br></span><label>İç Materyal</label>                    :<span>Deri + Tekstil <br></span><label>Taban</label>                             <span>:Kauçuk<br></span><label>Topuk Boyu</label>                   <span>:3,5 cm<br></span><label>Topuk Tipi</label>                     <label>:</label><span>Düz<br></span><label>Renk</label>                               <span>:Bej<br></span><label>Cinsiyet</label>                         <span>:Kız Çocuk</span></div></div></div></div><p></p><br><p></p>', '', '', '', '', 82, 1, 1, 80),
(104, 'Kız Çocuk Düz Sweatshirt', '499', '325', 8, 'product-featured-104.jpg', '<div class=\"product-information-card_subContainer__gQn9A\"><div class=\"product-information-card_tableWrapper__mLIy4\"><div style=\"background-color: rgb(248, 246, 247); padding: 8px;\"><label>Desen</label>              <label>:</label><span>Düz<br></span><label>Kalıp Bilgisi</label>    <label>:</label><span>Cropped Fit<br></span><label>Kol Bilgisi</label>        <span>:Uzun<br></span><label>Yaka Bilgisi<br></label>     <span>:Bisiklet<br></span><label>Cinsiyet</label>            <span>:Kız Çocuk</span></div></div></div><p></p>', '', '', '', '', 11, 1, 1, 81),
(105, 'Barbie Kız Çocuk Düz Örgü Bere', '449', '259', 8, 'product-featured-105.jpg', '<div class=\"product-information-card_tableWrapper__mLIy4\"><div style=\"background-color: rgb(248, 246, 247); padding: 8px;\"><label>Barbie Bere, 4-7 Yaş</label></div><div style=\"background-color: rgb(248, 246, 247); padding: 8px;\"><label>Desen</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>:Düz Örgü</span></div><div style=\"background-color: rgb(248, 246, 247); padding: 8px;\"><label>Cinsiyet</label>&nbsp;&nbsp;&nbsp;&nbsp;<span>:Kız Çocuk</span></div></div><p></p>', '', '', '', '', 1, 1, 1, 82),
(106, 'Junoo Çocuk Eğitici Oyuncak Arttırılmış Gerçeklik ', '199', '119', 10, 'product-featured-106.jpg', '<div class=\"product-information-card_subContainer__gQn9A\"><label>Menşei</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=\"font-weight: normal;\"><label><span style=\"font-weight: normal;\">:</span></label></span><span>Çin<br></span><label>Model Kodu</label>&nbsp;&nbsp;&nbsp;&nbsp; <span>:00-06809/IS- Arttırılmış Gerçeklik<br></span><label>Cinsiyet</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>:Unisex Çocuk</span></div><div class=\"product-information-card_subContainer__gQn9A\"><p>Arttırılmış\r\n Gerçeklik (AR Augmented Reality) desteği sayesinde iOS ve Android \r\nüzerinden cep telefonu ve tabletleriniz ile kutu içindeki tüm \r\nkarakterleri üç boyutlu birer holograma çevirebilir ve onları kendiniz \r\nile aynı resim ve videolar içinde kullanabilirsiniz.\r\n\r\nFlamingoları canlandırma zamanı!\r\n\r\nYap-bozu tamamlayıp kartondan desenleri üzerine koyun ve flamingoların \r\nhareketlerini izleyin. İsterseniz kartonları elinizde tutabilir, \r\neğlenceli görüntüleri değişik şekillerde elde edebilirsiniz.\r\n\r\nUygulamadan çektiğiniz eğlenceli fotoğrafları paylaşarak herkesi hayrete\r\n düşürün! Bırakın herkes sihrinizin nereden kaynaklandığını merak etsin!\r\n Arkadaşlarınızı şaşırtmaya hazır mısınız?</p></div><p></p>', '', '', '', '', 1, 1, 1, 83),
(107, 'Meraklı Çakıl Mutfakta', '180', '200', 10, 'product-featured-107.jpg', '<p>Tıkır tıkır sesler geliyordu mutfaktan, bir de hiç güzel olmayan \r\nkokular. Çakıl hemen odasından çıktı, evin dar koridorunda zıplaya \r\nzıplaya yürümeye başladı. Meraklı mı meraklı, sevimli mi sevimli \r\nÇakıl?ın her macerasında bir duygu gizli. Bu kitapta da ?iğrenmek? ile \r\nilgili sıcacık bir öykü var.&nbsp;&nbsp;</p>Resimleyen: Burcu Yıldız<p></p>', '', '', '', '', 4, 1, 1, 84),
(108, 'Ayıcık İle Hayvanlar', '210', '200', 10, 'product-featured-108.jpg', '<p></p><p>Yıkanabilir,\r\n oldukça sevimli bir oyuncak ayıcıktır. Ama artık yaşlanmış ve tüyleri \r\nyıkanıp taranmaktan yıpranmıştır. Hatta sahibi olan çocuk bile onunla \r\noynayamayacak kadar büyümüştür. Bir gün küstah bir sinek gelir, \r\nyıkanabilir\'e dünyada var olma amacını sorar. Ama ayıcık bu soruya yanıt\r\n veremez. Yıkanabilir\'in dünyada neden var olduğunu bulmasına acaba \r\ndiğer hayvanlar yardımcı olabilecekler midir?Sayfa Sayısı: 28Baskı Yılı:\r\n 2016Dili: TürkçeYayınevi: Kırmızı Kedi </p><p></p><h2><br></h2><p></p>', '', '', '', '', 0, 1, 1, 89),
(109, 'Nike AIR ZOOM CROSSOVER  Erkek Çocuk Basketbol Ayakkabısı', '3099', '2549', 10, 'product-featured-109.jpg', '<div class=\"product-information-card_tableWrapper__mLIy4\"><div style=\"background-color: rgb(248, 246, 247); padding: 8px;\"><label>Nike Basketbol Ayakkabısı</label></div><div style=\"background-color: rgb(248, 246, 247); padding: 8px;\"><label>Dış Materyal</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight: normal;\"><label><span style=\"font-weight: normal;\">:</span></label></span><span>Deri + Tekstil<br></span><label>İç Materyal</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Tekstil<br></span><label>Menşei</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Vietnam<br></span><label>Model Kodu</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:FB2689-401-NIKE AIR ZOOM CROSSOVER<br></span><label>Taban</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Kauçuk<br></span><label>Topuk Tipi</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Düz<br></span><label>Renk</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Lacivert<br></span><label>Cinsiyet</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Erkek Çocuk</span></div></div><p></p>', '', '', '', '', 1, 1, 1, 85),
(110, 'Jack & Jones Erkek Çocuk Düz Şişme Mont', '3999', '3049', 10, 'product-featured-110.jpg', '<div class=\"product-information-card_subContainer__gQn9A\"><div class=\"product-information-card_tableWrapper__mLIy4\"><div style=\"background-color: rgb(248, 246, 247); padding: 8px;\"><label>Jack &amp; Jones Şişme Mont</label></div><div style=\"background-color: rgb(248, 246, 247); padding: 8px;\"><label>Cep Bilgisi</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>:</label><span>5 Cep<br></span><label>Desen</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>:Düz<br></span><label>Kalıp Bilgisi</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Normal<br></span><label>Kol Bilgisi</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Uzun<br></span><label>Yaka Bilgisi</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Fermuarlı<br></span><label>Renk</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label>:</label><span>Füme<br></span><label>Cinsiyet</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label>:</label><span>Erkek Çocuk</span></div></div></div><p></p>', '', '', '', '', 0, 1, 1, 86),
(111, 'Casio MTP-VD01D-1BVUDF Erkek Çocuk Kol Saati', '2049', '1849', 10, 'product-featured-111.jpg', '<div class=\"product-information-card_tableWrapper__mLIy4\"><div style=\"background-color: rgb(248, 246, 247); padding: 8px;\"><label>Cinsiyet</label>&nbsp;&nbsp;&nbsp;&nbsp;<label>:</label><span>Erkek</span><p>Temel\r\n Özellikler;Takvim Genel Özellikler;Tarz : Klasik SaatSeri : \r\nStandartKasa Şekli : OvalKasa Cinsi : İyon KaplamaKasa Rengi : GriKadran\r\n Rengi : SiyahKordon Rengi : GriKordon Tipi : ÇelikCam Tipi : MineralSu \r\nGeçirmezlik : 50 MtAğırlık : 118 GrÖlçü : 45x49x10.3Makine Tipi : \r\nAnalogMenşei : ÇinDiğer Özellikler;3 Katlamalı Klips, 3 Yıl Pil Ömrü</p></div></div><p></p>', '', '', '', '', 1, 1, 1, 87),
(112, 'Abaküs', '1349', '1299', 10, 'product-featured-112.jpg', '<div class=\"product-information-card_tableWrapper__mLIy4\"><div style=\"background-color: rgb(248, 246, 247); padding: 8px;\"><label>Cinsiyet</label>&nbsp;&nbsp;&nbsp;&nbsp;<span>:Unisex Çocuk</span><br><p>Canlı\r\n renklerden oluşan ahşap abaküs sayı sayma, renklerin, şekillerin ve \r\nbasit matematik işlemlerin öğretilmesi için kullanılır. Ürün üzerinde \r\neğlenceli aktivite önerileri yer almaktadır. Bu üründe toksik olmayan \r\nboyalar kullanılmıştır, gerekli Avrupa Birliği ve ABD oyuncak güvenlik \r\nstandartlarına uygundur. Önerilen Yaş: 3+</p></div></div><p></p>', '', '', '', '', 0, 1, 1, 88),
(113, 'Maya İçi Peluş Kürklü Kız Bebek Bot', '1750', '1650', 10, 'product-featured-113.jpg', '<div class=\"product-information-card_tableWrapper__mLIy4\"><div style=\"background-color: rgb(248, 246, 247); padding: 8px;\"><label>Dış Materyal</label>&nbsp;&nbsp;&nbsp;&nbsp;<label>:</label><span>Deri<br></span><label>İç Materyal</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Deri<br></span><label>Kalıp Bilgisi</label>&nbsp;&nbsp;&nbsp;&nbsp; <span>:Normal<br></span><label>Taban</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Termoplastik<br></span><label>Topuk Tipi</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Düz<br></span><label>Cinsiyet</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Kız Bebek</span><br><p>Maya İçi Peluş Kürklü Kız Bebek Bot Pudra Rengi\r\n&nbsp;\r\nÜrünümüz Hakiki deri ve Suni deri malzemeler kullanılarak makine destekli el işçiliğiyle üretilmiştir.&nbsp;\r\nİç astarında Hakiki Dana Derisi ve Sentetik Kürk kullanılmıştır.\r\nÜrünümüz Soğuk havaya dayanıklıdır.\r\nİç tabanı anatomiktir ve Sentetik Kürklüdür.\r\nDış tabanı Hafif Thermo tabandır.\r\nModelimiz konfor ve tasarımı bir araya getirmektedir, oldukça esnek ve hafiftir.\r\nÜrünümüz ayak sağlığı ve gelişimi için uygun olmakla birlikte zararlı kimyasal maddeler kullanılmamıştır.</p></div></div><p></p>', '', '', '', '', 1, 1, 1, 90),
(114, 'Kraft Smart Kız Bebek Arabası', '', '9999', 10, 'product-featured-114.jpg', '<div class=\"product-information-card_tableWrapper__mLIy4\"><div style=\"background-color: rgb(248, 246, 247); padding: 8px;\"><label>Ana Kucağı Uyumu</label>&nbsp;&nbsp;&nbsp;&nbsp;<label>:</label><span>Yok<br></span><label>Garanti Süresi</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>:2 Yıl<br></span><label>Malzeme</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Tekstil<br></span><label>Renk</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>:Pembe<br></span><label>Cinsiyet</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Unisex Bebek</span><p>Smart\r\n Bebek Arabası Pembe Smart bebek arabası pembe, kabin boy özelliğiyle \r\nöne çıkan özel bir taşıma aracıdır. Çocuklu aileler tarafından yoğun \r\nilgi gören bu taşıma aracı modeli, bebek ürünleri arasında en fazla \r\nihtiyaç duyulan eşyalardan biridir. Fonksiyonel özelliklerle donatılarak\r\n ebeveynlerin beğenisine sunulan araba, pratik kullanımıyla öne çıkar. \r\nBaston model olan Smart bebek arabası pembe toplu taşımalarda ve \r\naraçlarda da ebeveynlere destek olur. Smart bebek arabası pembeyle \r\nbebeklerin dışardayken rahat uyumalarını sağlayabilirsiniz. Yürüyüş, \r\nalışveriş ve seyahatler için ideal olan Smart bebek arabası pembe; \r\nçocukların rahatını bozmadan, emniyetle taşınması için özel donanımlarla\r\n tasarlanır. Aynı zamanda ebeveynler için çocuklarla gezmeyi daha kolay \r\nhale getirir. Ebeveynleri yormayan bir bebek arabası modeli olduğu için \r\nsürüş kalitesini bozmadan uzun süre kullanmanıza yardımcı olur. Pratik \r\nşekilde katlanır ve taşınabilir olan ürünü bu sayede daha minimal \r\nboyutlara getirebilirsiniz. Böylece bebek arabasını aracınızın bagajında\r\n saklayabilir ve seyahatlerde kolayca kullanabilirsiniz. Doğumdan \r\nİtibaren Kullanabileceğiniz Smart Bebek Arabası Pembe Smart bebek \r\narabası pembe ideal boyutlarda tasarlandığı için doğumdan itibaren \r\nkullanılabilir. Gerek emniyet kemeri detayı gerekse göğüs koruyucuları \r\nile bebeklerin her yaş döneminde rahat etmesini sağlar. Bebeklerin \r\nhassas yapısı ön planda tutularak tasarlanan ürün, 0-3 yaş arası için \r\nkullanıma sunulur. Özellikle puset ve iç minderleri ile farklı yaş \r\ngrubundaki bebeklere konfor alanı oluşturur. Bebeği için en iyisini \r\nisteyen ebeveynlere de gönül rahatlığı sunar. Ebeveynlerin günlük \r\nhayatını kolaylaştırmak için tasarlanan Smart bebek arabası pembe, hem \r\nfonksiyon hem stil açısından farklı ihtiyaçlara cevap verir. Dilerseniz \r\nbebeğinizin farklı yatış ve oturuş şekline göre açısını \r\nayarlayabilirsiniz. Ayrıca bu araba modeli kompakt, işlevsel, çok yönlü \r\nve dayanıklı yapısıyla bebeğinizi güvenle taşımanıza yardımcı olur. \r\nİstediğiniz zaman bebeğiniz ile birlikte dışarı çıkabilir ve uzun \r\nyürüyüşler yapabilirsiniz. Smart Bebek Arabası Pembe Özellikleri Baston \r\nbebek arabası kategorisinin öne çıkan ürünlerinden biri Smart bebek \r\narabası pembedir. Fonksiyonel özellikleri bakımından kullanıcı dostu \r\nolan ürün, anne ve babalara konforlu bir taşıma imkânı sunar. Smart \r\nbebek arabasının diğer teknik özellikleri şöyle sıralanabilir; Smart \r\nbebek arabası pembe Avrupa standartlarına uygun olarak üretilir. \r\nArabanın arka tarafı fermuarlı sisteme sahiptir. Yaz aylarında ekstra \r\nkonfor sağlayan fermuarlı sistem, hava sirkülasyonu yaparak hem \r\nbebeklerin terlemesini azaltır hem sıcaktan bunalmasını önlemeye \r\nyardımcı olur. Arabanın 5 noktalı emniyet kemeri bulunur. Böylece \r\nbebeklerin sürüş esnasında sarsılmasını önler ve güvenliği sağlar. Sabit\r\n durması için fren sistemine sahiptir. Tek tuşla devreye giren fren \r\nsistemi arabanın hareketliliğini kısıtlamaya yardımcı olur. Ani çarpma \r\ndurumunda bebeklerin korunmasını ve zarar görmesini önleyen yumuşak \r\ngöğüs koruyucuları vardır. Bu kapsamda ani çarpma durumlarında \r\nbebeklerin hassas bedenini sarar. Farklı yaş gruplarına hitap ettiği \r\niçin çeşitli pozisyonlarda yatırılabilen sırt dayanağına sahiptir. \r\nÜrünün kalitesini yansıtan sırt dayanağı, yürüyüş sırasında bebeğin \r\nuyumasına ya da dışarıyı izlemesine imkân tanır. Bebeklerin güneş \r\nışınlarında korunmasını sağlayan özel güneşliği bulunur. Arabanın \r\ntentesinde yer alan ve fermuarlı yapıya sahip olan güneşlik, bebeklere \r\nkonfor sağlamakla birlikte ebeveynlerin de işini kolaylaştırır. \r\nEbeveynler için özel gözlem penceresi bulunur. Bebeklerin araba içindeki\r\n hareketleri sürekli olarak izlenebilir. El örmesi olan ön barı \r\nçıkarılabilir özelliktedir. Böylece hem bebekler araba içinde daha rahat\r\n oturur hem arabadan çıkarırken ebeveynlere kolaylık sağlar. Arabanın \r\nitme sapı el örmesidir. Ebeveynlere konfor sağlayacak şekilde tasarlanan\r\n itme sapı, sürüş esnasında ellerin zarar görmesini engeller. Ön \r\ntekerlekleri 360 derece dönebilen bir sisteme sahiptir. Bu özellik \r\nsadece kolay sürüş imkânı sağlamakla kalmaz, aynı zamanda yüksek manevra\r\n yeteneği de sağlar. Katlı hâlde taşınabilmesi için çekme kolu bulunur. \r\nEbeveynler kullanmadığı durumda dahi bebek arabasını yanında \r\ntaşıyabilir. Alt bölümünde geniş hacimli bir sepet vardır. Sepet \r\niçerisine biberon, suluk, bez, pijama ve bardaklık gibi çeşitli eşyalar \r\nyerleştirilebilir. Bebeklere Konfor Sağlayan Detaylarıyla Smart Bebek \r\nArabası Pembe Özel tasarımıyla öne çıkan Smart bebek arabası pembe, \r\nbebeklere konfor sağlayan çeşitli detaylara sahiptir. Bebeklerin \r\nyatarken, otururken ya da araç içinde hareket hâlindeyken rahat etmesini\r\n sağlar. Gerekli desteği sağlayacak yatış ve oturma pozisyonlarına \r\nsahiptir. Aynı zamanda bebeklerin büyümesine uygun olarak ayarlanabilir.\r\n Böylece bebekler her yaşta Smart bebek arabası pembenin keyfini \r\nçıkarabilir. Smart bebek arabası pembe üstün konforu sayesinde hem \r\nebeveynler hem bebekler için uzun vadede fayda sağlar. Bebeklerin \r\nkonforlu ve güvenli şekilde taşınması için belli bir sistem üzerine \r\nkurulu olarak tasarlanır. Bu kapsamda annelerin konforu da göz önünde \r\ntutulur. Arabanın itme sapı, sepeti ve çekme kolu ebeveynler için ekstra\r\n konfor sağlayan detaylarla güçlendirilir. Smart Bebek Arabası Pembe \r\nKullanım Avantajları Günlük kullanımın yanı sıra uzun süreli seyahatler \r\niçin Smart bebek arabası pembe tercih edilebilir. Sunduğu özelliklerle \r\nebeveynlere konfor vadeden bebek arabası malzeme kalitesiyle \r\nebeveynlerden tam not almayı başarır. Tasarımında kullanılan kumaştan \r\nfren sistemine kadar birçok detay bebeklerin olası sarsıntılardan \r\nminimum düzeyde etkilenmesini sağlar. Ergonomik ve kompakt tasarımıyla \r\nayrıca avantaj sağlayan ürünü kullanmadığınız durumlarda tek elle \r\nkatlayarak kolaylıkla muhafaza edebilirsiniz. Böylece yaşam \r\nalanlarınızda görüntü kalabalığı da oluşturmaz. Kullanmak istediğiniz \r\ndurumlarda ise kolayca açabilir ve sürmeye başlayabilirsiniz. Bu şekilde\r\n pratik kullanım imkânı sunan Smart bebek arabası pembe, bebeklerin \r\nolduğu kadar ebeveynlerin de ihtiyaçlarına çözüm üretir. Bebek Arabası \r\nAlırken Dikkat Edilmesi Gerekenler Bebek arabası alırken bebeklere \r\nkonfor, ebeveynlere ise pratik kullanım imkanı sunan bir ürün tercih \r\nedilmelidir. Bu noktada rahat, geniş, fonksiyonel, dayanıklı ve hafif \r\nbebek arabası modellerini değerlendirmek faydalı olacaktır. Kullanım \r\nesnasında rahatlık ve avantaj sağlayan bir bebek arabası almak için şu \r\ndetaylara dikkat edilebilir: Ürünün ağırlığı en önemli detaylar arasında\r\n yer alır. Bebek arabası ve puseti taşınabilirlik açısından ebeveynleri \r\ndesteklemeli ve hafif bir yapıya sahip olmalıdır. Bebek arabasının \r\ndengesi de oldukça önemlidir. Dengeli bir bebek arabası olası çarpma \r\nveya darbe durumunda bebeğin sarsılma olasılığını en aza indirir. \r\nTekerleklerinin ve itme sapının kolay sürülebilirlik sunması ebeveynlere\r\n avantaj sağladığı için büyük önem taşır. Böylece dar ve kalabalık \r\nsokaklarda dahi bebek arabasıyla birlikte yürüyebilirsiniz. Arabanın \r\nsırt dayanağının ayarlanabilir olması gerekir. Farklı kademelerde \r\nayarlanabilen sırt dayanağı bebeğinizin kendini rahatsız hissetmeden \r\noturması için önemli bir detaydır. Ürünün parçaları kolay temizlenebilir\r\n olmalıdır. Aynı zamanda parçaları kolay çıkarılıp takılan bebek \r\narabaları bakım ve temizlik açısından kullanıcılara avantaj sağlar. \r\nArabanın üretiminde kullanılan kumaşın antialerjik ve yumuşak dokulu \r\nolmasına dikkat etmenizde fayda vardır. Bebeklerin ciltleri hassas \r\nolduğu için kumaşın kimyasal içermemesi de gerekir. Bebek arabasının en \r\nönemli parçalarından biri olan tentenin güneş geçirmemesine dikkat \r\nedebilirsiniz. Güneşli günlerde bebeklerin rahat uyuması için bu detay \r\nönemlidir. Bebek arabasında ihtiyaç duyulacak eşyaları kolayca taşımak \r\niçin sepet bölümünü geniş hacimli olan modellere bakabilirsiniz. Siz de \r\nbebek arabası tercihinizi Smart bebek arabası pembeden yana kullanarak \r\nonun için en iyi seçimi yapabilirsiniz. Kraft ayrıcalıklarından \r\nfaydalanarak ürünü hemen satın alabilir ve bebeğiniz ile keyifli \r\ngezilere çıkabilirsiniz.</p></div></div><p></p>', '', '', '', '', 0, 1, 1, 91),
(115, 'Mamajoo Sterilizasyon & Saklama Kutulu Silikon Ortodontik İkili Emzik (0 ay +)', '352', '280', 10, 'product-featured-115.jpg', '<div class=\"product-information-card_tableWrapper__mLIy4\"><div style=\"background-color: rgb(248, 246, 247); padding: 8px;\"><label>Yaş Aralığı</label>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight: normal;\"><label><span style=\"font-weight: normal;\">:</span></label></span><span>0-6 Ay<br></span><label>Renk</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:</span><span>Pembe<br></span><label>Cinsiyet</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Unisex Bebek</span><p>Mamajoo Sterilizasyon &amp; Saklama Kutulu Silikon Ortodontik İkili \r\nEmzik Pembe İnek&nbsp;Özellikleri:&nbsp;\r\n&nbsp;\r\nMamajoo&nbsp;emzikleri bebek sağlığı ön planda tutularak AB Standartlarına \r\nuygun olarak ISO 9001 belgeli, en son teknoloji kullanılan üretim \r\ntesislerimizde en yüksek kalitede BPA içermeyen hammaddeler kullanılarak\r\n üretilmektedir.Avantajları:Mamajoo&nbsp;emzikler, yüksek kaliteli şeffaf, \r\ntatsız ve kokusuz silikondan üretilmiştir. Her yaş grubu için ideal \r\nyumuşaklıkta ve pürüzsüz olup kolay temizlenir.Mamajoo&nbsp;emziklerinin \r\nsilikon ucunun ortodontik (damaklı) formu bebeklerin diş ve damak \r\ngelişimine uygun tasarlanmıştır.Mamajoo&nbsp;emzik kalkanındaki hava \r\ndelikleri salya birikimini önleyecek, hava dolaşımını sağlayacak ve cilt\r\n tahriş riskini azaltacak şekilde geniş tasarlanmıştır.Mamajoo&nbsp;emzikte \r\nbulunan tutma güvenlik halkası gerektiğinde emziği ağızdan çıkarmak \r\namacıyla tutmak ve taşımak içindir.Mamajoo&nbsp;emzikler, farklı boy, renk ve\r\n desen seçenekleriyle 0-24 ay bebeklerin gelişimine ve ağız yapısına \r\nuygun yaş grupları için 3 boyda bulunur.Mamajoo Sterilizasyon &amp; \r\nSaklama Kutusu, emziklerin kullanılmadığı zamanlarda hijyenik olarak \r\nsaklanması için idealdir. Ayrıca saklama kutusu ile Mamajoo Emzikler \r\nmikrodalgada steril edilebilir. Hem evde, hem seyahatlerde pratik bir \r\nkullanım sağlar.&nbsp;\r\nUygun Olduğu Avrupa Standardı: EN 1400Paket İçeriği:1 x Mamajoo&nbsp;Silikon \r\nOrtodontik Desenli Emzik 0 ay+1 x&nbsp;Mamajoo&nbsp;Silikon Ortodontik Opak \r\nEmzik&nbsp;0 ay+1 x Mamajoo Sterilizasyon &amp; Saklama Kutusu\r\nTemizlik ve Bakım:&nbsp;\r\nElde veya bulaşık makinesinde yıkanabilir. İyice yıkandıktan sonra 5 \r\ndakika kaynatılarak ya da Mamajoo sterilizatörleri ile steril \r\nedilebilir. Ürünün ömrünü kısaltmamak için aşındırıcı deterjan \r\nkullanmaktan kaçınınız ve emzikleri belirli aralıklarla \r\ndeğiştiriniz.&nbsp;Mikrodalga kullanımı:&nbsp;Emziklerinizi iyice yıkayıp Mamajoo \r\nSterilizasyon &amp; Saklama Kutusuna yerleştirin ve 25 ml su ekleyin. \r\nMikrodalganızı 750 ? 1000 W?a ayarlayıp 3 dakika çalıştırın. Sonrasında \r\nbir süre soğumaya bırakıp içindeki suyu döktükten sonra ürünleriniz \r\nhijyenik olarak kullanıma hazır olacaktır.</p></div></div><p></p>', '', '', '', '', 0, 1, 1, 92),
(116, 'Turna 2\'li Bebek Bakım Örtüsü Seti %100 Organik Pamuk Müslin Baskılı Turkuaz', '', '580', 10, 'product-featured-116.jpg', '<div class=\"product-information-card_tableWrapper__mLIy4\"><div style=\"background-color: rgb(248, 246, 247); padding: 8px;\"><label>Ürün Materyali&nbsp; <span style=\"font-weight: normal;\">:</span></label><span>%100 Organik Pamuk<br></span><label>Renk</label><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; :Turkuaz</span><p>NEDEN\r\n ORGANİK EGE PAMUĞU?\r\n\r\n\r\nBiyolojik pamuk üretiminde hiçbir suni gübre ve tarım ilacı \r\nkullanılamaz. Üretimde çok fazla su tasarrufu sağlanır, topraklar uzun \r\nvadede verimli ve sağlıklı kalır, iklim ve tüm ekosistem korunur.\r\n\r\n\r\nOrganik pamuklu ev tekstil ürünlerimiz, çevreye olduğu kadar pamuk \r\nüretimindeki insanlar için de faydalıdır.\r\n\r\n\r\n%100 Organik Pamuk müslin kumaştan üretilen örtü setlerimiz, \r\nanti-alerjik yapı, nefes alan doku ve terletmeyen özelliğe sahiptir.\r\n \r\n \r\n&gt;Kumaş yapısındaki doğal kırışıklıklar ütü gerektirmez.\r\n&gt;2li set olarak satılmaktadır.\r\n \r\n \r\nMüslin örtü setlerimiz yumuşak ve doğal dokusuyla bebeklerinizi ve sizi \r\nrahatlatacaktır.\r\n \r\n \r\nGOTs Sertifikalı bu ürünümüzdeki Organik Pamuk, hiçbir kimyasal gübre \r\nkullanılmadan ve geleneksel pamuğa göre çok daha az su kullanılarak \r\nyetiştirilir. Aynı zamanda süper nefes alabilirliği ile kalitesini \r\nkorumaktadır.\r\n \r\n \r\nSET İÇERİĞİ \r\n\r\n\r\n2 Adet Bebek Bakım Örtüsü : 30x30cm / 100x100cm</p></div></div><p></p>', '', '', '', '', 0, 1, 1, 93),
(117, 'Name İt Pembe Kız Bebek Fermuarlı Uzun Kollu Uzun Düz Mont', '1299', '749', 10, 'product-featured-117.jpg', '<div class=\"product-information-card_tableWrapper__mLIy4\"><div style=\"background-color: rgb(248, 246, 247); padding: 8px;\"><label>Bel Bilgisi</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-weight: normal;\"><label><span style=\"font-weight: normal;\">:</span></label></span><span>Normal<br></span><label>Boy Bilgisi</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Uzun<br></span><label>Cep Bilgisi</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Cepli<br></span><label>Desen</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Düz<br></span><label>Kalıp Bilgisi</label>&nbsp;&nbsp;&nbsp;&nbsp; <span>:Standart<br></span><label>Kol Bilgisi</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Uzun<br></span><label>Materyal</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=\"font-weight: normal;\"><label><span style=\"font-weight: normal;\">:</span></label></span><span>%100 Pamuk</span><span><br></span><label>Yaka Bilgisi</label>&nbsp;&nbsp;&nbsp;&nbsp; <span style=\"font-weight: normal;\"><label><span style=\"font-weight: normal;\">:</span></label></span><span>Fermuarlı</span><label><br></label></div></div><p></p>', '', '', '', '', 0, 1, 1, 94),
(118, 'U.S. Polo Assn Sweetie Erkek Bebek Ayakkabı', '519', '419', 10, 'product-featured-118.jpg', '<div class=\"product-information-card_tableWrapper__mLIy4\"><div style=\"background-color: rgb(248, 246, 247); padding: 8px;\"><label>U.S. Polo Assn Sweetie Erkek Bebek Ayakkabı</label></div><div style=\"background-color: rgb(248, 246, 247); padding: 8px;\"><label>Dış Materyal</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Deri + Kumaş<br></span><label>İç Materyal</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Tekstil<br></span><label>Renk</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Lacivert<br></span><label>Cinsiyet</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Erkek Bebek</span></div></div><p></p>', '', '', '', '', 0, 1, 1, 95),
(119, 'Mayoral Çift Fermuarlı Bebek Astronot Mont', '', '3495', 10, 'product-featured-119.jpg', '<p>0-18 Ay Mayoral Çift Fermuarlı Bebek Astronot Montİspanyol Mayoral \r\nKalitesi İle Tasarlanmış Ve Çocuğunuzun Teni ile Dost Sağlıklı \r\nMateryaller Kullanılarak Üretilmiştir. Mayoral Markalı Giyim Ürünlerinde\r\n Kalıplar genelde Daha dardır bu sebeple Çocuğunuzun Normalde Giydiği \r\nYaşın Bir Beden Büyüğünü Tercih Etmeniz Önerimizdir.  Ürününüzün İlk \r\nGünkü Canlılığını daha uzun süre Koruyabilmek için Yıkama Talimatlarına \r\nuyunuz. Ürün Sezon Bilgisi: Sonbahar Kış%100 PolyesterMarkanın Ait \r\nOlduğu Ülke: İspanya</p>', '', '', '', '', 0, 1, 1, 96),
(120, 'Inglesina Cab 0+ Bebek Ana Kucag?ı ve Oto Koltug?u 0-13 kg', '', '13990', 10, 'product-featured-120.jpg', '<p>Inglesina Cab Gr 0+ Bebek Ana Kucag?ı ve Oto Koltug?u 0-13 kg\r\nECE R44/04 Sertifikalı\r\nRahat ve güvenli seyahatler için ergonomi ve güvenlik!\r\n&nbsp;\r\nSeyahat sırasında konfor ve güvenlik bir arada\r\nInglesina Cab Gr 0+ Bebek Ana Kucag?ı ve Oto Koltug?u, ECE R44/04 \r\nstandardına göre onaylıdır ve hafifliği (sadece 4,4 kg) sayesinde rahat \r\nbir şekilde taşınır.\r\n&nbsp;\r\nGüvenli Seyahatler\r\nInglesina Cab Gr 0+ Bebek Ana Kucag?ı ve Oto Koltug?u, arabanıza ve \r\nbebek arabanıza kolay takılır ve çıkarılır.&nbsp;\r\nAraç içinde isteğe bağlı ayrı satılan bazası ile birlikte veya bazasız \r\nkullanılabilir.Yan Baş Koruma sistemi, yandan darbe durumunda ekstra \r\ngüvenlik sağlar.\r\n\r\nYolculuklarınızda güvenli ve emniyetli\r\nInglesina Cab Gr 0+ Bebek Ana Kucag?ı ve Oto Koltug?u, en son güvenlik \r\nstandartlarına göre onaylanmıştır ve uluslararası laboratuvarlarda çok \r\nsayıda dinamik çarpışma testinden mükemmel güvenlik sonuçlarıyla \r\ngeçmiştir.\r\n\r\nYan darbe koruması\r\nYan Baş Koruma teknolojisi sayesinde yandan darbeler durumunda yüksek \r\ndüzeyde koruma sağlar; ayrıca ekstra yan darbe korumasını sağlamaya \r\nyönelik poliüretan köpükler içerir.\r\n&nbsp;\r\n\r\n&nbsp;\r\nSeyahat tavsiyesi\r\nInglesina Cab Gr 0+ Bebek Ana Kucag?ı ve Oto Koltug?unu daima gidiş \r\nyönünün tersine dönük olacak şekilde kullanın. Yola çıkmadan önce, \r\nkoltuğun doğru takıldığından ve bebeğinizin kemerlerinin güvenli bir \r\nşekilde bağlandığından emin olun.\r\n&nbsp;\r\nRahat yolculuklar\r\nYumuşak likralı iç pedi ve mükemmel eğim açısı, yenidoğandan itibaren \r\nmükemmel bir duruş sağlar.\r\n&nbsp;\r\n\r\nSon teknoloji ergonomi\r\nErgonomik şekli, geniş boyutu ve eğim açısıyla bebeğiniz için son derece\r\n konforludur; ve son derece nefes alabilen yumuşak likralı iç pedi \r\nsayesinde, yaşamının ilk aylarında dahi bebeğiniz için doğru duruş \r\nşeklini destekler.\r\n&nbsp;\r\n\r\nHer koşulda konfor\r\n&nbsp;\r\nNefes alabilirlik sağlar\r\nKoltuk yapısında, eşit bir şekilde dağıtılmış 140 havalandırma deliği \r\nbulunur.\r\n\r\nBebeğinizin gelişimine uyum gösterir\r\nBaş desteği, merkezi kontrol mekanizması aracılığıyla bebeğinizin boyuna\r\n göre ayarlanabilir ve gelişimine kolayca uyum sağlamak üzere kemer \r\nsistemiyle entegre edilmiştir.\r\n\r\n&nbsp;\r\nGüneş ışınlarına karşı koruma\r\nUzatılabilir ek güneşlikli tente, UV ışınlarına karşı koruma sağlar (UPF\r\n 50+).\r\n\r\n&nbsp;\r\nEbeveynlerimiz için üst düzey pratiklik\r\n&nbsp;\r\nBasit bir tık ile kolayca takılır ve çıkarılır\r\nInglesina Cab Gr 0+ Bebek Ana Kucag?ı ve Oto Koltug?u, isteğe bağlı araç\r\n bazasına, standa veya bebek arabası şasisine hiçbir adaptöre ihtiyaç \r\nduymadan kolayca takılır ve çıkarılır.\r\n\r\nErgonomik tutma kolu\r\nTaşıma kolu, her zaman pratik ve optimum tutuş için dört pozisyona göre \r\nayarlanabilir.\r\n\r\nÇıkarılabilir ve yıkanabilir\r\nTente ve kılıfı, tamamen çıkarılabilir 30°C\'de elde yıkanabilir.\r\n\r\n&nbsp;\r\nİsteğe bağlı baza\r\nİsteğe bağlı baza ile Inglesina Cab Gr 0+ Bebek Ana Kucag?ı ve Oto \r\nKoltug?u, çok daha hızlı bir şekilde monte edilebilir. Aracın 3 noktalı \r\nemniyet kemerleri aracılığıyla her araca takılabilir. Ayrıca oto \r\nkoltuğunun yanlış takılması riskini de önemli ölçüde azaltır.\r\n&nbsp;\r\n\r\n&nbsp;\r\nErgonomik Tasarım ve Ölçüler\r\nOto Koltuğu Ağırlık: 4,4 Kg\r\nİç genişliği: 27 cm İç yüksekliği: 51 cm İç genişliği: 24 cm\r\nKoltuğun dış boyutları: 42 x 60 x 64 cm (genişlik x yükseklik x \r\nderinlik)\r\nSertifikasyon: ECE R44/04\r\n&nbsp;\r\nInglesina\'ya göre güvenlik\r\nInglesina Cab Gr 0+ Bebek Ana Kucag?ı ve Oto Koltug?u, Avrupa standardı \r\nECE R44/04?e göre Grup 0+ (0 ila 13 kg) için onaylanmıştır ve sadece \r\ngidiş yönünün tersine dönük olarak kullanılabilir.\r\n\r\nYan Baş KorumasıYandan darbelere karşı önemli koruma.\r\n\r\nGidiş yönünün tersine dönük olarak kullanımDaha yüksek güvenlik sağlar.\r\n\r\nEmniyet kemerine bağlamaArabanın 3 noktalı emniyet kemeri kullanılarak \r\ntakılır.&nbsp; <br></p>', '', '', '', '', 0, 1, 1, 97),
(121, 'Çift Kat El İşi Müslin Üçgen Havlu 75X75 cm', '630', '560', 10, 'product-featured-121.jpg', '<p>Bebeğinizin hassas cildine uygun %100 saf natural pamuktan üretilmiştir\r\n. Çift kat müslin kumaştan üretilmiştir\r\n. Sıvıyı hızlı emme gücüne sahiptir \r\n. Uzun yıllar kullanıma uygun dayanıklıktadır\r\n. Yumuşacık dokusu sayesinde bebeğinize mükemmel bir konfor sağlar.</p>', '', '', '', '', 0, 1, 1, 98),
(122, 'Tapas Mama Sandalyesi (Vegan Deri)', '', '1299', 10, 'product-featured-122.jpg', '<p>6 ay ve üzeri çocuklar için uygun.\r\nGüvenlik için 5 noktalı emniyet kemeri\r\nÖn tepsi üzerinde çıkarılabilir ve yıkanabilir ilave şeffaf tepsi.\r\nÇıkabilen ön tepsi sayesinde normal yemek mamasına yanaştırılabilir.\r\nMama sandalyesinin ayaklarında, kaygan zeminlerde kaymaması için \r\nkaydırmaz aparat.\r\nKolay ve pratik kurulum.\r\nOturma minderi vegan deriden imal edilmiştir. Boya ve koruyucu bakım \r\nürünlerine ihtiyaç duymayan vegan deriyi hafif nemli bir bez ve \r\ntemizleme süngeriyle kolaylıkla temizleyebilirsiniz.\r\nE71 standartlarına göre üretilmiştir.\r\nBPA içermez.\r\nFıtalat içermez.\r\n2009/48/EC Oyuncak Yönetmeliğine uygun üretilmiştir.\r\nEN 14988 Onaylı, Avrupa Standartlarına uygun olarak üretilmiştir.\r\nDemonte olarak saklanabilir.\r\n \r\nÖlçüleri: 93 x 60 x 60 cm\r\nİç oturma ünitesi ölçüsü: 31 x 25 cm\r\nTepsi ölçüsü: 44x24 cm\r\nAğırlık: 3.8 kg\r\nMaksimum taşıma kapasitesi: 15kg\r\n \r\nTapas Mama Sandalyesi Kullanım Kılavuzu</p>', '', '', '', '', 0, 1, 1, 99),
(123, 'Erkek Çocuk Kar Botu', '5450', '4099', 10, 'product-featured-123.jpg', '<div class=\"product-information-card_tableWrapper__mLIy4\"><div style=\"background-color: rgb(248, 246, 247); padding: 8px;\"><label>Helly Hansen Bot</label></div><div style=\"background-color: rgb(248, 246, 247); padding: 8px;\"><label>Dış Materyal</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label>:</label><span>Sentetik + Tekstil<br></span><label>Fermuar Bilgisi</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Fermuarsız<br></span><label>İç Materyal</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Tekstil<br></span><label>Menşei</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Vietnam<br></span><label>Model Kodu</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:11759_990 HH JK SILVERTON BOOT HT<br></span><label>Taban</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>:Kauçuk<br></span><label>Topuk Boyu</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Düz<br></span><label>Topuk Tipi</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>:Düz</span><span><br></span><label>Cinsiyet</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>:</span><span>Erkek Çocuk</span></div></div><p></p>', '', '', '', '', 0, 1, 1, 85),
(124, 'Mayoral Erkek Bebek Kürk Astarlı Gömlek', '', '1945', 10, 'product-featured-124.jpg', '<div class=\"product-information-card_tableWrapper__mLIy4\"><div style=\"background-color: rgb(248, 246, 247); padding: 8px;\"><label>Materyal</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=\"font-weight: normal;\"><label><span style=\"font-weight: normal;\">:</span></label></span><span>% 100 Pamuk<br></span><label>Renk</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Yeşil<br></span><label>Cinsiyet</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Erkek Bebek</span><p>0-36\r\n Ay Mayoral Erkek Bebek Kürk Astarlı Gömlekİspanyol Mayoral Kalitesi İle\r\n Tasarlanmış Ve Çocuğunuzun Teni ile Dost Sağlıklı Materyaller \r\nKullanılarak Üretilmiştir. Mayoral Markalı Giyim Ürünlerinde Kalıplar \r\ngenelde Daha dardır bu sebeple Çocuğunuzun Normalde Giydiği Yaşın Bir \r\nBeden Büyüğünü Tercih Etmeniz Önerimizdir.  Ürününüzün İlk Günkü \r\nCanlılığını daha uzun süre Koruyabilmek için Yıkama Talimatlarına \r\nuyunuz. Ürün Sezon Bilgisi: Sonbahar Kış%100 PamukMarkanın Ait Olduğu \r\nÜlke: İspanya</p></div></div><p></p>', '', '', '', '', 0, 1, 1, 86),
(125, 'Erkek Çocuk Baskılı Sweatshirt', '3199', '2799', 10, 'product-featured-125.jpg', '<div class=\"product-information-card_subContainer__gQn9A\"><div class=\"product-information-card_tableWrapper__mLIy4\"><div style=\"background-color: rgb(248, 246, 247); padding: 8px;\"><label>Desen</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=\"font-weight: normal;\"><label><span style=\"font-weight: normal;\">:</span></label></span><span>Baskılı<br></span><label>Kalıp Bilgisi</label>&nbsp;&nbsp;&nbsp;&nbsp; <span>:Relaxed<br></span><label>Kol Bilgisi</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>:Uzun<br></span><label>Yaka Bilgisi</label>&nbsp;&nbsp;&nbsp;&nbsp; <span>:Kapüşon</span><span><br></span><label>Cinsiyet</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=\"font-weight: normal;\"><label><span style=\"font-weight: normal;\">:</span></label></span><span>Erkek Çocuk</span></div></div></div><p></p>', '', '', '', '', 1, 1, 1, 86),
(126, 'Normal Bel İspanyol Paça İndigo Kadın Pantolon', '2099', '1049', 10, 'product-featured-126.jpg', '<div class=\"product-information-card_tableWrapper__mLIy4\"><div style=\"background-color: rgb(248, 246, 247); padding: 8px;\"><label>Bel Bilgisi</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=\"font-weight: normal;\"><label><span style=\"font-weight: normal;\">:</span></label></span><span>Normal<br></span><label>Boy Bilgisi</label>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; :<span>Uzun<br></span><label>Cep Bilgisi</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Cepli<br></span><label>Kalıp Bilgisi</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Normal<br></span><label>Materyal</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>:%78 Pamuk, %20 Geri Dönüştürülmüş Pamuk, %2 Elastan<br></span><label>Menşei</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Tunus<br></span><label>Model Kodu</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:FLARE ESS BLUE STRETCH<br></span><label>Paça Bilgisi</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:İspanyol<br></span><label>Cinsiyet</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Kız Çocuk</span></div></div><p></p>', '', '', '', '', 1, 1, 1, 81),
(127, 'Kız Çocuk Günlük Ayakkabı', '1449', '1049', 10, 'product-featured-127.jpg', '<div class=\"product-information-card_subContainer__gQn9A\"><div class=\"product-information-card_tableWrapper__mLIy4\"><div style=\"background-color: rgb(248, 246, 247); padding: 8px;\"><label>Buckhead Günlük Ayakkabı</label></div><div style=\"background-color: rgb(248, 246, 247); padding: 8px;\"><label>Dış Materyal</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>:</label><span>Sentetik + Tekstil<br></span><label>İç Materyal</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Tekstil<br></span><label>Menşei</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Türkiye<br></span><label>Model Kodu</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<span>BUCK4375 WINGS<br></span><label>Taban</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Phylon<br></span><label>Topuk Tipi</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label>:</label><span>Düz<br></span><label>Renk</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>:Pembe<br></span><label>Cinsiyet</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>:Kız Çocuk</span></div></div></div>', '', '', '', '', 0, 1, 1, 80);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_product_color`
--

CREATE TABLE `tbl_product_color` (
  `id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tbl_product_color`
--

INSERT INTO `tbl_product_color` (`id`, `color_id`, `p_id`) VALUES
(69, 1, 4),
(70, 4, 4),
(77, 6, 6),
(82, 2, 12),
(83, 9, 13),
(84, 3, 14),
(85, 2, 15),
(86, 6, 15),
(87, 3, 16),
(88, 3, 17),
(89, 2, 18),
(90, 3, 19),
(91, 1, 20),
(92, 8, 21),
(93, 2, 22),
(94, 2, 23),
(95, 2, 25),
(96, 5, 26),
(97, 2, 27),
(98, 4, 27),
(99, 5, 28),
(100, 7, 29),
(101, 10, 30),
(102, 11, 31),
(103, 14, 32),
(105, 2, 34),
(106, 1, 35),
(107, 3, 36),
(109, 6, 38),
(110, 2, 39),
(111, 11, 42),
(149, 3, 10),
(150, 6, 9),
(151, 3, 8),
(152, 7, 7),
(159, 2, 77),
(163, 17, 79),
(164, 2, 78),
(167, 3, 80),
(168, 2, 81),
(172, 1, 82),
(173, 2, 82),
(174, 4, 82),
(195, 2, 84),
(201, 2, 86),
(202, 6, 86),
(203, 17, 86),
(222, 16, 93),
(223, 21, 85),
(224, 22, 85),
(225, 23, 85),
(226, 1, 83),
(227, 2, 83),
(228, 3, 83),
(229, 4, 83),
(230, 5, 83),
(231, 6, 83),
(232, 8, 83),
(233, 14, 83),
(234, 17, 83),
(235, 18, 83),
(236, 12, 89),
(237, 27, 91),
(239, 2, 92),
(240, 29, 92),
(241, 2, 88),
(242, 8, 88),
(243, 17, 88),
(244, 2, 90),
(245, 6, 90),
(246, 25, 90),
(247, 27, 90),
(248, 28, 90),
(253, 5, 96),
(254, 24, 96),
(257, 3, 87),
(258, 17, 87),
(261, 25, 97),
(262, 5, 98),
(264, 14, 100),
(266, 6, 101),
(293, 2, 105),
(294, 10, 105),
(295, 17, 105),
(296, 29, 104),
(297, 29, 103),
(298, 2, 109),
(299, 3, 109),
(300, 6, 109),
(301, 2, 110),
(302, 3, 110),
(303, 29, 110),
(304, 10, 113),
(305, 10, 117),
(306, 2, 118),
(307, 3, 118),
(308, 3, 119),
(309, 17, 119),
(310, 3, 120),
(311, 17, 120),
(312, 1, 121),
(313, 3, 121),
(314, 7, 121),
(315, 2, 122),
(316, 6, 122),
(317, 17, 122),
(318, 2, 123),
(319, 6, 123),
(320, 17, 123),
(321, 2, 124),
(322, 8, 124),
(323, 11, 124),
(324, 29, 124),
(325, 2, 125),
(326, 3, 125),
(327, 6, 125),
(328, 11, 125),
(329, 2, 126),
(330, 3, 126),
(331, 6, 126),
(332, 8, 126),
(333, 2, 127),
(334, 3, 127),
(335, 10, 127),
(336, 11, 127);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_product_photo`
--

CREATE TABLE `tbl_product_photo` (
  `pp_id` int(11) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tbl_product_photo`
--

INSERT INTO `tbl_product_photo` (`pp_id`, `photo`, `p_id`) VALUES
(106, '106.jpg', 83),
(107, '107.jpg', 83),
(108, '108.jpg', 84),
(109, '109.jpg', 84),
(110, '110.jpg', 85),
(111, '111.jpg', 85),
(112, '112.jpg', 86),
(113, '113.jpg', 86),
(114, '114.jpg', 87),
(115, '115.jpg', 87),
(116, '116.jpg', 88),
(117, '117.jpg', 88),
(118, '118.jpg', 89),
(119, '119.jpg', 89),
(120, '120.jpg', 90),
(121, '121.jpg', 91),
(122, '122.jpg', 92),
(123, '123.jpg', 92),
(124, '124.jpg', 93),
(127, '127.jpg', 96),
(128, '128.jpg', 97),
(129, '129.jpg', 98),
(130, '130.jpg', 98),
(131, '131.jpg', 100),
(136, '136.jpg', 103),
(137, '137.jpg', 103),
(138, '138.jpg', 103),
(139, '139.jpg', 104),
(140, '140.jpg', 104),
(141, '141.jpg', 104),
(142, '142.jpg', 105),
(143, '143.jpg', 105),
(144, '144.jpg', 105),
(145, '145.jpg', 106),
(146, '146.jpg', 106),
(147, '147.jpg', 106),
(148, '148.jpg', 107),
(149, '149.jpg', 107),
(150, '150.jpg', 107),
(151, '151.jpg', 108),
(152, '152.jpg', 108),
(153, '153.jpg', 108),
(154, '154.jpg', 109),
(155, '155.jpg', 109),
(156, '156.jpg', 109),
(157, '157.jpg', 110),
(158, '158.jpg', 110),
(159, '159.jpg', 110),
(160, '160.jpg', 111),
(161, '161.jpg', 111),
(162, '162.jpg', 111),
(163, '163.jpg', 112),
(164, '164.jpg', 112),
(165, '165.jpg', 112),
(166, '166.jpg', 113),
(167, '167.jpg', 113),
(168, '168.jpg', 113),
(169, '169.jpg', 114),
(170, '170.jpg', 114),
(171, '171.jpg', 114),
(172, '172.jpg', 115),
(173, '173.jpg', 115),
(174, '174.jpg', 115),
(175, '175.jpg', 116),
(176, '176.jpg', 116),
(177, '177.jpg', 116),
(178, '178.jpg', 117),
(179, '179.jpg', 117),
(180, '180.jpg', 117),
(181, '181.jpg', 118),
(182, '182.jpg', 118),
(183, '183.jpg', 118),
(184, '184.jpg', 119),
(185, '185.jpg', 119),
(186, '186.jpg', 119),
(187, '187.jpg', 120),
(188, '188.jpg', 120),
(189, '189.jpg', 121),
(190, '190.jpg', 121),
(191, '191.jpg', 121),
(192, '192.jpg', 122),
(193, '193.jpg', 122),
(194, '194.jpg', 122),
(195, '195.jpg', 123),
(196, '196.jpg', 123),
(197, '197.jpg', 123),
(198, '198.jpg', 124),
(199, '199.jpg', 124),
(200, '200.jpg', 124),
(201, '201.jpg', 125),
(202, '202.jpg', 125),
(203, '203.jpg', 125),
(204, '204.jpg', 126),
(205, '205.jpg', 126),
(206, '206.jpg', 127),
(207, '207.jpg', 127),
(208, '208.jpg', 127);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_product_size`
--

CREATE TABLE `tbl_product_size` (
  `id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tbl_product_size`
--

INSERT INTO `tbl_product_size` (`id`, `size_id`, `p_id`) VALUES
(44, 1, 6),
(56, 8, 12),
(57, 9, 12),
(58, 10, 12),
(59, 11, 12),
(60, 12, 12),
(61, 13, 12),
(62, 9, 13),
(63, 11, 13),
(64, 13, 13),
(65, 15, 13),
(66, 9, 14),
(67, 11, 14),
(68, 12, 14),
(69, 13, 14),
(70, 9, 15),
(71, 11, 15),
(72, 13, 15),
(73, 15, 16),
(74, 16, 16),
(75, 17, 16),
(76, 16, 17),
(77, 17, 17),
(78, 14, 18),
(79, 15, 18),
(80, 16, 18),
(81, 17, 18),
(82, 15, 19),
(83, 16, 19),
(84, 17, 19),
(85, 14, 20),
(86, 15, 20),
(87, 17, 20),
(88, 15, 21),
(89, 17, 21),
(90, 15, 22),
(91, 16, 22),
(92, 17, 22),
(93, 15, 23),
(94, 16, 23),
(95, 17, 23),
(96, 18, 25),
(97, 19, 25),
(98, 20, 25),
(99, 21, 25),
(100, 19, 26),
(101, 21, 26),
(102, 22, 26),
(103, 23, 26),
(104, 19, 27),
(105, 20, 27),
(106, 21, 27),
(107, 22, 27),
(108, 19, 28),
(109, 20, 28),
(110, 21, 28),
(111, 19, 29),
(112, 20, 29),
(113, 22, 29),
(114, 1, 30),
(115, 2, 30),
(116, 3, 30),
(117, 4, 30),
(118, 23, 31),
(119, 26, 32),
(123, 2, 34),
(124, 2, 35),
(125, 2, 36),
(126, 3, 36),
(129, 2, 38),
(130, 3, 38),
(131, 4, 38),
(132, 5, 38),
(133, 27, 39),
(134, 8, 42),
(150, 4, 78),
(210, 3, 10),
(211, 4, 10),
(212, 5, 10),
(213, 6, 10),
(214, 3, 9),
(215, 4, 9),
(216, 3, 8),
(217, 4, 8),
(218, 2, 7),
(219, 3, 7),
(220, 4, 7),
(249, 1, 79),
(250, 2, 79),
(251, 3, 79),
(252, 1, 78),
(253, 2, 78),
(254, 3, 78),
(256, 5, 78),
(259, 26, 80),
(262, 3, 82),
(263, 4, 82),
(278, 2, 84),
(279, 3, 84),
(280, 4, 84),
(281, 5, 84),
(282, 6, 84),
(305, 26, 86),
(339, 27, 93),
(340, 15, 85),
(341, 16, 85),
(342, 17, 85),
(343, 18, 85),
(344, 19, 85),
(345, 20, 85),
(346, 21, 85),
(347, 22, 85),
(348, 23, 85),
(349, 24, 85),
(350, 25, 85),
(351, 1, 83),
(352, 2, 83),
(353, 3, 83),
(354, 4, 83),
(355, 5, 83),
(356, 6, 83),
(357, 7, 83),
(358, 3, 89),
(359, 4, 89),
(360, 5, 89),
(361, 6, 89),
(362, 7, 89),
(363, 2, 91),
(364, 3, 91),
(365, 4, 91),
(366, 5, 91),
(367, 6, 91),
(369, 27, 92),
(370, 3, 88),
(371, 4, 88),
(372, 5, 88),
(373, 6, 88),
(374, 7, 88),
(375, 1, 90),
(376, 2, 90),
(377, 3, 90),
(378, 4, 90),
(381, 3, 96),
(382, 4, 96),
(383, 5, 96),
(384, 6, 96),
(385, 7, 96),
(399, 29, 87),
(400, 30, 87),
(401, 31, 87),
(402, 32, 87),
(403, 33, 87),
(404, 34, 87),
(405, 35, 87),
(406, 36, 87),
(407, 37, 87),
(408, 38, 87),
(409, 39, 87),
(418, 8, 97),
(419, 9, 97),
(420, 10, 97),
(421, 11, 97),
(422, 12, 97),
(423, 13, 97),
(424, 14, 97),
(425, 15, 97),
(426, 16, 97),
(427, 17, 97),
(428, 18, 97),
(429, 19, 97),
(430, 4, 98),
(431, 5, 98),
(432, 6, 98),
(433, 7, 98),
(436, 3, 100),
(437, 4, 100),
(438, 5, 100),
(439, 6, 100),
(441, 27, 101),
(488, 2, 105),
(489, 3, 105),
(490, 4, 105),
(491, 1, 104),
(492, 2, 104),
(493, 3, 104),
(494, 4, 104),
(495, 9, 103),
(496, 11, 103),
(497, 13, 109),
(498, 14, 109),
(499, 15, 109),
(500, 16, 109),
(501, 1, 110),
(502, 2, 110),
(503, 3, 110),
(504, 4, 110),
(505, 29, 113),
(506, 29, 117),
(507, 29, 118),
(508, 29, 119),
(509, 12, 123),
(510, 13, 123),
(511, 14, 123),
(512, 15, 123),
(513, 1, 124),
(514, 2, 124),
(515, 3, 124),
(516, 4, 124),
(517, 1, 125),
(518, 2, 125),
(519, 3, 125),
(520, 4, 125),
(521, 8, 126),
(522, 9, 126),
(523, 10, 126),
(524, 11, 126),
(525, 8, 127),
(526, 9, 127),
(527, 10, 127),
(528, 11, 127);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rt_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(150) CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `favicon` varchar(150) CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `footer_about` text CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `footer_copyright` text CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` varchar(150) NOT NULL,
  `contact_phone` varchar(150) NOT NULL,
  `contact_fax` varchar(150) NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `receive_email` varchar(150) NOT NULL,
  `receive_email_subject` varchar(150) NOT NULL,
  `receive_email_thank_you_message` text NOT NULL,
  `forget_password_message` text NOT NULL,
  `total_recent_post_footer` int(10) NOT NULL,
  `total_popular_post_footer` int(10) NOT NULL,
  `total_recent_post_sidebar` int(11) NOT NULL,
  `total_popular_post_sidebar` int(11) NOT NULL,
  `total_featured_product_home` int(11) NOT NULL,
  `total_latest_product_home` int(11) NOT NULL,
  `total_popular_product_home` int(11) NOT NULL,
  `meta_title_home` text NOT NULL,
  `meta_keyword_home` text NOT NULL,
  `meta_description_home` text NOT NULL,
  `banner_login` varchar(150) NOT NULL,
  `banner_registration` varchar(150) NOT NULL,
  `banner_forget_password` varchar(150) NOT NULL,
  `banner_reset_password` varchar(150) NOT NULL,
  `banner_search` varchar(150) NOT NULL,
  `banner_cart` varchar(150) NOT NULL,
  `banner_checkout` varchar(150) NOT NULL,
  `banner_product_category` varchar(150) NOT NULL,
  `banner_blog` varchar(150) NOT NULL,
  `cta_title` varchar(150) NOT NULL,
  `cta_content` text NOT NULL,
  `cta_read_more_text` varchar(150) NOT NULL,
  `cta_read_more_url` varchar(150) NOT NULL,
  `cta_photo` varchar(150) NOT NULL,
  `featured_product_title` varchar(150) CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `featured_product_subtitle` varchar(150) CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `latest_product_title` varchar(150) CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `latest_product_subtitle` varchar(150) CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `popular_product_title` varchar(150) CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `popular_product_subtitle` varchar(150) CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `testimonial_title` varchar(150) NOT NULL,
  `testimonial_subtitle` varchar(150) NOT NULL,
  `testimonial_photo` varchar(150) NOT NULL,
  `blog_title` varchar(150) NOT NULL,
  `blog_subtitle` varchar(150) NOT NULL,
  `newsletter_text` text NOT NULL,
  `paypal_email` varchar(150) NOT NULL,
  `stripe_public_key` varchar(150) NOT NULL,
  `stripe_secret_key` varchar(150) NOT NULL,
  `bank_detail` text NOT NULL,
  `before_head` text NOT NULL,
  `after_body` text NOT NULL,
  `before_body` text NOT NULL,
  `home_service_on_off` int(11) NOT NULL,
  `home_welcome_on_off` int(11) NOT NULL,
  `home_featured_product_on_off` int(11) NOT NULL,
  `home_latest_product_on_off` int(11) NOT NULL,
  `home_popular_product_on_off` int(11) NOT NULL,
  `home_testimonial_on_off` int(11) NOT NULL,
  `home_blog_on_off` int(11) NOT NULL,
  `newsletter_on_off` int(11) NOT NULL,
  `ads_above_welcome_on_off` int(1) NOT NULL,
  `ads_above_featured_product_on_off` int(1) NOT NULL,
  `ads_above_latest_product_on_off` int(1) NOT NULL,
  `ads_above_popular_product_on_off` int(1) NOT NULL,
  `ads_above_testimonial_on_off` int(1) NOT NULL,
  `ads_category_sidebar_on_off` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `forget_password_message`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `banner_login`, `banner_registration`, `banner_forget_password`, `banner_reset_password`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_product_category`, `banner_blog`, `cta_title`, `cta_content`, `cta_read_more_text`, `cta_read_more_url`, `cta_photo`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `testimonial_title`, `testimonial_subtitle`, `testimonial_photo`, `blog_title`, `blog_subtitle`, `newsletter_text`, `paypal_email`, `stripe_public_key`, `stripe_secret_key`, `bank_detail`, `before_head`, `after_body`, `before_body`, `home_service_on_off`, `home_welcome_on_off`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`, `home_testimonial_on_off`, `home_blog_on_off`, `newsletter_on_off`, `ads_above_welcome_on_off`, `ads_above_featured_product_on_off`, `ads_above_latest_product_on_off`, `ads_above_popular_product_on_off`, `ads_above_testimonial_on_off`, `ads_category_sidebar_on_off`) VALUES
(1, 'logo.jpg', 'favicon.jpg', '<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an.Â Ea suas pertinax has.</p>\r\n', 'Copyright © 2024 - Batuhan ŞEN - Elinsu ÇİFTÇİ - İbrahim Görkem ÖZÇİÇEK - Seda KOCAOĞLU', '', '', '', '', '', 'support@ecommercephp.com', 'Visitor Email Message from Ecommerce Site PHP', 'Thank you for sending email. We will contact you shortly.', 'A confirmation link is sent to your email address. You will get the password reset information in there.', 4, 4, 5, 5, 5, 6, 8, 'Boyner Çocuk', 'Boyner Çocuk Giyim Online Al??veri? Sitesi', 'PHP ve MYSQL Database ile Online Al??veri? Sitesi Projesi ', 'banner_login.jpg', 'banner_registration.jpg', 'banner_forget_password.jpg', 'banner_reset_password.jpg', 'banner_search.jpg', 'banner_cart.jpg', 'banner_checkout.jpg', 'banner_product_category.jpg', 'banner_blog.jpg', 'Welcome To Our Ecommerce Website', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, \r\nat usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. ', 'Read More', '#', 'cta.jpg', 'ÖNE ÇIKAN ÜRÜNLER', 'Öne çıkan ürünler listesi...', 'YENİ EKLENEN ÜRÜNLER', 'Yeni eklenen ürünler listesi...', 'POPÜLER ÜRÜNLER', 'Müşterilerin seçtiği popüler ürünler...', 'Testimonials', 'See what our clients tell about us', 'testimonial.jpg', 'Latest Blog', 'See all our latest articles and news from below', 'Sign-up to our newsletter for latest promotions and discounts.', 'ise311@group-project.com', 'pk_test_0SwMWadgu8DwmEcPdUPRsZ7b', 'sk_test_TFcsLJ7xxUtpALbDo1L5c1PN', 'Banka Ad?: Test Bank\r\nHesap numaras?: CA100270589600\r\n?ube Ad?: CA Branch\r\nÜlke: Türkiye', '', '', '', 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_shipping_cost`
--

CREATE TABLE `tbl_shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tbl_shipping_cost`
--

INSERT INTO `tbl_shipping_cost` (`shipping_cost_id`, `country_id`, `amount`) VALUES
(1, 228, '11'),
(2, 167, '10'),
(3, 222, '1'),
(4, 230, '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_shipping_cost_all`
--

CREATE TABLE `tbl_shipping_cost_all` (
  `sca_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tbl_shipping_cost_all`
--

INSERT INTO `tbl_shipping_cost_all` (`sca_id`, `amount`) VALUES
(1, '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_size`
--

CREATE TABLE `tbl_size` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tbl_size`
--

INSERT INTO `tbl_size` (`size_id`, `size_name`) VALUES
(1, 'XS'),
(2, 'S'),
(3, 'M'),
(4, 'L'),
(5, 'XL'),
(6, 'XXL'),
(7, '3XL'),
(8, '31'),
(9, '32'),
(10, '33'),
(11, '34'),
(12, '35'),
(13, '36'),
(14, '37'),
(15, '38'),
(16, '39'),
(17, '40'),
(18, '41'),
(19, '42'),
(20, '43'),
(21, '44'),
(22, '45'),
(23, '46'),
(24, '47'),
(25, '48'),
(26, 'Free Size'),
(27, 'One Size for All'),
(28, '10'),
(29, '12 Months'),
(30, '2T'),
(31, '3T'),
(32, '4T'),
(33, '5T'),
(34, '6 Years'),
(35, '7 Years'),
(36, '8 Years'),
(37, '10 Years'),
(38, '12 Years'),
(39, '14 Years'),
(40, '256 GB'),
(41, '128 GB'),
(42, '14 Plus'),
(43, '16 Plus'),
(44, '18 Plus'),
(45, '20 Plus'),
(46, '22 Plus'),
(47, '24 Plus');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `heading` varchar(150) CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `content` text NOT NULL,
  `button_text` varchar(150) CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `button_url` varchar(150) CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `position` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`) VALUES
(5, 'slider-5.jpg', '', '', 'ALIŞVERİŞE BAŞLA', 'http://localhost/group_project/product-category.php?id=3&type=top-category', 'Center'),
(6, 'slider-6.jpg', '', '', 'ALIŞVERİŞE BAŞLA', 'http://localhost/group_project/product-category.php?id=3&type=top-category', 'Center'),
(7, 'slider-7.jpg', '', '', 'ALIŞVERİŞE BAŞLA', 'http://localhost/group_project/product-category.php?id=3&type=top-category', 'Center');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_top_category`
--

CREATE TABLE `tbl_top_category` (
  `tcat_id` int(11) NOT NULL,
  `tcat_name` varchar(150) CHARACTER SET latin5 COLLATE latin5_turkish_ci NOT NULL,
  `show_on_menu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tbl_top_category`
--

INSERT INTO `tbl_top_category` (`tcat_id`, `tcat_name`, `show_on_menu`) VALUES
(1, 'KADIN', 1),
(2, 'ERKEK', 1),
(3, 'ÇOCUK', 1),
(7, 'MARKALAR', 1),
(8, 'KAMPANYALAR', 1),
(9, 'HEDİYE', 1),
(10, 'OUTLET', 1),
(11, 'SAAT & AKSESUAR', 1),
(13, 'KOZMETİK', 1),
(16, 'SPOR & OUTDOOR', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(150) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(1, 'Administrator', 'admin@mail.com', '7777777777', 'd00f5d5217896fb7fd601412cb890830', 'user-1.png', 'Super Admin', 'Active');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `iframe_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `title`, `iframe_code`) VALUES
(1, 'Video 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L3XAFSMdVWU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(2, 'Video 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sinQ06YzbJI\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(4, 'Video 3', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ViZNgU-Yt-Y\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Tablo için indeksler `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Tablo için indeksler `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Tablo için indeksler `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  ADD PRIMARY KEY (`customer_message_id`);

--
-- Tablo için indeksler `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  ADD PRIMARY KEY (`ecat_id`);

--
-- Tablo için indeksler `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Tablo için indeksler `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Tablo için indeksler `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  ADD PRIMARY KEY (`mcat_id`);

--
-- Tablo için indeksler `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Tablo için indeksler `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Tablo için indeksler `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  ADD PRIMARY KEY (`pp_id`);

--
-- Tablo için indeksler `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`rt_id`);

--
-- Tablo için indeksler `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  ADD PRIMARY KEY (`shipping_cost_id`);

--
-- Tablo için indeksler `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  ADD PRIMARY KEY (`sca_id`);

--
-- Tablo için indeksler `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`size_id`);

--
-- Tablo için indeksler `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  ADD PRIMARY KEY (`tcat_id`);

--
-- Tablo için indeksler `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  MODIFY `customer_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  MODIFY `ecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  MODIFY `mcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=529;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `rt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  MODIFY `shipping_cost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  MODIFY `sca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  MODIFY `tcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
