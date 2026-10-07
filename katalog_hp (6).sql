-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 07, 2026 at 03:38 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `katalog hp`
--

-- --------------------------------------------------------

--
-- Table structure for table `merk`
--

CREATE TABLE `merk` (
  `id_merk` tinyint UNSIGNED NOT NULL,
  `merk` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `merk`
--

INSERT INTO `merk` (`id_merk`, `merk`) VALUES
(171, 'ZTE Nubia'),
(172, 'Asus'),
(173, 'Samsung'),
(174, 'IQOO'),
(175, 'Xiaomi'),
(176, 'IPhone'),
(177, 'OnePlus'),
(178, 'Infinix'),
(179, 'Vivo'),
(180, 'Asus'),
(181, 'MSI'),
(182, 'HP'),
(183, 'Dell'),
(184, 'Axioo'),
(185, 'Acer'),
(186, 'Apple'),
(187, 'Lenovo'),
(188, 'Infinix');

-- --------------------------------------------------------

--
-- Table structure for table `seri`
--

CREATE TABLE `seri` (
  `id_seri` smallint UNSIGNED NOT NULL,
  `id_tipe` tinyint UNSIGNED NOT NULL,
  `nama_seri` varchar(255) NOT NULL,
  `spek` text NOT NULL,
  `harga` int NOT NULL,
  `gambar1` varchar(255) NOT NULL,
  `gambar2` varchar(255) NOT NULL,
  `gambar3` varchar(255) NOT NULL,
  `status` set('availabel','not availabel','deleted') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `seri`
--

INSERT INTO `seri` (`id_seri`, `id_tipe`, `nama_seri`, `spek`, `harga`, `gambar1`, `gambar2`, `gambar3`, `status`) VALUES
(20101, 1, 'Redmagic 9 Pro & 9S Pro', 'Spesifikasi:\r\n\r\n• Chipset: Qualcomm Snapdragon 8 Gen 3 (4nm) & GPU Adreno 750\r\n• Layar: 6.8 inci BOE Q9+ AMOLED, FHD+, 120Hz refresh rate, 1600 nits\r\n• Memori: RAM 12GB / 16GB LPDDR5X + ROM 256GB / 512GB UFS 4.0\r\n• Baterai & Charging: 6500 mAh + 80W Fast Charging\r\n• Sistem Pendingin: ICE 13.0 Cooling System dengan kipas internal berkecepatan 22.000 RPM.\r\n• Fitur Gaming: Kamera depan tertanam di bawah layar (True Full Screen), Tombol trigger 520Hz.\r\n• Kamera: Belakang 50MP (OIS) + 50MP (Ultrawide) + 2MP (Macro), Depan 16MP', 14500000, 'https://uk.redmagic.gg/cdn/shop/articles/Blog_9_2976ee7f-24de-42f2-994e-8c5a15bfbafc.png?v=1741751813', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_zzShs4zAxu4nFY6t1CDMtxj7BA_8A2AoRSLLwn6FOg&s=10', 'https://www.yangcanggih.com/wp-content/uploads/2024/07/REDMAGIC-9S-Pro-4.jpg', ''),
(20102, 1, 'Redmagic 10 Pro & 10 Pro+', 'Spesifikasi:\r\n\r\n• Chipset: Qualcomm Snapdragon 8 Elite & chip gaming Red Core 3 Pro\r\n• Layar: 6.85 inci AMOLED BOE X2, 1.5K (2688x1216), 144Hz refresh rate, 2000 nits\r\n• Memori: RAM 12GB / 16GB / 24GB + ROM 256GB / 512GB / 1TB\r\n• Baterai & Charging: 7050 mAh Silicon-Carbon battery + 100W Fast Charging\r\n• Sistem Pendingin: ICE-X system dengan kipas internal 23.000 RPM dan liquid metal cooling.\r\n• Fitur Gaming: Layar penuh tanpa notch generasi baru, getaran 4D, lampu RGB mecha.\r\n• Kamera: Belakang 50MP + 50MP + 2MP, Depan 16MP (di bawah layar)', 18500000, 'https://asset.kompas.com/crops/NPjXzFWNiz2r0oFjUeMnnthnOhU=/581x327:1288x799/1200x800/data/photo/2024/12/06/675277624f751.png', 'https://media.suara.com/pictures/original/2024/11/14/76663-redmagic-10-pro-series.jpg', 'https://assets.pikiran-rakyat.com/crop/0x0:0x0/720x0/webp/photo/2025/05/27/38565515.jpg', ''),
(20103, 1, 'Redmagic 11S pro', 'Spesifikasi:\r\n\r\n• Chipset: Qualcomm Snapdragon 8 Elite Gen 5 (3nm) & RedCore R4\r\n• Layar: 6.85 inci BOE X10 AMOLED, 1.5K, 144Hz refresh rate, 2000 nits, proteksi Gorilla Glass\r\n• Memori: RAM 16GB LPDDR5T + ROM 512GB UFS 4.1 Pro (Untuk varian resmi Indonesia). Varian global tersedia hingga RAM 24GB + ROM 1TB.\r\n• Baterai & Charging: 7500 mAh + 80W Fast & Wireless Charging\r\n• Sistem Pendingin: AquaCore Cooling System, pendingin cairan komersial pertama di dunia yang menggabungkan cairan khusus (fluorinated liquid), liquid metal 3.0, serta turbofan 24.000 RPM.\r\n• Fitur Gaming: Sertifikasi tahan air IPX8, pemicu bahu 520Hz, sidik jari ultrasonik 3D di bawah layar.\r\n• Kamera: Belakang 50MP (OIS) + 50MP (Ultrawide) + 2MP, Depan 16MP UDC', 21999000, 'https://global.redmagic.gg/cdn/shop/files/Sleek_Touch-_light_50b7f7f2-cba0-4d08-a2ad-cc8e25262991.jpg?v=1779694563&width=3504', 'https://halokalbar.com/wp-content/uploads/2025/10/redmagic11-860x713.jpg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWLUxUPfqb-08o3KXleTCNy9w7bKoGYJOavdoi3LKkgQ&s=10', ''),
(20104, 2, 'ZTE Nubia Neo 3 5G', 'Spesifikasi Utama:\r\n\r\n• Chipset: Unisoc Tiger T8300 (6nm)\r\n• Layar: 6.8 inci AMOLED, FHD+, 120Hz refresh rate, 1000 nits\r\n• Memori: RAM 8GB (+12GB Virtual RAM) + ROM 256GB\r\n• Baterai & Charging: 6000 mAh + 33W Fast Charging & Bypass Charging\r\n• Fitur Gaming: Dual Gaming Shoulder Triggers, AI Game Space 3.0\r\n• Kamera: Belakang 50MP + 2MP, Depan 16MP', 2750000, '', '', '', ''),
(20105, 2, 'ZTE Nubia Neo GT 3 5G', 'Spesifikasi Utama:\r\n\r\n• Chipset: Unisoc T9100 / T8300 (6nm)\r\n• Layar: 6.8 inci AMOLED, FHD+, 120Hz refresh rate, 1300 nits\r\n• Memori: RAM 8GB / 12GB + ROM 256GB\r\n• Baterai & Charging: 6000 mAh + 80W Fast Charging\r\n• Fitur Gaming: Lampu Eagle Eye RGB interaktif, Air Trigger, Multilayer Cooling 4083 mm²\r\n• Kamera: Belakang 50MP + 2MP, Depan 12MP', 4200000, '', '', '', ''),
(20106, 2, 'ZTE Nubia Neo 5 5G', 'Spesifikasi Utama:\r\n\r\n• Chipset: Unisoc T9300 Octa-core 2.4GHz\r\n• Layar: 6.8 inci, FHD+, 120Hz refresh rate, 1000 nits\r\n• Memori: RAM 8GB (+12GB Virtual RAM) + ROM 256GB\r\n• Baterai & Charging: 6050 mAh + 45W Fast Charging & Bypass Charging\r\n• Fitur Gaming: 550Hz Neo Triggers 5.0, Vapor Chamber (VC) Cooling System 20,000mm²\r\n• Kamera: Belakang 50MP + 2MP, Depan 16MP', 4000000, '', '', '', ''),
(20107, 2, 'ZTE Nubia GT 5 5G', 'Spesifikasi Utama:\r\n\r\n• Chipset: MediaTek Dimensity 7400 (4nm)\r\n• Layar: 6.8 inci AMOLED, 1.5K, 144Hz refresh rate, kecerahan hingga 4500 nits\r\n• Memori: RAM 12GB (bisa ditambah Dynamic RAM) + ROM 256GB / 512GB\r\n• Baterai & Charging: 6210 mAh + 80W Super Fast Charging & Bypass Charging\r\n• Fitur Gaming: Integrated Active Fan (Kipas internal), Neo Triggers 5.0\r\n• Kamera: Belakang 50MP AI + Depan 16MP', 5250000, '', '', '', ''),
(20108, 3, 'ZTE Nubia V60 Design', 'Spesifikasi Utama:\r\n\r\n• Chipset: Unisoc T606 (12 nm)\r\n• Layar: 6.6 inci IPS LCD, 90Hz refresh rate\r\n• Memori: RAM 6GB / 8GB + ROM 256GB\r\n• Baterai & Charging: 5000 mAh + 22.5W Fast Charging\r\n• Kamera: Belakang 50MP AI Triple Camera + Depan 8MP\r\n• Fitur Lain: NFC, Side-Fingerprint, Live Island', 1450000, '', '', '', ''),
(20109, 3, 'ZTE Nubia V60 ', 'Spesifikasi Utama:\r\n\r\n• Chipset: Unisoc T616 Octa-Core\r\n• Layar: 6.72 inci Full HD+ (FHD+), 2.5D Curved Edge, 90Hz\r\n• Memori: RAM 8GB (+12GB Dynamic RAM) + ROM 256GB\r\n• Baterai & Charging: 5000 mAh + 22.5W Fast Charging\r\n• Kamera: Belakang 50MP Main + 2MP + 2MP, Depan 32MP Selfie Camera', 1650000, '', '', '', ''),
(20111, 3, 'ZTE Nubia V70 Design', 'Spesifikasi Utama:\r\n\r\n• Chipset: Unisoc T606 / T616 Octa-core\r\n• Layar: 6.7 inci HD+, 120Hz refresh rate, rasio layar ke bodi 91%\r\n• Memori: RAM 8GB (+12GB Dynamic RAM) + ROM 256GB\r\n• Baterai & Charging: 5000 mAh + 22.5W Fast Charging\r\n• Kamera: Belakang 50MP AI (mendukung Raw Super Night Shot) + Depan 16MP\r\n• Fitur Spesial: Live Island 2.0 (Notifikasi interaktif ala Dynamic Island), pilihan bodi bertekstur kulit atau Sky-Mirror glass.\r\n', 1625000, '', '', '', ''),
(20112, 3, 'ZTE Nubia V80 MAX (Global Version)', 'Spesifikasi Utama:\r\n\r\n• Chipset: Unisoc T7250 Octa-Core (12nm)\r\n• Layar: 6.9 inci IPS LCD, resolusi HD+\r\n• Memori: RAM 8GB + ROM 256GB\r\n• Baterai & Charging: 6000 mAh + 22.5W Fast Charging\r\n• Kamera: Belakang 50MP AI Dual Camera + Depan 16MP', 3450000, '', '', '', ''),
(20113, 3, 'ZTE Nubia V80 Design', 'Spesifikasi Utama:\r\n\r\n• Chipset: Unisoc Octa-Core (12nm)\r\n• Layar: 6.75 inci IPS LCD, 120Hz refresh rate, kecerahan hingga 1000 nits\r\n• Memori: RAM 8GB + ROM 256GB\r\n• Baterai & Charging: 5000 mAh + 22.5W Fast Charging\r\n• Kamera: Belakang 50MP AI Main Camera + Depan 16MP\r\n• Fitur Spesial: Sertifikasi IP64 (Tahan debu & cipratan air), bodi belakang bermaterial kaca premium.', 2050000, '', '', '', ''),
(20114, 4, 'ZTE Nubia A36', 'Spesifikasi Utama:\r\n\r\n• Chipset: Unisoc T7200 Octa-core 1.6GHz\r\n• Layar: 6.75 inci HD+, 90Hz refresh rate, kecerahan 500 nits\r\n• Memori: RAM 4GB + ROM 64GB\r\n• Baterai & Charging: 5000 mAh + 10W\r\n• Kamera: Belakang 13MP AI Lens + Depan 5MP', 999000, '', '', '', ''),
(20115, 4, 'ZTE Nubia A56', 'Spesifikasi Utama:\r\n\r\n• Layar: 6.75 inci HD+ dengan dukungan Google Gemini AI\r\n• Memori: RAM up to 12GB (Termasuk Virtual RAM) + ROM 128GB\r\n• Baterai: 5000 mAh\r\n• Keamanan: Side Fingerprint Scanner & Face Unlock', 1099000, '', '', '', ''),
(20116, 4, 'ZTE Nubia A57', 'Spesifikasi Utama:\r\n\r\n• Chipset: Unisoc T7250\r\n• Layar: 6.75 inci IPS LCD, 120Hz refresh rate, 740 nits\r\n• Memori: RAM 4GB + ROM 64GB / 128GB (MicroSD eksternal hingga 2TB)\r\n• Baterai & Charging: 5000 mAh + 22.5W Fast Charging\r\n• Kamera: Belakang 13MP + Depth Sensor, Depan 8MP\r\n• Fitur Spesial: Sertifikasi IP64 (tahan debu & percikan air)', 1900000, '', '', '', ''),
(20117, 4, 'ZTE Nubia A76 5G', 'Spesifikasi Utama:\r\n\r\n• Chipset: Unisoc T8300 Octa-Core up to 2.2GHz\r\n• Layar: 6.75 inci HD+, 90Hz refresh rate dengan interaksi Live Island 2.0\r\n• Memori: RAM 8GB (+8GB Dynamic RAM) + ROM 128GB\r\n• Baterai & Charging: 5000 mAh + 10W charging\r\n• Kamera: Belakang 50MP AI Dual Camera + Depan 8MP\r\n• Fitur Lain: NFC, Side Fingerprint, Panggilan tanpa seluler (nubia LinkFree)', 2250000, '', '', '', ''),
(20118, 5, 'Asus Zenfone 9', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Qualcomm Snapdragon 8+ Gen 1 (4nm)\r\n• Layar: 5.9 inci AMOLED, 120Hz refresh rate, Gorilla Glass Victus\r\n• Memori: RAM 6GB / 8GB / 16GB + ROM 128GB / 256GB\r\n• Baterai & Charging: 4300 mAh + 30W Fast Charging\r\n• Kamera: Belakang 50MP (Gimbal OIS) + 12MP (Ultrawide) | Depan 12MP', 8000000, '', '', '', ''),
(20119, 5, 'Asus Zenfone 10 (8/128GB)', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Qualcomm Snapdragon 8 Gen 2 (4nm)\r\n• Layar: 5.9 inci Samsung AMOLED, FHD+, 144Hz refresh rate, Gorilla Glass Victus\r\n• Memori: RAM 8GB LPDDR5X + ROM 128GB UFS 4.0\r\n• Baterai & Charging: 4300 mAh + 30W HyperCharge & 15W wireless charging\r\n• Kamera: Belakang 50MP (Sony IMX766, 6-Axis Hybrid Gimbal Stabilizer 2.0) + 13MP (Ultrawide) | Depan 32MP RGBW\r\n• Fitur Spesial: Bodi sangat ringan (172 gram), sertifikasi IP68, Audio Jack 3.5mm', 8999000, '', '', '', ''),
(20120, 5, 'Asus Zenfone 10 (16/512GB)', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Qualcomm Snapdragon 8 Gen 2 (4nm)\r\n• Layar: 5.9 inci Samsung AMOLED, FHD+, 144Hz refresh rate, Gorilla Glass Victus\r\n• Memori: RAM 16GB LPDDR5X + ROM 512GB UFS 4.0\r\n• Baterai & Charging: 4300 mAh + 30W HyperCharge & 15W wireless charging\r\n• Kamera: Belakang 50MP (Sony IMX766, 6-Axis Hybrid Gimbal Stabilizer 2.0) + 13MP (Ultrawide) | Depan 32MP RGBW\r\n• Fitur Spesial: Bodi sangat ringan (172 gram), sertifikasi IP68, Audio Jack 3.5mm', 11999000, '', '', '', ''),
(20121, 5, 'Asus Zenfon 11 Ultra (12/256GB)', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Qualcomm Snapdragon 8 Gen 3 (4nm) & GPU Adreno 750\r\n• Layar: 6.78 inci Samsung Flexible AMOLED LTPO, FHD+, 144Hz refresh rate (gaming), kecerahan puncak 2500 nits, Gorilla Glass Victus 2\r\n• Memori: RAM 12GB LPDDR5X + ROM 256GB UFS 4.0\r\n• Baterai & Charging: 5500 mAh + 65W HyperCharge & 15W Qi wireless charging\r\n• Kamera: Belakang 50MP (Sony IMX890, 6-Axis Hybrid Gimbal Stabilizer 3.0) + 32MP (Telephoto, 3x Optical Zoom, OIS) + 13MP (Ultrawide) | Depan 32MP RGBW\r\n• Fitur Spesial: Proteksi tahan air IP68, Audio Jack 3.5mm dengan Dirac Virtuo, Wi-Fi 7', 10500000, '', '', '', ''),
(20122, 5, 'Asus Zenfone 11 Ultra (16/512GB)', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Qualcomm Snapdragon 8 Gen 3 (4nm) & GPU Adreno 750\r\n• Layar: 6.78 inci Samsung Flexible AMOLED LTPO, FHD+, 144Hz refresh rate (gaming), kecerahan puncak 2500 nits, Gorilla Glass Victus 2\r\n• Memori: RAM 16GB LPDDR5X + ROM 512GB UFS 4.0\r\n• Baterai & Charging: 5500 mAh + 65W HyperCharge & 15W Qi wireless charging\r\n• Kamera: Belakang 50MP (Sony IMX890, 6-Axis Hybrid Gimbal Stabilizer 3.0) + 32MP (Telephoto, 3x Optical Zoom, OIS) + 13MP (Ultrawide) | Depan 32MP RGBW\r\n• Fitur Spesial: Proteksi tahan air IP68, Audio Jack 3.5mm dengan Dirac Virtuo, Wi-Fi 7', 14500000, '', '', '', ''),
(20123, 6, 'Asus ROG Phone 9 FE', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Qualcomm Snapdragon 8 Gen 3\r\n• Layar: 6.78 inci AMOLED, FHD+, 144Hz / 165Hz refresh rate\r\n• Memori: RAM 12GB LPDDR5X + ROM 256GB UFS 4.0\r\n• Baterai & Charging: 5500 mAh + 65W HyperCharge\r\n• Kamera: Belakang 50MP Dual Camera + Depan 32MP', 11000000, '', '', '', ''),
(20124, 6, 'Asus ROG Phone 9', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Qualcomm Snapdragon 8 Elite (3nm)\r\n• Layar: 6.78 inci AMOLED LTPO, FHD+, 185Hz refresh rate, 2500 nits\r\n• Memori: RAM 12GB / 16GB + ROM 256GB / 512GB\r\n• Baterai & Charging: 5800 mAh + 65W HyperCharge\r\n• Fitur Gaming: Aura RGB Lighting (Logo ROG menyala), AirTrigger, Audio Jack 3.5mm\r\n• Kamera: Belakang 50MP Sony Lytia 700 (Gimbal OIS) + 13MP (Ultrawide) + 5MP (Macro) | Depan 32MP', 14250000, '', '', '', ''),
(20125, 6, 'Asus ROG Phone 9 Pro (16/512GB)', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Qualcomm Snapdragon 8 Elite (3nm) & GPU Adreno 830\r\n• Layar: 6.78 inci Samsung Flexible AMOLED LTPO, FHD+, 185Hz refresh rate (melalui Game Genie), kecerahan 2500 nits, Gorilla Glass Victus 2\r\n• Memori: RAM 16GB + ROM 512GB (Varian Pro)\r\n• Baterai & Charging: 5800 mAh + 65W HyperCharge, Wireless Charging, & Bypass Charging\r\n• Sistem Pendingin: GameCool 9 Cooling System dengan struktur lembaran grafit 57% lebih besar serta dukungan kipas eksternal AeroActive Cooler X Pro\r\n• Fitur Gaming: AniMe Vision LED Matrix belakang (648 mini-LED interaktif), tombol ultrasonik AirTrigger, dual speaker stereo magnetik\r\n• Kamera: Belakang 50MP (Sony Lytia 700, 6-Axis Hybrid Gimbal Stabilizer 4.0) + 32MP (Telephoto 3x, OIS) + 13MP (Ultrawide) | Depan 32MP RGBW', 16999000, '', '', '', ''),
(20126, 6, 'Asus ROG Phone 9 Pro Edition (24GB/1TB).', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Qualcomm Snapdragon 8 Elite (3nm) & GPU Adreno 830\r\n• Layar: 6.78 inci Samsung Flexible AMOLED LTPO, FHD+, 185Hz refresh rate (melalui Game Genie), kecerahan 2500 nits, Gorilla Glass Victus 2\r\n• Memori: RAM 24GB LPDDR5X + ROM 1TB UFS\r\n• Baterai & Charging: 5800 mAh + 65W HyperCharge, Wireless Charging, & Bypass Charging\r\n• Sistem Pendingin: GameCool 9 Cooling System dengan struktur lembaran grafit 57% lebih besar serta dukungan kipas eksternal AeroActive Cooler X Pro\r\n• Fitur Gaming: AniMe Vision LED Matrix belakang (648 mini-LED interaktif), tombol ultrasonik AirTrigger, dual speaker stereo magnetik, lengkap dengan bundle pendingin.\r\n• Kamera: Belakang 50MP (Sony Lytia 700, 6-Axis Hybrid Gimbal Stabilizer 4.0) + 32MP (Telephoto 3x, OIS) + 13MP (Ultrawide) | Depan 32MP RGBW', 22500000, '', '', '', ''),
(20127, 7, 'Samsung S 25 Ultra (12/256GB)', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Qualcomm Snapdragon 8 Elite for Galaxy\r\n• Layar: 6.9 inci Dynamic AMOLED 2X, QHD+, Gorilla Armor 2 (sangat minim pantulan cahaya)\r\n• Memori: RAM 12GB + ROM 256GB\r\n• Kamera Belakang: Quad Camera 200MP (Utama, OIS) + 50MP (Ultrawide) + 50MP (Telephoto 5x Zoom) + 10MP (Telephoto 3x Zoom)\r\n• Baterai & Charging: 5000 mAh + 45W Fast Charging', 22999000, '', '', '', ''),
(20128, 7, 'Samsung S25 Ultra (12/1TB)', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Qualcomm Snapdragon 8 Elite for Galaxy\r\n• Layar: 6.9 inci Dynamic AMOLED 2X, QHD+, Gorilla Armor 2 (sangat minim pantulan cahaya)\r\n• Memori: RAM 12GB + 1TB\r\n• Kamera Belakang: Quad Camera 200MP (Utama, OIS) + 50MP (Ultrawide) + 50MP (Telephoto 5x Zoom) + 10MP (Telephoto 3x Zoom)\r\n• Baterai & Charging: 5000 mAh + 45W Fast Charging', 28999000, '', '', '', ''),
(20129, 7, 'Samsung S26 (12/256GB)', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Exynos 2600 (NPU meningkat hingga 38%)\r\n• Layar: 6.3 inci Dynamic AMOLED 2X, FHD+ (2340x1080), 120Hz\r\n• Memori: RAM 12GB + ROM 256GB\r\n• Kamera Belakang: Triple 50 MP (Utama) + 12 MP (Ultrawide) + 10 MP (Telephoto)\r\n• Baterai & Charging: 4300 mAh + 25W Fast Charging\r\n• Fitur Khusus: Bobot ringan (167 gram), Armor Aluminum, Proteksi Gorilla Glass Victus 2', 16499000, '', '', '', ''),
(20130, 7, 'Samsung S26 (12/512GB)', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Exynos 2600 (NPU meningkat hingga 38%)\r\n• Layar: 6.3 inci Dynamic AMOLED 2X, FHD+ (2340x1080), 120Hz\r\n• Memori: RAM 12GB + ROM 512GB\r\n• Kamera Belakang: Triple 50 MP (Utama) + 12 MP (Ultrawide) + 10 MP (Telephoto)\r\n• Baterai & Charging: 4300 mAh + 25W Fast Charging\r\n• Fitur Khusus: Bobot ringan (167 gram), Armor Aluminum, Proteksi Gorilla Glass Victus 2', 19499000, '', '', '', ''),
(20131, 7, 'Samsung S26 Ultra', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Qualcomm Snapdragon 8 Elite Gen 5 (Customized for Galaxy)\r\n• Layar: 6.9 inci Anti-Reflective OLED, Quad HD+ (3120 x 1440), 120Hz\r\n• Memori: RAM 12GB / 16GB + ROM 256GB / 512GB / 1TB\r\n• Kamera Belakang: 200 MP (Utama, f/1.4) + 50MP (Periskop Telefoto, 5x Optical Zoom) + Ultrawide + Telefoto 3x\r\n• Baterai & Charging: 5000 mAh + 60W Fast Charging\r\n• Fitur Khusus: Stylus S-Pen internal, Bodi Armor Aluminum, Fitur AI Prompt Foto', 29499000, '', '', '', ''),
(20132, 8, 'Samsung Galaxy Z Flip 8 5G (12/256GB)', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Exynos 2600 efisien berteknologi NPU AI tinggi\r\n• Layar: Utama 6.9 inci Dynamic AMOLED 2X, 120Hz + Layar Cover 4.1 inci FlexWindow\r\n• Memori: RAM 12GB + ROM 256GB\r\n• Kamera Belakang: Dual 50 MP (Utama, ProVisual Engine) + 12 MP (Ultrawide)\r\n• Baterai & Charging: 4300 mAh + 25W Fast Charging & 15W Wireless', 19999000, '', '', '', ''),
(20133, 8, 'Samsung Galaxy Z Flip 8 5G (12/512GB)', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Exynos 2600 efisien berteknologi NPU AI tinggi\r\n• Layar: Utama 6.9 inci Dynamic AMOLED 2X, 120Hz + Layar Cover 4.1 inci FlexWindow\r\n• Memori: RAM 12GB + ROM 512GB\r\n• Kamera Belakang: Dual 50 MP (Utama, ProVisual Engine) + 12 MP (Ultrawide)\r\n• Baterai & Charging: 4300 mAh + 25W Fast Charging & 15W Wireless', 23999000, '', '', '', ''),
(20134, 8, 'Samsung Galaxy Z Fold 8 5G (12 + 256GB/512GB)', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Qualcomm Snapdragon 8 Elite (3nm)\r\n• Layar: Utama 8.0 inci QXGA+ Dynamic AMOLED 2X (Lipat) + Cover Screen 6.5 inci\r\n• Memori: RAM 12GB LPDDR5X + ROM 256GB / 512GB UFS 4.0\r\n• Kamera Belakang: 200 MP ProVisual Camera (Utama, OIS) + 50MP (Telephoto, 5x Optical Zoom) + 12MP (Ultrawide)\r\n• Baterai & Charging: 4400 mAh + 45W Fast Charging\r\n• Fitur Khusus: Sertifikasi tahan air IP68, kompatibel S-Pen, proteksi bodi Armor Aluminum terbaru.', 28499000, '', '', '', ''),
(20135, 8, 'Samsung Galaxy Z Fold 8 5G (16 + 512GB/1TB)', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Qualcomm Snapdragon 8 Elite (3nm)\r\n• Layar: Utama 8.0 inci QXGA+ Dynamic AMOLED 2X (Lipat) + Cover Screen 6.5 inci\r\n• Memori: RAM 16GB LPDDR5X + ROM 512GB/1TB UFS 4.0\r\n• Kamera Belakang: 200 MP ProVisual Camera (Utama, OIS) + 50MP (Telephoto, 5x Optical Zoom) + 12MP (Ultrawide)\r\n• Baterai & Charging: 4400 mAh + 45W Fast Charging\r\n• Fitur Khusus: Sertifikasi tahan air IP68, kompatibel S-Pen, proteksi bodi Armor Aluminum terbaru.', 40499000, '', '', '', ''),
(20136, 9, 'Samsung Galaxy A16 5G', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: MediaTek Dimensity 6300\r\n• Layar: 6.7 inci Super AMOLED, 90Hz refresh rate\r\n• Memori: RAM 8GB + ROM 128GB / 256GB\r\n• Baterai & Charging: 5000 mAh + 25W Fast Charging', 3750000, '', '', '', ''),
(20137, 9, 'Samsung Galaxy A27 5G (6GB / 128GB)', '• Chipset: Qualcomm Snapdragon 6 Gen 3\r\n• Layar: 6.7 inci Super AMOLED, 120Hz refresh rate\r\n• Memori: RAM 6GB + ROM 128GB\r\n• Kamera Belakang: 50 MP (Utama, OIS) + 5 MP (Ultrawide) + 2 MP (Macro) | Depan 12 MP\r\n• Baterai & Charging: 5000 mAh + 25W Fast Charging', 5299000, '', '', '', ''),
(20138, 9, 'Samsung Galaxy A27 5G (8GB / 256GB)', '• Chipset: Qualcomm Snapdragon 6 Gen 3\r\n• Layar: 6.7 inci Super AMOLED, 120Hz refresh rate\r\n• Memori: RAM 8GB + ROM 256GB\r\n• Kamera Belakang: 50 MP (Utama, OIS) + 5 MP (Ultrawide) + 2 MP (Macro) | Depan 12 MP\r\n• Baterai & Charging: 5000 mAh + 25W Fast Charging', 6299000, '', '', '', ''),
(20139, 9, 'Samsung Galaxy A37 5G (8GB / 128GB)', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Exynos 1480 (Ex-A55) dengan kartu grafis Xclipse 530\r\n• Layar: 6.8 inci Super AMOLED, 120Hz refresh rate\r\n• Memori: RAM 8GB + ROM 128GB\r\n• Kamera Belakang: 50 MP (Utama, OIS) + 8 MP (Ultrawide) + 5 MP (Macro) | Depan 12 MP\r\n• Baterai & Charging: 5000 mAh + 45W Super Fast Charging (Mendukung kecepatan cas lebih tinggi)', 6299000, '', '', '', ''),
(20140, 9, 'Samsung Galaxy A37 5G (8GB / 256GB)', '• Chipset: Exynos 1480 (Ex-A55) dengan kartu grafis Xclipse 530\r\n• Layar: 6.8 inci Super AMOLED, 120Hz refresh rate\r\n• Memori: RAM 8GB + ROM 256GB\r\n• Kamera Belakang: 50 MP (Utama, OIS) + 8 MP (Ultrawide) + 5 MP (Macro) | Depan 12 MP\r\n• Baterai & Charging: 5000 mAh + 45W Super Fast Charging (Mendukung kecepatan cas lebih tinggi)', 6999000, '', '', '', ''),
(20141, 9, 'Samsung Galaxy A57 5G (8GB / 128GB)', 'Spesifikasi Utama:\r\n\r\n• Chipset: Exynos 1680 dengan kartu grafis Xclipse 550\r\n• Layar: 6.7 inci Super AMOLED Plus, 120Hz refresh rate\r\n• Memori: RAM 8GB + ROM 128GB\r\n• Kamera Belakang: 50 MP (Utama, OIS) + 12 MP (Ultrawide) + 5 MP (Macro) | Depan 12 MP\r\n• Baterai & Charging: 5000 mAh + 25W Fast Charging', 7299000, '', '', '', ''),
(20142, 9, 'Samsung Galaxy A57 5G (12GB / 256GB)', 'Spesifikasi Utama:\r\n\r\n• Chipset: Exynos 1680 dengan kartu grafis Xclipse 550\r\n• Layar: 6.7 inci Super AMOLED Plus, 120Hz refresh rate\r\n• Memori: 12GB + ROM 256GB\r\n• Kamera Belakang: 50 MP (Utama, OIS) + 12 MP (Ultrawide) + 5 MP (Macro) | Depan 12 MP\r\n• Baterai & Charging: 5000 mAh + 25W Fast Charging', 8299000, '', '', '', ''),
(20143, 10, 'Samsung Galaxy M15 5G', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: MediaTek Dimensity 6100+ (6 nm)\r\n• Layar: 6.5 inci Super AMOLED, FHD+, 90Hz refresh rate, 800 nits\r\n• Memori: RAM 6GB + ROM 128GB (Mendukung RAM Plus hingga 6GB)\r\n• Kamera Belakang: 50 MP (Utama) + 5 MP (Ultrawide) + 2 MP (Macro)\r\n• Baterai & Charging: 6000 mAh + 25W Fast Charging\r\n• Fitur Unggulan: NFC, Jaminan 4x OS Update & 5 Tahun Security Update, Knox Vault', 2500000, '', '', '', ''),
(20144, 10, 'Samsung Galaxy M35 5G', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Exynos 1380 (5 nm)\r\n• Layar: 6.6 inci Super AMOLED, FHD+, 120Hz refresh rate\r\n• Memori: RAM 8GB + ROM 128GB / 256GB\r\n• Kamera Belakang: 50 MP (Utama, OIS) + 8 MP (Ultrawide) + 2 MP (Macro)\r\n• Baterai & Charging: 6000 mAh + 25W Fast Charging', 4200000, '', '', '', ''),
(20145, 10, 'Samsung Galaxy M55 5G', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Qualcomm Snapdragon 7 Gen 1 (4 nm)\r\n• Layar: 6.7 inci Super AMOLED Plus, FHD+, 120Hz refresh rate, 1000 nits\r\n• Memori: RAM 8GB / 12GB + ROM 256GB (MicroSD hingga 1TB)\r\n• Kamera Belakang: 50 MP (Utama, OIS) + 8 MP (Ultrawide) + 2 MP (Macro)\r\n• Kamera Depan: 50 MP Selfie Camera\r\n• Baterai & Charging: 5000 mAh + 45W Fast Charging\r\n• Fitur Unggulan: Samsung Knox Vault, Dual Speaker Dolby Atmos, NFC', 5750000, '', '', '', ''),
(20146, 11, 'IQOO 13 5G (12GB / 256GB)', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Qualcomm Snapdragon 8 Elite (3nm) & Supercomputing Chip Q2\r\n• Layar: 6.82 inci Q10 AMOLED, 2K Ultra Resolution (3168x1440), 144Hz, 4500 nits\r\n• Memori: RAM 12GB + ROM 256GB \r\n• Kamera Belakang: Triple 50 MP Sony IMX921 (OIS) + 50 MP (Ultrawide) + 50 MP (Telephoto)\r\n• Baterai & Charging: 6150 mAh + 120W FlashCharge & Bypass Charging\r\n• Fitur Spesial: Monster Halo Floating Light (Lampu RGB belakang interaktif), 3D Ultrasonic Fingerprint, Proteksi IP68+IP69', 9999000, '', '', '', ''),
(20147, 11, 'IQOO 13 5G (16GB / 512GB)', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Qualcomm Snapdragon 8 Elite (3nm) & Supercomputing Chip Q2\r\n• Layar: 6.82 inci Q10 AMOLED, 2K Ultra Resolution (3168x1440), 144Hz, 4500 nits\r\n• Memori: RAM 16GB + ROM 512GB\r\n• Kamera Belakang: Triple 50 MP Sony IMX921 (OIS) + 50 MP (Ultrawide) + 50 MP (Telephoto)\r\n• Baterai & Charging: 6150 mAh + 120W FlashCharge & Bypass Charging\r\n• Fitur Spesial: Monster Halo Floating Light (Lampu RGB belakang interaktif), 3D Ultrasonic Fingerprint, Proteksi IP68+IP69', 11999000, '', '', '', ''),
(20148, 11, 'IQOO 15R 5G (8GB / 256GB)', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: MediaTek Dimensity 9400 / Snapdragon Kelas Atas\r\n• Layar: 6.78 inci AMOLED, 1.5K, 144Hz Eyecare Display\r\n• Memori: RAM 8GB + ROM 256GB\r\n• Kamera Belakang: 50 MP Sony LYT-700V OIS Main Camera + Auxiliary Lens\r\n• Baterai & Charging: 7600 mAh Silicon Anode Battery + 80W Fast Charging\r\n• Fitur Gaming: 6.5K IceCore VC Cooling System (Suhu sangat adem saat rendering tinggi)', 8699000, '', '', '', ''),
(20149, 11, 'IQOO 15R 5G (12GB / 512GB)', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: MediaTek Dimensity 9400 / Snapdragon Kelas Atas\r\n• Layar: 6.78 inci AMOLED, 1.5K, 144Hz Eyecare Display\r\n• Memori: RAM 12GB + ROM 512GB\r\n• Kamera Belakang: 50 MP Sony LYT-700V OIS Main Camera + Auxiliary Lens\r\n• Baterai & Charging: 7600 mAh Silicon Anode Battery + 80W Fast Charging\r\n• Fitur Gaming: 6.5K IceCore VC Cooling System (Suhu sangat adem saat rendering tinggi)', 11999000, '', '', '', ''),
(20150, 11, 'IQOO 15 5G', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: MediaTek Dimensity 9400 / Snapdragon Kelas Atas\r\n• Layar: 6.78 inci AMOLED, 1.5K, 144Hz Eyecare Display\r\n• Memori: RAM 8GB / 12GB + ROM 256GB / 512GB\r\n• Kamera Belakang: 50 MP Sony LYT-700V OIS Main Camera + Auxiliary Lens\r\n• Baterai & Charging: 7600 mAh Silicon Anode Battery + 80W Fast Charging\r\n• Fitur Gaming: 6.5K IceCore VC Cooling System (Suhu sangat adem saat rendering tinggi)', 13999000, '', '', '', ''),
(20151, 12, 'IQOO Z11x 5G (6GB / 128GB)', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: MediaTek Dimensity 7400 Turbo\r\n• Layar: 6.76 inci LCD, 120Hz refresh rate\r\n• Memori: RAM 6GB + ROM 128GB \r\n• Baterai & Charging: 7200 mAh Battery\r\n• Fitur Durabilitas: Sertifikasi IP68 + IP69+ serta Military Grade Durability\r\n• Kamera: Utama 50MP Sony IMX852 + Depan 32MP', 3999000, '', '', '', ''),
(20152, 12, 'IQOO Z11x 5G (8GB / 256GB)', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: MediaTek Dimensity 7400 Turbo\r\n• Layar: 6.76 inci LCD, 120Hz refresh rate\r\n• Memori: RAM 8GB + ROM 256GB\r\n• Baterai & Charging: 7200 mAh Battery\r\n• Fitur Durabilitas: Sertifikasi IP68 + IP69+ serta Military Grade Durability\r\n• Kamera: Utama 50MP Sony IMX852 + Depan 32MP', 5699000, '', '', '', ''),
(20153, 12, 'IQOO 11 5G (8GB / 128GB)', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: MediaTek Dimensity Kelas Atas\r\n• Layar: 6.83 inci 1.5K AMOLED Esports Display, 144Hz refresh rate, material Q10+\r\n• Memori: RAM 8GB + ROM 128GB\r\n• Baterai & Charging: 9020 mAh Ultra-Slim Silicon BlueVolt Battery + 90W FlashCharge\r\n• Sistem Pendingin: 7000 mm² Vapor Chamber Cooling System', 5899000, '', '', '', ''),
(20154, 12, 'IQOO 11 5G (12GB/ 256GB)', 'Spesifikasi lengkap:\r\n\r\n• Chipset: MediaTek Dimensity Kelas Atas\r\n• Layar: 6.83 inci 1.5K AMOLED Esports Display, 144Hz refresh rate, material Q10+\r\n• Memori: RAM 12GB + ROM 256GB\r\n• Baterai & Charging: 9020 mAh Ultra-Slim Silicon BlueVolt Battery + 90W FlashCharge\r\n• Sistem Pendingin: 7000 mm² Vapor Chamber Cooling System', 8399000, '', '', '', ''),
(20155, 13, 'IQOO NEO 10 Pro 5G', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: MediaTek Dimensity 9400 (3nm)\r\n• Layar: 6.78 inci LTPO AMOLED, 1.5K, 144Hz refresh rate\r\n• Memori: RAM 12GB / 16GB + ROM hingga 512GB\r\n• Baterai & Charging: 6100 mAh Silicon-Carbon + 120W FlashCharge\r\n• Kamera: Dual 50 MP (Utama OIS + Ultrawide)', 11000000, '', '', '', ''),
(20156, 13, 'IQOO NEO 10 5G (8GB / 256GB)', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Qualcomm Snapdragon 8s Gen 4 (4nm) & Chip Q1\r\n• Layar: 6.78 inci C9+ AMOLED, 1.5K Resolusi, 144Hz, kecerahan 5500 nits\r\n• Memori: RAM 8GB LPDDR5X Ultra + ROM 256GB UFS 4.1\r\n• Baterai & Charging: 7000 mAh Gen 3 BlueVolt Battery + 120W FlashCharge\r\n• Fitur Fisik: Ketebalan bodi sangat ramping (8.09 mm), rating IP65', 6699000, '', '', '', ''),
(20157, 13, 'IQOO NEO 10 5G (12GB / 256GB)', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Qualcomm Snapdragon 8s Gen 4 (4nm) & Chip Q1\r\n• Layar: 6.78 inci C9+ AMOLED, 1.5K Resolusi, 144Hz, kecerahan 5500 nits\r\n• Memori: RAM 12GB LPDDR5X Ultra + ROM 256GB UFS 4.1\r\n• Baterai & Charging: 7000 mAh Gen 3 BlueVolt Battery + 120W FlashCharge\r\n• Fitur Fisik: Ketebalan bodi sangat ramping (8.09 mm), rating IP65', 7699000, '', '', '', ''),
(20158, 13, 'IQOO NEO 11 5G', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Qualcomm Snapdragon 8 Elite & Supercomputing Chip Q2\r\n• Layar: 6.82 inci 8T LTPO AMOLED, 144Hz refresh rate\r\n• Memori: RAM 12GB / 16GB LPDDR5X + ROM hingga 512GB UFS 4.1\r\n• Baterai & Charging: 7500 mAh + 100W FlashCharge\r\n• Sistem Pendingin: 8K Vapor Chamber Cooling System\r\n• Kamera: Utama 50 MP (Sony LYT-700V, OIS) + 8 MP Ultrawide', 9800000, '', '', '', ''),
(20159, 14, 'Xiaomi 14', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Qualcomm Snapdragon 8 Gen 3 (4nm)\r\n• Layar: 6.36 inci LTPO OLED, 120Hz, 3000 nits\r\n• Memori: RAM 12GB + ROM 256GB\r\n• Kamera: Triple 50 MP Leica (Utama + Telephoto + Ultrawide)\r\n• Baterai: 4610 mAh + 90W HyperCharge', 11999000, '', '', '', ''),
(20160, 14, 'Xiaomy 15 Regular', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Qualcomm Snapdragon 8 Elite (3nm)\r\n• Layar: 6.36 inci AMOLED CrystalRes (2670 x 1200), 120Hz, 3200 nits, bezel tipis 1.38 mm\r\n• Memori: RAM 12GB + ROM 256GB / 512GB\r\n• Sistem Kamera Leica Triple: 50 MP Utama (Light Fusion 900, OIS) + 50 MP Telephoto Zoom + 50 MP Ultrawide\r\n• Baterai & Charging: 5420 mAh + 90W Wired HyperCharge & 50W Wireless Charging\r\n• Fitur Tambahan: Sensor sidik jari ultrasonik di bawah layar, Wi-Fi 7, Rating proteksi IP68', 12599000, '', '', '', ''),
(20161, 14, 'Xiaomy 15 Ultra (16GB / 512GB)', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Qualcomm Snapdragon 8 Elite (3nm, up to 4.32GHz) + NPU AI pintar\r\n• Layar: 6.73 inci AMOLED WQHD+ (3200 x 1440), 120Hz LTPO, kecerahan puncak 3200 nits, dilindungi Xiaomi Shield Glass 2.0\r\n• Memori: RAM 16GB LPDDR5X + ROM 512GB UFS 4.1\r\n• Sistem Kamera Leica Quad:\r\n	• Kamera Utama: 50 MP (1 inci Sony LYT-900, f/1.63, OIS)\r\n	• Kamera Periskop: 200 MP Ultra-Telephoto (Isocell HP9, f/2.6)\r\n	• Kamera Telephoto: 50 MP (70mm floating lens)\r\n	• Kamera Ultrawide: 50 MP (14mm)\r\n	• Kamera Depan: 32 MP\r\n• Baterai & Charging: 5410 mAh + 90W HyperCharge kabel & 80W Wireless Charging\r\n• Fitur Spesial: Sertifikasi kedap air IP68, sasis tangguh Xiaomi Guardian Structure, Android 15 berbalut Xiaomi HyperOS 2', 16999000, '', '', '', ''),
(20162, 14, 'Xiaomy 15 Ultra (16GB / 1TB)', 'Spesifikasi Lengkap:\r\n\r\n• Chipset: Qualcomm Snapdragon 8 Elite (3nm, up to 4.32GHz) + NPU AI pintar\r\n• Layar: 6.73 inci AMOLED WQHD+ (3200 x 1440), 120Hz LTPO, kecerahan puncak 3200 nits, dilindungi Xiaomi Shield Glass 2.0\r\n• Memori: RAM 16GB LPDDR5X + ROM 1TB UFS 4.1\r\n• Sistem Kamera Leica Quad:\r\n	• Kamera Utama: 50 MP (1 inci Sony LYT-900, f/1.63, OIS)\r\n	• Kamera Periskop: 200 MP Ultra-Telephoto (Isocell HP9, f/2.6)\r\n	• Kamera Telephoto: 50 MP (70mm floating lens)\r\n	• Kamera Ultrawide: 50 MP (14mm)\r\n	• Kamera Depan: 32 MP\r\n• Baterai & Charging: 5410 mAh + 90W HyperCharge kabel & 80W Wireless Charging\r\n• Fitur Spesial: Sertifikasi kedap air IP68, sasis tangguh Xiaomi Guardian Structure, Android 15 berbalut Xiaomi HyperOS 2', 19999000, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tipe`
--

CREATE TABLE `tipe` (
  `id_tipe` tinyint UNSIGNED NOT NULL,
  `id_merk` tinyint UNSIGNED NOT NULL,
  `tipe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tipe`
--

INSERT INTO `tipe` (`id_tipe`, `id_merk`, `tipe`) VALUES
(1, 171, 'Redmagic\r\n'),
(2, 171, 'Neo Series'),
(3, 171, 'V Series'),
(4, 171, 'A Series'),
(5, 172, 'Zenfone'),
(6, 172, 'ROG Phone'),
(7, 173, 'S Series'),
(8, 173, 'Z Series'),
(9, 173, 'A Series'),
(10, 173, 'M Series'),
(11, 174, 'Flagship Series'),
(12, 174, 'Z Series'),
(13, 174, 'Neo Series'),
(14, 175, 'Xiaomi Series\r\n'),
(15, 175, 'Redmi series'),
(16, 175, 'POCO Series'),
(17, 176, 'IPhone'),
(18, 177, 'Number Series'),
(19, 177, 'Nord Series'),
(20, 177, 'Ace Series'),
(21, 178, 'Hot Series'),
(22, 178, 'Note Series'),
(23, 178, 'GT Series'),
(24, 178, 'Smart Series'),
(25, 178, 'Zero Series'),
(26, 179, 'Y Series'),
(27, 179, 'V Series'),
(28, 179, 'X Series'),
(29, 179, 'T Series'),
(31, 180, 'VivoBook series'),
(32, 180, 'ZenBook'),
(33, 180, 'ProArt'),
(34, 180, 'Republik Of Gamers (ROG)'),
(35, 180, 'TUF Gaming'),
(36, 180, 'ExpertBook'),
(37, 181, 'Titan Series'),
(38, 181, 'Raider Series'),
(39, 181, 'Stealth Series'),
(40, 181, 'Vector Series'),
(41, 181, 'Prestige Series'),
(42, 181, 'Modern Series'),
(43, 181, 'Creator Series'),
(44, 181, 'Katana Series'),
(45, 182, 'Spectre '),
(46, 182, 'Envy'),
(47, 182, 'OmniBook'),
(48, 182, 'Pavilion & Pavilion Plus'),
(49, 182, 'Essential'),
(50, 182, 'NoteBook'),
(51, 182, 'Omen'),
(52, 182, 'Victus'),
(53, 182, 'ProBook'),
(54, 182, 'EliteBook'),
(55, 182, 'Dragonfly'),
(56, 182, 'ZBook'),
(57, 183, 'Inspiron'),
(58, 183, 'XPS'),
(59, 183, 'Latitude'),
(60, 183, 'Vostro'),
(61, 183, 'Alienware & G-Series'),
(62, 184, 'Hype'),
(63, 184, 'Pongo'),
(64, 184, 'Z Series'),
(65, 184, 'Saga'),
(66, 185, 'Swift'),
(67, 185, 'Aspire'),
(68, 185, 'Nitro'),
(69, 185, 'Predator'),
(70, 185, 'Vero'),
(71, 185, 'TravelMate'),
(72, 186, 'MacBook Air'),
(73, 186, 'MacBook Pro'),
(74, 187, 'ThinkPad'),
(75, 187, 'Yoga'),
(76, 187, 'Legion'),
(77, 187, 'LOQ'),
(78, 187, 'IdeaPad'),
(79, 187, 'ThinkBook'),
(80, 188, 'XBook'),
(81, 188, 'GTBook'),
(82, 188, 'INBook');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` tinyint NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `merk`
--
ALTER TABLE `merk`
  ADD PRIMARY KEY (`id_merk`),
  ADD UNIQUE KEY `id_merk` (`id_merk`);

--
-- Indexes for table `seri`
--
ALTER TABLE `seri`
  ADD PRIMARY KEY (`id_seri`);

--
-- Indexes for table `tipe`
--
ALTER TABLE `tipe`
  ADD PRIMARY KEY (`id_tipe`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `merk`
--
ALTER TABLE `merk`
  MODIFY `id_merk` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `seri`
--
ALTER TABLE `seri`
  MODIFY `id_seri` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20163;

--
-- AUTO_INCREMENT for table `tipe`
--
ALTER TABLE `tipe`
  MODIFY `id_tipe` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` tinyint NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
