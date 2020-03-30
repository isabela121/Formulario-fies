-- phpMyAdmin SQL Dump
-- version 4.3.7
-- http://www.phpmyadmin.net
--
-- Host: mysql06-farm76.kinghost.net
-- Tempo de geração: 06/02/2020 às 12:39
-- Versão do servidor: 5.6.36-log
-- Versão do PHP: 5.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `unirb18`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE IF NOT EXISTS `cursos` (
  `id` bigint(20) unsigned NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculdade_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `cursos`
--

INSERT INTO `cursos` (`id`, `nome`, `faculdade_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Administração', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `faculdades`
--

CREATE TABLE IF NOT EXISTS `faculdades` (
  `id` bigint(20) unsigned NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unidade_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `faculdades`
--

INSERT INTO `faculdades` (`id`, `nome`, `unidade_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Unirb Salvador', 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `leads`
--

CREATE TABLE IF NOT EXISTS `leads` (
  `id` bigint(20) unsigned NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unidade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `curso` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faculdade` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Fazendo dump de dados para tabela `leads`

--
-- Estrutura para tabela `unidades`
--

CREATE TABLE IF NOT EXISTS `unidades` (
  `id` bigint(20) unsigned NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnpj` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logradouro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) 

--
-- Fazendo dump de dados para tabela `unidades`
--

INSERT INTO `unidades` (`id`, `nome`, `cnpj`, `logradouro`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ALAGOINHAS', '', '', NULL, NULL, NULL),
(2, 'SALVADOR', '', '', NULL, NULL, NULL),
(3, 'CASTRO ALVES', '', '', NULL, NULL, NULL),
(4, 'ARACAJU', '', '', NULL, NULL, NULL),
(5, 'ARAPIRACA', '', '', NULL, NULL, NULL),
(6, 'BARREIRAS', '', '', NULL, NULL, NULL),
(7, 'CEARÁ', '', '', NULL, NULL, NULL),
(8, 'FEIRA DE SANTANA', '', '', NULL, NULL, NULL),
(9, 'FORTALEZA', '', '', NULL, NULL, NULL),
(10, 'FAMIL', '', '', NULL, NULL, NULL),
(11, 'MACEIÓ', '', '', NULL, NULL, NULL),
(14, 'CAMAÇARI', '', '', NULL, NULL, NULL),
(15, 'JUAZEIRO', '', '', NULL, NULL, NULL),
(17, 'MOSSORÓ', '', '', NULL, NULL, NULL),
(18, 'NATAL', '', '', NULL, NULL, NULL),
(19, 'PARNAÍBA', '', '', NULL, NULL, NULL),
(20, 'PIAUÍ', '', '', NULL, NULL, NULL),
(22, 'SERRINHA', '', '', NULL, NULL, NULL),
(23, 'TERESINA', '', '', NULL, NULL, NULL);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`), ADD KEY `cursos_faculdade_id_foreign` (`faculdade_id`);

--
-- Índices de tabela `faculdades`
--
ALTER TABLE `faculdades`
  ADD PRIMARY KEY (`id`), ADD KEY `faculdades_unidade_id_foreign` (`unidade_id`);

--
-- Índices de tabela `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `unidades`
--
ALTER TABLE `unidades`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `faculdades`
--
ALTER TABLE `faculdades`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `leads`
--
ALTER TABLE `leads`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=238;
--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de tabela `unidades`
--
ALTER TABLE `unidades`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `cursos`
--
ALTER TABLE `cursos`
ADD CONSTRAINT `cursos_faculdade_id_foreign` FOREIGN KEY (`faculdade_id`) REFERENCES `faculdades` (`id`);

--
-- Restrições para tabelas `faculdades`
--
ALTER TABLE `faculdades`
ADD CONSTRAINT `faculdades_unidade_id_foreign` FOREIGN KEY (`unidade_id`) REFERENCES `unidades` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
