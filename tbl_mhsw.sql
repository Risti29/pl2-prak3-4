/*
Navicat MySQL Data Transfer

Source Server         : localhost_xampp
Source Server Version : 100419
Source Host           : localhost:3306
Source Database       : tbl_mhsw

Target Server Type    : MYSQL
Target Server Version : 100419
File Encoding         : 65001

Date: 2021-08-28 08:18:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dosen
-- ----------------------------
DROP TABLE IF EXISTS `dosen`;
CREATE TABLE `dosen` (
  `id_dosen` int(10) NOT NULL,
  `nama_dosen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_dosen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dosen
-- ----------------------------
INSERT INTO `dosen` VALUES ('1', 'Hudori, M.Kom');
INSERT INTO `dosen` VALUES ('2', 'Farhan Zayid, M.Kom');
INSERT INTO `dosen` VALUES ('3', 'Hardi Jamhhur');
INSERT INTO `dosen` VALUES ('4', 'Risti Ramadanti, S.Kom., M.Si');
INSERT INTO `dosen` VALUES ('1234', 'coba');

-- ----------------------------
-- Table structure for mahasiswa
-- ----------------------------
DROP TABLE IF EXISTS `mahasiswa`;
CREATE TABLE `mahasiswa` (
  `id` int(2) NOT NULL,
  `npm_mhsw` int(10) DEFAULT NULL,
  `nama_mhsw` varchar(255) DEFAULT NULL,
  `prodi` varchar(255) DEFAULT NULL,
  `kelas` varchar(2) DEFAULT NULL,
  `tahun_ajaran` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mahasiswa
-- ----------------------------
INSERT INTO `mahasiswa` VALUES ('1', '14197033', 'Risti Ramadanti', 'Sistem Informasi', 'C', '2019');
INSERT INTO `mahasiswa` VALUES ('2', '14197057', 'Nurul Hikmah Hilda D', 'Sistem Informasi', 'C', '2019');
INSERT INTO `mahasiswa` VALUES ('3', '14197058', 'Reza Julianti', 'Sistem Informasi', 'C', '2019');
INSERT INTO `mahasiswa` VALUES ('4', '14197060', 'Sylva Aliffina Putri', 'Sistem Informasi', 'C', '2019');
INSERT INTO `mahasiswa` VALUES ('5', '14197024', 'Muhamad Ridwan Nurfauzan', 'Sistem Informasi', 'C', '2019');
INSERT INTO `mahasiswa` VALUES ('6', '14197025', 'Muhamad Sahrul Rizal', 'Sistem Informasi', 'C', '2019');
INSERT INTO `mahasiswa` VALUES ('7', '14197023', 'Muhamad Novaldy Wiradharma', 'Sistem Informasi', 'C', '2019');

-- ----------------------------
-- Table structure for matakuliah
-- ----------------------------
DROP TABLE IF EXISTS `matakuliah`;
CREATE TABLE `matakuliah` (
  `id_matkul` int(11) NOT NULL,
  `kode_matkul` varchar(255) DEFAULT NULL,
  `matkul` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_matkul`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of matakuliah
-- ----------------------------
INSERT INTO `matakuliah` VALUES ('1', 'SD', 'Simulasi Digital');
INSERT INTO `matakuliah` VALUES ('2', 'Pemdas', 'Pemograman Dasar');
INSERT INTO `matakuliah` VALUES ('3', 'OTKP', 'Otomatisasi Perkantorn');

-- ----------------------------
-- Table structure for nilai
-- ----------------------------
DROP TABLE IF EXISTS `nilai`;
CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `npm_mhsw` varchar(255) DEFAULT NULL,
  `nama_mhsw` varchar(255) DEFAULT NULL,
  `kode_matkul` varchar(255) DEFAULT NULL,
  `uts` varchar(255) DEFAULT NULL,
  `uas` varchar(255) DEFAULT NULL,
  `quiz` varchar(255) DEFAULT NULL,
  `tugas` varchar(255) DEFAULT NULL,
  `kehadiran` varchar(255) DEFAULT NULL,
  `pertemuan` varchar(255) DEFAULT NULL,
  `absensi` varchar(255) DEFAULT NULL,
  `nilai` varchar(255) DEFAULT NULL,
  `predikat` varchar(255) DEFAULT '',
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of nilai
-- ----------------------------
INSERT INTO `nilai` VALUES ('1', '14197033', 'Risti Ramadanti', 'Simdig', '50', '78', '68', '44', '16', '16', null, null, null);
INSERT INTO `nilai` VALUES ('2', '14197057', 'Nurul Hikmah Hilda D', 'Pemdas', '70', '70', '80', '58', '16', '16', null, null, '');
INSERT INTO `nilai` VALUES ('3', '14197058', 'Reza Julianti', 'Topologi', '80', '80', '80', '80', '10', '16', null, null, '');
INSERT INTO `nilai` VALUES ('4', '14197060', 'Sylva Aliffina Putri', 'Hukum', '80', '80', '80', '80', '13', '16', null, null, '');
