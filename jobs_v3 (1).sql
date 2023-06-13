-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Jun-2023 às 19:06
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jobs_v3`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidaturas`
--

CREATE TABLE `candidaturas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_cliente` bigint(20) UNSIGNED NOT NULL,
  `fk_publicador` bigint(20) UNSIGNED NOT NULL,
  `fk_vaga` bigint(20) UNSIGNED NOT NULL,
  `nomeCategoria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `candidaturas`
--

INSERT INTO `candidaturas` (`id`, `fk_cliente`, `fk_publicador`, `fk_vaga`, `nomeCategoria`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 8, 13, 1, 'Técnico Médio de Informática', 'Pendente', NULL, '2023-04-23 18:31:40', '2023-04-23 18:31:40'),
(4, 8, 6, 2, 'Técnico Médio de Informática', 'Pendente', NULL, '2023-04-24 07:36:30', '2023-04-24 07:36:30'),
(5, 3, 6, 2, 'CCNA', 'Pendente', NULL, '2023-05-01 23:31:07', '2023-05-01 23:31:07'),
(6, 11, 6, 2, 'CCNA', 'Pendente', NULL, '2023-05-03 19:20:18', '2023-05-03 19:20:18'),
(12, 2, 6, 2, 'Administrador de Redes', 'Pendente', NULL, '2023-05-13 20:41:42', '2023-05-13 20:41:42'),
(13, 11, 5, 8, 'Ensino Médio Concluído', 'Pendente', NULL, '2023-06-03 21:42:38', '2023-06-03 21:42:38'),
(14, 2, 5, 8, 'Ensino Médio Concluído', 'Pendente', NULL, '2023-06-03 21:42:38', '2023-06-03 21:42:38'),
(15, 8, 5, 9, 'Técnico de Hardware', 'Pendente', NULL, '2023-06-07 14:05:58', '2023-06-07 14:05:58'),
(16, 8, 5, 9, 'HelpDesk', 'Pendente', NULL, '2023-06-07 14:05:59', '2023-06-07 14:05:59'),
(17, 15, 5, 9, 'HelpDesk', 'Aprovado', NULL, '2023-06-07 16:57:17', '2023-06-07 16:58:28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Técnico de Informática de Gestão', NULL, '2023-04-23 12:14:00', '2023-04-23 12:14:00'),
(2, 'Contabilista Sénior', NULL, '2023-04-23 12:14:54', '2023-04-23 12:14:54'),
(3, 'Técnico Médio de Telecomunicações', NULL, '2023-04-23 12:15:22', '2023-04-23 12:15:22'),
(4, 'Técnico Médio de Informática', NULL, '2023-04-23 12:16:01', '2023-04-23 12:16:01'),
(5, 'Técnico de Hardware', NULL, '2023-04-23 12:41:08', '2023-04-23 12:41:08'),
(6, 'Professor Infantil', NULL, '2023-04-23 12:41:28', '2023-04-23 12:41:28'),
(7, 'Programador Front-End', NULL, '2023-04-23 12:41:50', '2023-04-23 12:41:50'),
(8, 'Programador Web', NULL, '2023-04-23 12:42:04', '2023-04-23 12:42:04'),
(9, 'Programador Back-End', NULL, '2023-04-23 12:42:19', '2023-04-23 12:42:19'),
(10, 'Programador Desktop', NULL, '2023-04-23 12:42:34', '2023-04-23 12:42:34'),
(11, 'Programador Fullstack', NULL, '2023-04-23 12:42:53', '2023-04-23 12:42:53'),
(12, 'Programador Mobile', NULL, '2023-04-23 12:43:09', '2023-04-23 12:43:09'),
(13, 'Gestor de Tráfego', NULL, '2023-04-23 12:43:21', '2023-04-23 12:43:21'),
(14, 'Gestor de Marketing Digital', NULL, '2023-04-23 12:43:34', '2023-04-23 12:43:34'),
(15, 'Administrador de Sistemas', NULL, '2023-04-23 12:43:54', '2023-04-23 12:43:54'),
(16, 'Administrador de Redes', NULL, '2023-04-23 12:44:02', '2023-04-23 12:44:02'),
(17, 'Analista de Sistemas', NULL, '2023-04-23 12:44:16', '2023-04-23 12:44:16'),
(18, 'CCNP', NULL, '2023-04-23 12:44:27', '2023-04-23 12:44:27'),
(19, 'CCNA', NULL, '2023-04-23 12:44:36', '2023-04-23 12:44:36'),
(20, 'Técnico de Mecânica', NULL, '2023-04-23 12:44:57', '2023-04-23 12:48:48'),
(21, 'Técnico de Electricidade', NULL, '2023-04-23 12:45:40', '2023-04-23 12:45:55'),
(22, 'Recepcionista', NULL, '2023-04-23 12:46:28', '2023-04-23 12:46:28'),
(23, 'Apoio ao Cliente', NULL, '2023-04-23 12:46:46', '2023-04-23 12:46:46'),
(24, 'HelpDesk', NULL, '2023-04-23 12:47:17', '2023-04-23 12:47:17'),
(25, 'Engenharia Mecânica', NULL, '2023-04-23 12:49:13', '2023-04-23 12:49:13'),
(26, 'Inglês (Básico)', NULL, '2023-04-24 08:45:24', '2023-04-24 08:45:24'),
(27, 'Inglês (Fluente)', NULL, '2023-04-24 08:45:34', '2023-04-24 08:45:34'),
(28, '1-5 de experiência', NULL, '2023-04-24 08:45:54', '2023-04-24 08:47:11'),
(29, '+5 de experiência', NULL, '2023-04-24 08:46:16', '2023-04-24 08:46:16'),
(30, 'Licenciado', NULL, '2023-04-24 08:48:42', '2023-04-24 08:48:42'),
(31, 'Ensino Médio Concluído', NULL, '2023-04-24 08:49:16', '2023-04-24 08:49:16'),
(32, 'Sem experiência', NULL, '2023-04-24 08:50:21', '2023-04-24 08:50:21'),
(33, 'Analista Clínica', NULL, '2023-05-13 18:13:14', '2023-05-13 18:13:14'),
(34, 'Enfermeira', NULL, '2023-05-13 18:13:27', '2023-05-13 18:13:27'),
(35, 'Dendista', NULL, '2023-05-13 18:13:49', '2023-05-13 18:13:49'),
(36, 'Advogado', NULL, '2023-05-13 18:14:01', '2023-05-13 18:14:01');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria_usuario`
--

CREATE TABLE `categoria_usuario` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_cliente` bigint(20) UNSIGNED NOT NULL,
  `nomeCategoria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `categoria_usuario`
--

INSERT INTO `categoria_usuario` (`id`, `fk_cliente`, `nomeCategoria`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 'Técnico Médio de Informática', NULL, '2023-04-23 15:39:22', '2023-04-23 15:39:22'),
(2, 3, 'Programador Desktop', NULL, '2023-04-23 15:39:22', '2023-04-23 15:39:22'),
(3, 8, 'Técnico Médio de Informática', NULL, '2023-04-23 18:30:12', '2023-04-23 18:30:12'),
(4, 8, 'Técnico de Hardware', NULL, '2023-04-23 18:30:12', '2023-04-23 18:30:12'),
(5, 8, 'HelpDesk', NULL, '2023-04-23 18:30:12', '2023-04-23 18:30:12'),
(6, 11, 'Técnico de Electricidade', NULL, '2023-05-03 19:18:29', '2023-05-03 19:18:29'),
(7, 11, '1-5 de experiência', NULL, '2023-05-03 19:18:29', '2023-05-03 19:18:29'),
(8, 11, 'Ensino Médio Concluído', NULL, '2023-05-03 19:18:29', '2023-05-03 19:18:29'),
(9, 2, 'CCNP', NULL, '2023-05-13 18:25:45', '2023-05-13 18:25:45'),
(10, 2, 'CCNA', NULL, '2023-05-13 18:25:45', '2023-05-13 18:25:45'),
(11, 2, '1-5 de experiência', NULL, '2023-05-13 18:25:45', '2023-05-13 18:25:45'),
(12, 2, 'Ensino Médio Concluído', NULL, '2023-05-13 18:25:46', '2023-05-13 18:25:46'),
(13, 15, 'Técnico de Hardware', NULL, '2023-06-07 16:55:50', '2023-06-07 16:55:50'),
(14, 15, 'Inglês (Básico)', NULL, '2023-06-07 16:55:50', '2023-06-07 16:55:50'),
(15, 15, '1-5 de experiência', NULL, '2023-06-07 16:55:50', '2023-06-07 16:55:50');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria_vaga`
--

CREATE TABLE `categoria_vaga` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_categoria` bigint(20) UNSIGNED NOT NULL,
  `nomeCategoria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `categoria_vaga`
--

INSERT INTO `categoria_vaga` (`id`, `fk_categoria`, `nomeCategoria`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Técnico Médio de Informática', NULL, '2023-04-23 18:17:37', '2023-04-23 18:17:37'),
(2, 2, 'Técnico Médio de Informática', NULL, '2023-04-24 07:36:29', '2023-04-24 07:36:29'),
(3, 2, 'Administrador de Redes', NULL, '2023-04-24 07:36:30', '2023-04-24 07:36:30'),
(4, 2, 'CCNP', NULL, '2023-04-24 07:36:30', '2023-04-24 07:36:30'),
(5, 2, 'CCNA', NULL, '2023-04-24 07:36:30', '2023-04-24 07:36:30'),
(6, 3, 'Administrador de Sistemas', NULL, '2023-05-02 00:24:00', '2023-05-02 00:24:00'),
(7, 3, 'Administrador de Redes', NULL, '2023-05-02 00:24:00', '2023-05-02 00:24:00'),
(8, 3, 'Analista de Sistemas', NULL, '2023-05-02 00:24:00', '2023-05-02 00:24:00'),
(9, 3, 'CCNP', NULL, '2023-05-02 00:24:01', '2023-05-02 00:24:01'),
(10, 3, 'Inglês (Fluente)', NULL, '2023-05-02 00:24:01', '2023-05-02 00:24:01'),
(11, 3, '1-5 de experiência', NULL, '2023-05-02 00:24:01', '2023-05-02 00:24:01'),
(12, 3, 'Licenciado', NULL, '2023-05-02 00:24:01', '2023-05-02 00:24:01'),
(13, 4, 'Gestor de Tráfego', NULL, '2023-05-02 00:27:00', '2023-05-02 00:27:00'),
(14, 4, 'Gestor de Marketing Digital', NULL, '2023-05-02 00:27:00', '2023-05-02 00:27:00'),
(15, 4, 'Inglês (Básico)', NULL, '2023-05-02 00:27:01', '2023-05-02 00:27:01'),
(16, 4, 'Ensino Médio Concluído', NULL, '2023-05-02 00:27:01', '2023-05-02 00:27:01'),
(17, 5, 'Programador Fullstack', NULL, '2023-05-02 00:33:12', '2023-05-02 00:33:12'),
(18, 5, '1-5 de experiência', NULL, '2023-05-02 00:33:12', '2023-05-02 00:33:12'),
(19, 5, 'Ensino Médio Concluído', NULL, '2023-05-02 00:33:12', '2023-05-02 00:33:12'),
(20, 6, 'Inglês (Fluente)', NULL, '2023-05-02 00:39:45', '2023-05-02 00:39:45'),
(21, 6, '+5 de experiência', NULL, '2023-05-02 00:39:45', '2023-05-02 00:39:45'),
(27, 8, 'Ensino Médio Concluído', NULL, '2023-06-03 21:42:38', '2023-06-03 21:42:38'),
(28, 8, 'Sem experiência', NULL, '2023-06-03 21:42:39', '2023-06-03 21:42:39'),
(29, 9, 'Técnico de Hardware', NULL, '2023-06-07 14:05:58', '2023-06-07 14:05:58'),
(30, 9, 'HelpDesk', NULL, '2023-06-07 14:05:59', '2023-06-07 14:05:59');

-- --------------------------------------------------------

--
-- Estrutura da tabela `configurations`
--

CREATE TABLE `configurations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dados_perfil`
--

CREATE TABLE `dados_perfil` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_user` bigint(20) UNSIGNED NOT NULL,
  `nomeCliente` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataNascimento` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nacionalidade` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `residencia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatssap` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ablilitacoesLiteriais` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `formacacaoProfissional` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explerienciaProfissional` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idiomas` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fotoPerfil` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `dados_perfil`
--

INSERT INTO `dados_perfil` (`id`, `fk_user`, `nomeCliente`, `bi`, `dataNascimento`, `nacionalidade`, `residencia`, `telefone`, `whatssap`, `email`, `ablilitacoesLiteriais`, `formacacaoProfissional`, `explerienciaProfissional`, `idiomas`, `fotoPerfil`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 'Armando Correia', '009169421LA044', '2003-01-31', 'Angolana', 'Cazenga', '929644005', '929644005', 'ajc.correia31@gmail.com', 'Frequenta actualmente o ensino médio, com a 11ª classe no Instituto Politécnico Simione Mucune', 'Curso de Java 8,\r\nCurso de C#,\r\nCurso de Algoritmo,\r\nCurso de Visual Basic', 'Trabalhou como desenvolvedor de sistemas na empresa TransDoidinha durante 1 ano', 'Português (Nativo), Inglês (Básico)', 'fotoPerfil/fotoPerfil-16445512a50474.jpg', NULL, '2023-04-23 15:39:22', '2023-04-23 15:39:22'),
(2, 8, 'Nilton Tomé', '0093935LA055', '2002-06-10', 'Angolana', 'Luanda, Sambizanga', '939217789', '939217789', 'nilton@gmail.com', 'Ensino médio Concluido', 'IT Essentials', 'Trabalhou no ITEL durante 6 anos', 'Inglês', 'fotoPerfil/fotoPerfil-464457934602de.jpg', NULL, '2023-04-23 18:30:12', '2023-04-23 18:30:12'),
(3, 11, 'Paulo Severino', '005241620LA022', '1999-08-18', 'Angolano', 'Sambizanga', '944542662', '944542662', 'pauloseverino@gmail.com', 'Concluiu o ensino médio no Instituto Politécnico do Cazenga', 'Curso Técnico de Electricidade', 'Trabalhou no ENDE durante 3 anos', 'Português (Nativo)', 'fotoPerfil/fotoPerfil-46452b3846e833.png', NULL, '2023-05-03 19:18:29', '2023-05-03 19:18:29'),
(4, 2, 'Adilson J. R da Costa', '009169421LA000', '2002-05-27', 'Angolana', 'Cazenga', '925577069', '925577069', 'adilsondacosta97@gmail.com', '1º Ano de Engenharia Informática na UTANGA', 'Curso de CCNA,\r\nCurso de CCNP', 'Trabalha na Organização Transdoidinha SU Lda', 'Português\r\nInglês', 'fotoPerfil/fotoPerfil-1645fd62910dd0.jpg', NULL, '2023-05-13 18:25:45', '2023-05-13 18:25:45'),
(5, 15, 'Armando da Costa', '00333421LA042', '2002-01-30', 'Angolano', 'Sambizanga', '944631142', '944631142', 'armandocosta@gmail.com', 'Esino medio Concluido', 'informática', 'trabalhou na trandoidinha', 'Português', 'fotoPerfil/fotoPerfil-56480b69614980.png', NULL, '2023-06-07 16:55:50', '2023-06-07 16:55:50');

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresas`
--

CREATE TABLE `empresas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_user` bigint(20) UNSIGNED NOT NULL,
  `nomeEmpresa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `empresas`
--

INSERT INTO `empresas` (`id`, `fk_user`, `nomeEmpresa`, `imagem`, `telefone`, `nif`, `email`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 13, 'ZAP', 'imagem/imagem-364454d00d0e37.png', '935555500', '00924426440', 'zap@gov.co.ao', 'Aprovado', NULL, '2023-04-23 15:21:37', '2023-04-23 15:28:33'),
(2, 13, 'TV Zimbo', 'imagem/imagem-1644574d9b2c02.png', '935000500', '00924426000', 'zimbo@gov.co.ao', 'Aprovado', NULL, '2023-04-23 18:11:37', '2023-04-23 18:14:35'),
(3, 6, 'Africell', 'imagem/imagem-4644630cad1ca5.png', '950180123', '0002100921', 'aficell@co.ao', 'Aprovado', NULL, '2023-04-24 07:33:31', '2023-04-24 07:34:04'),
(4, 6, 'Instituto de Telecomunicações', 'imagem/imagem-56446be20e7e9d.png', '933333300', '000222333', 'itel@gov.ao', 'Aprovado', NULL, '2023-03-24 17:36:33', '2023-03-24 18:03:53'),
(5, 6, 'KorretSeg', 'imagem/imagem-464503de3e4502.png', '912507484', '999000999', 'korretseg@gmail.com', 'Aprovado', NULL, '2023-05-01 22:32:04', '2023-05-01 22:41:12'),
(6, 5, 'Angola Telecom', 'imagem/imagem-36450523d71d96.png', '996699665', '0033003300', 'angola.telecom@gov.ao', 'Aprovado', NULL, '2023-05-01 23:58:53', '2023-05-01 23:59:06'),
(7, 5, 'Digital AO', 'imagem/imagem-46450593ad6e0a.png', '925252530', '00505000', 'digital.ao@gov.ao', 'Aprovado', NULL, '2023-05-02 00:28:42', '2023-05-02 00:28:52'),
(8, 13, 'Transdoidinha SU Lda', 'imagem/imagem-5645fdc05d7ebb.jpg', '923400611', '541742692', 'transdoidinha.@su.ao', 'Aprovado', NULL, '2023-05-13 18:50:45', '2023-05-13 18:50:45');

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `logs`
--

CREATE TABLE `logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `level` enum('emergency','alert','critical','error','warning','notice','info','debug') COLLATE utf8mb4_unicode_ci NOT NULL,
  `REMOTE_ADDR` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PATH_INFO` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_NAME` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `USER_ID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HTTP_USER_AGENT` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `logs`
--

INSERT INTO `logs` (`id`, `level`, `REMOTE_ADDR`, `PATH_INFO`, `USER_NAME`, `USER_ID`, `HTTP_USER_AGENT`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-23 10:53:05', '2023-04-23 10:53:05', NULL),
(2, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em editar um Utilizador com o identificador1', '2023-04-23 10:59:25', '2023-04-23 10:59:25', NULL),
(3, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 11:00:26', '2023-04-23 11:00:26', NULL),
(4, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 11:00:56', '2023-04-23 11:00:56', NULL),
(5, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 11:01:31', '2023-04-23 11:01:31', NULL),
(6, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 1', '2023-04-23 11:01:50', '2023-04-23 11:01:50', NULL),
(7, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em editar um Utilizador com o identificador1', '2023-04-23 11:02:02', '2023-04-23 11:02:02', NULL),
(8, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 1', '2023-04-23 11:12:31', '2023-04-23 11:12:31', NULL),
(9, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 11:54:23', '2023-04-23 11:54:23', NULL),
(10, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em editar um Utilizador com o identificador1', '2023-04-23 11:55:05', '2023-04-23 11:55:05', NULL),
(11, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em editar um Utilizador com o identificador1', '2023-04-23 11:56:13', '2023-04-23 11:56:13', NULL),
(12, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em editar um Utilizador com o identificador1', '2023-04-23 11:56:48', '2023-04-23 11:56:48', NULL),
(13, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-04-23 11:57:04', '2023-04-23 11:57:04', NULL),
(14, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-04-23 12:02:44', '2023-04-23 12:02:44', NULL),
(15, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-04-23 12:03:35', '2023-04-23 12:03:35', NULL),
(16, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Criou uma conta de Utilizador de Eduado Armando', '2023-04-23 12:03:51', '2023-04-23 12:03:51', NULL),
(17, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 12:03:52', '2023-04-23 12:03:52', NULL),
(18, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:04:44', '2023-04-23 12:04:44', NULL),
(19, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-23 12:04:47', '2023-04-23 12:04:47', NULL),
(20, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:04:50', '2023-04-23 12:04:50', NULL),
(21, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas de Vagas Publicadas', '2023-04-23 12:04:57', '2023-04-23 12:04:57', NULL),
(22, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 12:05:08', '2023-04-23 12:05:08', NULL),
(23, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 12:05:41', '2023-04-23 12:05:41', NULL),
(24, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 12:06:04', '2023-04-23 12:06:04', NULL),
(25, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-04-23 12:06:06', '2023-04-23 12:06:06', NULL),
(26, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 12:07:52', '2023-04-23 12:07:52', NULL),
(27, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 12:08:54', '2023-04-23 12:08:54', NULL),
(28, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 1', '2023-04-23 12:09:05', '2023-04-23 12:09:05', NULL),
(29, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 2', '2023-04-23 12:09:20', '2023-04-23 12:09:20', NULL),
(30, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 12:12:49', '2023-04-23 12:12:49', NULL),
(31, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:13:50', '2023-04-23 12:13:50', NULL),
(32, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-23 12:13:54', '2023-04-23 12:13:54', NULL),
(33, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeTécnico de Informática de Gestão', '2023-04-23 12:14:00', '2023-04-23 12:14:00', NULL),
(34, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:14:01', '2023-04-23 12:14:01', NULL),
(35, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-23 12:14:25', '2023-04-23 12:14:25', NULL),
(36, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeContabilista Sénior', '2023-04-23 12:14:54', '2023-04-23 12:14:54', NULL),
(37, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:14:54', '2023-04-23 12:14:54', NULL),
(38, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-23 12:15:03', '2023-04-23 12:15:03', NULL),
(39, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeTécnico Médio de Telecomunicações', '2023-04-23 12:15:22', '2023-04-23 12:15:22', NULL),
(40, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:15:23', '2023-04-23 12:15:23', NULL),
(41, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-23 12:15:45', '2023-04-23 12:15:45', NULL),
(42, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeTécnico Médio de Informática', '2023-04-23 12:16:01', '2023-04-23 12:16:01', NULL),
(43, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:16:01', '2023-04-23 12:16:01', NULL),
(44, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 12:18:57', '2023-04-23 12:18:57', NULL),
(45, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:20:45', '2023-04-23 12:20:45', NULL),
(46, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 12:20:52', '2023-04-23 12:20:52', NULL),
(47, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 12:21:06', '2023-04-23 12:21:06', NULL),
(48, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:21:18', '2023-04-23 12:21:18', NULL),
(49, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-04-23 12:21:27', '2023-04-23 12:21:27', NULL),
(50, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:23:32', '2023-04-23 12:23:32', NULL),
(51, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:25:21', '2023-04-23 12:25:21', NULL),
(52, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:25:37', '2023-04-23 12:25:37', NULL),
(53, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:26:02', '2023-04-23 12:26:02', NULL),
(54, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:26:31', '2023-04-23 12:26:31', NULL),
(55, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:26:56', '2023-04-23 12:26:56', NULL),
(56, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:27:36', '2023-04-23 12:27:36', NULL),
(57, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:28:00', '2023-04-23 12:28:00', NULL),
(58, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:28:09', '2023-04-23 12:28:09', NULL),
(59, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:28:17', '2023-04-23 12:28:17', NULL),
(60, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:28:27', '2023-04-23 12:28:27', NULL),
(61, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:29:11', '2023-04-23 12:29:11', NULL),
(62, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-23 12:41:03', '2023-04-23 12:41:03', NULL),
(63, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeTécnico de Hardware', '2023-04-23 12:41:08', '2023-04-23 12:41:08', NULL),
(64, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:41:09', '2023-04-23 12:41:09', NULL),
(65, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-23 12:41:13', '2023-04-23 12:41:13', NULL),
(66, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeProfessor Infantil', '2023-04-23 12:41:29', '2023-04-23 12:41:29', NULL),
(67, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:41:29', '2023-04-23 12:41:29', NULL),
(68, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-23 12:41:41', '2023-04-23 12:41:41', NULL),
(69, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeProgramador Front-End', '2023-04-23 12:41:51', '2023-04-23 12:41:51', NULL),
(70, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:41:51', '2023-04-23 12:41:51', NULL),
(71, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-23 12:41:54', '2023-04-23 12:41:54', NULL),
(72, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeProgramador Web', '2023-04-23 12:42:04', '2023-04-23 12:42:04', NULL),
(73, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:42:04', '2023-04-23 12:42:04', NULL),
(74, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-23 12:42:08', '2023-04-23 12:42:08', NULL),
(75, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeProgramador Back-End', '2023-04-23 12:42:19', '2023-04-23 12:42:19', NULL),
(76, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:42:19', '2023-04-23 12:42:19', NULL),
(77, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-23 12:42:24', '2023-04-23 12:42:24', NULL),
(78, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeProgramador Desktop', '2023-04-23 12:42:35', '2023-04-23 12:42:35', NULL),
(79, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:42:35', '2023-04-23 12:42:35', NULL),
(80, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-23 12:42:38', '2023-04-23 12:42:38', NULL),
(81, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeProgramador Fullstack', '2023-04-23 12:42:53', '2023-04-23 12:42:53', NULL),
(82, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:42:54', '2023-04-23 12:42:54', NULL),
(83, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-23 12:42:57', '2023-04-23 12:42:57', NULL),
(84, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeProgramador Mobile', '2023-04-23 12:43:09', '2023-04-23 12:43:09', NULL),
(85, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:43:10', '2023-04-23 12:43:10', NULL),
(86, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-23 12:43:13', '2023-04-23 12:43:13', NULL),
(87, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeGestor de Tráfego', '2023-04-23 12:43:21', '2023-04-23 12:43:21', NULL),
(88, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:43:22', '2023-04-23 12:43:22', NULL),
(89, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-23 12:43:24', '2023-04-23 12:43:24', NULL),
(90, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeGestor de Marketing Digital', '2023-04-23 12:43:35', '2023-04-23 12:43:35', NULL),
(91, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:43:35', '2023-04-23 12:43:35', NULL),
(92, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-23 12:43:38', '2023-04-23 12:43:38', NULL),
(93, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeAdministrador de Sistemas', '2023-04-23 12:43:54', '2023-04-23 12:43:54', NULL),
(94, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:43:54', '2023-04-23 12:43:54', NULL),
(95, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-23 12:43:57', '2023-04-23 12:43:57', NULL),
(96, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeAdministrador de Redes', '2023-04-23 12:44:02', '2023-04-23 12:44:02', NULL),
(97, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:44:03', '2023-04-23 12:44:03', NULL),
(98, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-23 12:44:06', '2023-04-23 12:44:06', NULL),
(99, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeAnalista de Sistemas', '2023-04-23 12:44:16', '2023-04-23 12:44:16', NULL),
(100, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:44:17', '2023-04-23 12:44:17', NULL),
(101, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-23 12:44:20', '2023-04-23 12:44:20', NULL),
(102, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeCCNP', '2023-04-23 12:44:27', '2023-04-23 12:44:27', NULL),
(103, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:44:27', '2023-04-23 12:44:27', NULL),
(104, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-23 12:44:30', '2023-04-23 12:44:30', NULL),
(105, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeCCNA', '2023-04-23 12:44:36', '2023-04-23 12:44:36', NULL),
(106, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:44:36', '2023-04-23 12:44:36', NULL),
(107, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-23 12:44:39', '2023-04-23 12:44:39', NULL),
(108, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeMecânico', '2023-04-23 12:44:57', '2023-04-23 12:44:57', NULL),
(109, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:44:57', '2023-04-23 12:44:57', NULL),
(110, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-23 12:45:01', '2023-04-23 12:45:01', NULL),
(111, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeTécnico de Electicidade', '2023-04-23 12:45:40', '2023-04-23 12:45:40', NULL),
(112, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:45:40', '2023-04-23 12:45:40', NULL),
(113, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em editar  categorias', '2023-04-23 12:45:48', '2023-04-23 12:45:48', NULL),
(114, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'editou uma categoria com o nomeTécnico de Electricidade', '2023-04-23 12:45:55', '2023-04-23 12:45:55', NULL),
(115, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:45:55', '2023-04-23 12:45:55', NULL),
(116, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-23 12:45:59', '2023-04-23 12:45:59', NULL),
(117, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeRecepcionista', '2023-04-23 12:46:29', '2023-04-23 12:46:29', NULL),
(118, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:46:29', '2023-04-23 12:46:29', NULL),
(119, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-23 12:46:32', '2023-04-23 12:46:32', NULL),
(120, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeApoio ao Cliente', '2023-04-23 12:46:46', '2023-04-23 12:46:46', NULL),
(121, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-23 12:46:47', '2023-04-23 12:46:47', NULL),
(122, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeHelpDesk', '2023-04-23 12:47:17', '2023-04-23 12:47:17', NULL),
(123, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:47:17', '2023-04-23 12:47:17', NULL),
(124, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em editar  categorias', '2023-04-23 12:48:26', '2023-04-23 12:48:26', NULL),
(125, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'editou uma categoria com o nomeTécnico de Mecânica', '2023-04-23 12:48:48', '2023-04-23 12:48:48', NULL),
(126, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:48:49', '2023-04-23 12:48:49', NULL),
(127, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-23 12:48:52', '2023-04-23 12:48:52', NULL),
(128, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeEngenharia Mecânica', '2023-04-23 12:49:13', '2023-04-23 12:49:13', NULL),
(129, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 12:49:13', '2023-04-23 12:49:13', NULL),
(130, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-23 12:49:21', '2023-04-23 12:49:21', NULL),
(131, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-04-23 12:50:57', '2023-04-23 12:50:57', NULL),
(132, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Criou uma conta de Utilizador de Armando Correia', '2023-04-23 12:53:25', '2023-04-23 12:53:25', NULL),
(133, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 12:53:25', '2023-04-23 12:53:25', NULL),
(134, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-04-23 12:53:28', '2023-04-23 12:53:28', NULL),
(135, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Criou uma conta de Utilizador de Osvaldo Jeremias', '2023-04-23 12:54:22', '2023-04-23 12:54:22', NULL),
(136, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 12:54:22', '2023-04-23 12:54:22', NULL),
(137, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-04-23 12:54:26', '2023-04-23 12:54:26', NULL),
(138, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Criou uma conta de Utilizador de Ariclene Gaspar', '2023-04-23 12:55:20', '2023-04-23 12:55:20', NULL),
(139, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 12:55:21', '2023-04-23 12:55:21', NULL),
(140, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-04-23 12:55:25', '2023-04-23 12:55:25', NULL),
(141, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em editar um Utilizador com o identificador2', '2023-04-23 12:55:33', '2023-04-23 12:55:33', NULL),
(142, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 12:55:59', '2023-04-23 12:55:59', NULL),
(143, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-04-23 12:56:02', '2023-04-23 12:56:02', NULL),
(144, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Criou uma conta de Utilizador de Mário Costa', '2023-04-23 12:56:56', '2023-04-23 12:56:56', NULL),
(145, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 12:56:56', '2023-04-23 12:56:56', NULL),
(146, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-04-23 12:57:04', '2023-04-23 12:57:04', NULL),
(147, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-04-23 13:04:30', '2023-04-23 13:04:30', NULL),
(148, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-04-23 13:11:49', '2023-04-23 13:11:49', NULL),
(149, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-04-23 13:14:28', '2023-04-23 13:14:28', NULL),
(150, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-04-23 13:15:05', '2023-04-23 13:15:05', NULL),
(151, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-04-23 13:15:33', '2023-04-23 13:15:33', NULL),
(152, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-04-23 13:19:29', '2023-04-23 13:19:29', NULL),
(153, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-04-23 13:19:45', '2023-04-23 13:19:45', NULL),
(154, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 13:26:49', '2023-04-23 13:26:49', NULL),
(155, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 13:26:55', '2023-04-23 13:26:55', NULL),
(156, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-04-23 13:27:10', '2023-04-23 13:27:10', NULL),
(157, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Criou uma conta de Utilizador de Mateus Francisco', '2023-04-23 13:27:44', '2023-04-23 13:27:44', NULL),
(158, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 13:27:45', '2023-04-23 13:27:45', NULL),
(159, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-04-23 13:27:54', '2023-04-23 13:27:54', NULL),
(160, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Criou uma conta de Utilizador de Nilton Tomé', '2023-04-23 13:28:17', '2023-04-23 13:28:17', NULL),
(161, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 13:28:18', '2023-04-23 13:28:18', NULL),
(162, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-04-23 13:28:45', '2023-04-23 13:28:45', NULL),
(163, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Criou uma conta de Utilizador de Ernesto Sonjamba', '2023-04-23 13:29:44', '2023-04-23 13:29:44', NULL),
(164, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 13:29:45', '2023-04-23 13:29:45', NULL),
(165, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-04-23 13:32:11', '2023-04-23 13:32:11', NULL),
(166, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Criou uma conta de Utilizador de Edson Costa', '2023-04-23 13:32:52', '2023-04-23 13:32:52', NULL),
(167, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 13:32:53', '2023-04-23 13:32:53', NULL),
(168, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 13:37:01', '2023-04-23 13:37:01', NULL),
(169, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-04-23 13:37:08', '2023-04-23 13:37:08', NULL),
(170, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Criou uma conta de Utilizador de Paulo Severino', '2023-04-23 13:37:59', '2023-04-23 13:37:59', NULL),
(171, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 13:38:00', '2023-04-23 13:38:00', NULL),
(172, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-04-23 13:38:03', '2023-04-23 13:38:03', NULL),
(173, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Criou uma conta de Utilizador de Adilson Costa', '2023-04-23 13:38:53', '2023-04-23 13:38:53', NULL),
(174, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 13:38:54', '2023-04-23 13:38:54', NULL),
(175, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-04-23 13:39:37', '2023-04-23 13:39:37', NULL),
(176, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Criou uma conta de Utilizador de Marcelina João', '2023-04-23 13:41:19', '2023-04-23 13:41:19', NULL),
(177, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 13:41:20', '2023-04-23 13:41:20', NULL),
(178, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-23 13:42:32', '2023-04-23 13:42:32', NULL),
(179, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-04-23 13:43:31', '2023-04-23 13:43:31', NULL),
(180, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-04-23 13:44:07', '2023-04-23 13:44:07', NULL),
(181, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-04-23 13:45:03', '2023-04-23 13:45:03', NULL),
(182, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-04-23 13:47:02', '2023-04-23 13:47:02', NULL),
(183, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-23 13:52:53', '2023-04-23 13:52:53', NULL),
(184, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 13:57:45', '2023-04-23 13:57:45', NULL),
(185, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Eliminou um Utilizador com o identificador 1', '2023-04-23 13:57:53', '2023-04-23 13:57:53', NULL),
(186, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-23 13:59:19', '2023-04-23 13:59:19', NULL),
(187, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-04-23 13:59:24', '2023-04-23 13:59:24', NULL),
(188, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-23 14:00:43', '2023-04-23 14:00:43', NULL),
(189, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 1', '2023-04-23 14:02:36', '2023-04-23 14:02:36', NULL),
(190, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-04-23 14:03:38', '2023-04-23 14:03:38', NULL),
(191, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-04-23 14:12:21', '2023-04-23 14:12:21', NULL),
(192, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-04-23 14:16:08', '2023-04-23 14:16:08', NULL),
(193, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas inscrições de vagas', '2023-04-23 14:16:38', '2023-04-23 14:16:38', NULL),
(194, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Procurar Vagas', '2023-04-23 14:16:41', '2023-04-23 14:16:41', NULL),
(195, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em  cadastrar Minhas empresas cadastradas', '2023-04-23 14:21:02', '2023-04-23 14:21:02', NULL),
(196, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 1', '2023-04-23 14:59:23', '2023-04-23 14:59:23', NULL),
(197, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-04-23 14:59:35', '2023-04-23 14:59:35', NULL),
(198, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma empresa com o nomeZAP', '2023-04-23 15:21:37', '2023-04-23 15:21:37', NULL),
(199, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-04-23 15:21:38', '2023-04-23 15:21:38', NULL);
INSERT INTO `logs` (`id`, `level`, `REMOTE_ADDR`, `PATH_INFO`, `USER_NAME`, `USER_ID`, `HTTP_USER_AGENT`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(200, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em  cadastrar Minhas empresas cadastradas', '2023-04-23 15:21:45', '2023-04-23 15:21:45', NULL),
(201, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-04-23 15:25:01', '2023-04-23 15:25:01', NULL),
(202, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-04-23 15:25:49', '2023-04-23 15:25:49', NULL),
(203, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-04-23 15:26:10', '2023-04-23 15:26:10', NULL),
(204, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-04-23 15:26:12', '2023-04-23 15:26:12', NULL),
(205, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-04-23 15:26:41', '2023-04-23 15:26:41', NULL),
(206, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-04-23 15:26:57', '2023-04-23 15:26:57', NULL),
(207, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-04-23 15:27:53', '2023-04-23 15:27:53', NULL),
(208, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em  cadastrar Minhas empresas cadastradas', '2023-04-23 15:27:57', '2023-04-23 15:27:57', NULL),
(209, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-04-23 15:28:26', '2023-04-23 15:28:26', NULL),
(210, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Aprovou solicitação da empresa com o id 1', '2023-04-23 15:28:33', '2023-04-23 15:28:33', NULL),
(211, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-04-23 15:28:33', '2023-04-23 15:28:33', NULL),
(212, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Procurar Vagas', '2023-04-23 15:29:02', '2023-04-23 15:29:02', NULL),
(213, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-04-23 15:30:04', '2023-04-23 15:30:04', NULL),
(214, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Editou  Perfil', '2023-04-23 15:39:22', '2023-04-23 15:39:22', NULL),
(215, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-04-23 15:39:23', '2023-04-23 15:39:23', NULL),
(216, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-04-23 15:39:29', '2023-04-23 15:39:29', NULL),
(217, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-04-23 15:59:29', '2023-04-23 15:59:29', NULL),
(218, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-04-23 16:01:44', '2023-04-23 16:01:44', NULL),
(219, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-04-23 16:04:27', '2023-04-23 16:04:27', NULL),
(220, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-04-23 16:05:47', '2023-04-23 16:05:47', NULL),
(221, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-04-23 16:06:18', '2023-04-23 16:06:18', NULL),
(222, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-04-23 16:06:59', '2023-04-23 16:06:59', NULL),
(223, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-04-23 16:07:39', '2023-04-23 16:07:39', NULL),
(224, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-04-23 16:08:07', '2023-04-23 16:08:07', NULL),
(225, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-04-23 16:08:47', '2023-04-23 16:08:47', NULL),
(226, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-04-23 16:09:08', '2023-04-23 16:09:08', NULL),
(227, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-04-23 16:10:38', '2023-04-23 16:10:38', NULL),
(228, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-04-23 16:11:44', '2023-04-23 16:11:44', NULL),
(229, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-04-23 16:15:38', '2023-04-23 16:15:38', NULL),
(230, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-04-23 16:16:19', '2023-04-23 16:16:19', NULL),
(231, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-04-23 16:17:25', '2023-04-23 16:17:25', NULL),
(232, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-04-23 16:18:33', '2023-04-23 16:18:33', NULL),
(233, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-04-23 16:18:47', '2023-04-23 16:18:47', NULL),
(234, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-04-23 16:19:58', '2023-04-23 16:19:58', NULL),
(235, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-04-23 16:20:37', '2023-04-23 16:20:37', NULL),
(236, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-04-23 16:21:28', '2023-04-23 16:21:28', NULL),
(237, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-04-23 16:22:14', '2023-04-23 16:22:14', NULL),
(238, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-04-23 16:27:06', '2023-04-23 16:27:06', NULL),
(239, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-04-23 16:27:37', '2023-04-23 16:27:37', NULL),
(240, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-04-23 16:27:54', '2023-04-23 16:27:54', NULL),
(241, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-04-23 16:28:48', '2023-04-23 16:28:48', NULL),
(242, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em  cadastrar Minhas empresas cadastradas', '2023-04-23 18:10:00', '2023-04-23 18:10:00', NULL),
(243, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-04-23 18:10:05', '2023-04-23 18:10:05', NULL),
(244, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em  cadastrar Minhas empresas cadastradas', '2023-04-23 18:10:08', '2023-04-23 18:10:08', NULL),
(245, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma empresa com o nomeTV Zimbo', '2023-04-23 18:11:37', '2023-04-23 18:11:37', NULL),
(246, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-04-23 18:11:38', '2023-04-23 18:11:38', NULL),
(247, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-04-23 18:11:58', '2023-04-23 18:11:58', NULL),
(248, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-04-23 18:13:18', '2023-04-23 18:13:18', NULL),
(249, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-04-23 18:14:31', '2023-04-23 18:14:31', NULL),
(250, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Aprovou solicitação da empresa com o id 2', '2023-04-23 18:14:35', '2023-04-23 18:14:35', NULL),
(251, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-04-23 18:14:36', '2023-04-23 18:14:36', NULL),
(252, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma vaga com o nome  Técnico de Informática', '2023-04-23 18:17:37', '2023-04-23 18:17:37', NULL),
(253, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-04-23 18:17:38', '2023-04-23 18:17:38', NULL),
(254, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-04-23 18:18:31', '2023-04-23 18:18:31', NULL),
(255, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36 Edg/111.0.1661.41', 'Terminou a Sessão', '2023-04-23 18:24:20', '2023-04-23 18:24:20', NULL),
(256, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-23 18:24:49', '2023-04-23 18:24:49', NULL),
(257, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', 'Iniciou a Sessão', '2023-04-23 18:25:34', '2023-04-23 18:25:34', NULL),
(258, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', 'Entrou em editar Perfil', '2023-04-23 18:25:56', '2023-04-23 18:25:56', NULL),
(259, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', 'Entrou em editar Perfil', '2023-04-23 18:28:58', '2023-04-23 18:28:58', NULL),
(260, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', 'Entrou em editar Perfil', '2023-04-23 18:29:25', '2023-04-23 18:29:25', NULL),
(261, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', 'Editou  Perfil', '2023-04-23 18:30:12', '2023-04-23 18:30:12', NULL),
(262, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', 'Entrou em editar Perfil', '2023-04-23 18:30:13', '2023-04-23 18:30:13', NULL),
(263, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-04-23 18:30:50', '2023-04-23 18:30:50', NULL),
(264, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', 'Entrou em datalhes da   procurar emprego com o id1', '2023-04-23 18:31:14', '2023-04-23 18:31:14', NULL),
(265, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', 'Se inscreveu em uma vaga com o id1', '2023-04-23 18:31:40', '2023-04-23 18:31:40', NULL),
(266, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', 'Entrou  em Minhas inscrições de vagas', '2023-04-23 18:31:40', '2023-04-23 18:31:40', NULL),
(267, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', 'Vizualizou o perfil com o identificador8', '2023-04-23 18:32:08', '2023-04-23 18:32:08', NULL),
(268, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-04-23 18:33:03', '2023-04-23 18:33:03', NULL),
(269, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id1', '2023-04-23 18:33:05', '2023-04-23 18:33:05', NULL),
(270, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas de Vagas Publicadas', '2023-04-23 19:49:12', '2023-04-23 19:49:12', NULL),
(271, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Apagou uma vaga com o identificador1', '2023-04-23 19:49:24', '2023-04-23 19:49:24', NULL),
(272, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas de Vagas Publicadas', '2023-04-23 19:49:24', '2023-04-23 19:49:24', NULL),
(273, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas de Vagas Publicadas', '2023-04-23 19:49:47', '2023-04-23 19:49:47', NULL),
(274, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-04-23 20:46:03', '2023-04-23 20:46:03', NULL),
(275, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Procurar Vagas', '2023-04-23 20:46:11', '2023-04-23 20:46:11', NULL),
(276, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-04-23 20:46:17', '2023-04-23 20:46:17', NULL),
(277, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas inscrições de vagas', '2023-04-23 20:46:20', '2023-04-23 20:46:20', NULL),
(278, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-04-23 20:46:22', '2023-04-23 20:46:22', NULL),
(279, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas inscrições de vagas', '2023-04-23 20:46:26', '2023-04-23 20:46:26', NULL),
(280, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 3', '2023-04-23 20:46:37', '2023-04-23 20:46:37', NULL),
(281, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-23 20:47:08', '2023-04-23 20:47:08', NULL),
(282, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-04-23 20:47:14', '2023-04-23 20:47:14', NULL),
(283, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em  cadastrar Minhas empresas cadastradas', '2023-04-23 20:47:23', '2023-04-23 20:47:23', NULL),
(284, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-04-23 20:47:39', '2023-04-23 20:47:39', NULL),
(285, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-04-23 20:47:48', '2023-04-23 20:47:48', NULL),
(286, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 13', '2023-04-23 20:47:57', '2023-04-23 20:47:57', NULL),
(287, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-23 20:48:16', '2023-04-23 20:48:16', NULL),
(288, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-23 20:48:21', '2023-04-23 20:48:21', NULL),
(289, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-04-23 20:48:24', '2023-04-23 20:48:24', NULL),
(290, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas de Vagas Publicadas', '2023-04-23 20:48:31', '2023-04-23 20:48:31', NULL),
(291, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-04-23 20:49:13', '2023-04-23 20:49:13', NULL),
(292, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas de Vagas Publicadas', '2023-04-23 20:50:38', '2023-04-23 20:50:38', NULL),
(293, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas de Vagas Publicadas', '2023-04-23 20:53:48', '2023-04-23 20:53:48', NULL),
(294, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas de Vagas Publicadas', '2023-04-23 20:55:32', '2023-04-23 20:55:32', NULL),
(295, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas de Vagas Publicadas', '2023-04-23 20:57:07', '2023-04-23 20:57:07', NULL),
(296, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-04-23 20:57:12', '2023-04-23 20:57:12', NULL),
(297, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id1', '2023-04-23 20:57:29', '2023-04-23 20:57:29', NULL),
(298, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-04-23 20:59:07', '2023-04-23 20:59:07', NULL),
(299, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-04-23 21:00:57', '2023-04-23 21:00:57', NULL),
(300, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-04-23 21:01:18', '2023-04-23 21:01:18', NULL),
(301, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-04-23 21:01:22', '2023-04-23 21:01:22', NULL),
(302, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-04-23 21:01:31', '2023-04-23 21:01:31', NULL),
(303, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-04-23 21:02:08', '2023-04-23 21:02:08', NULL),
(304, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-04-23 21:02:17', '2023-04-23 21:02:17', NULL),
(305, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-04-23 21:02:20', '2023-04-23 21:02:20', NULL),
(306, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas de Vagas Publicadas', '2023-04-23 21:02:24', '2023-04-23 21:02:24', NULL),
(307, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-04-23 21:02:33', '2023-04-23 21:02:33', NULL),
(308, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-23 21:02:44', '2023-04-23 21:02:44', NULL),
(309, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-04-23 21:04:22', '2023-04-23 21:04:22', NULL),
(310, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id1', '2023-04-23 21:04:25', '2023-04-23 21:04:25', NULL),
(311, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-04-23 21:04:33', '2023-04-23 21:04:33', NULL),
(312, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-04-23 21:11:09', '2023-04-23 21:11:09', NULL),
(313, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 13', '2023-04-23 21:11:31', '2023-04-23 21:11:31', NULL),
(314, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 3', '2023-04-23 21:11:45', '2023-04-23 21:11:45', NULL),
(315, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em editar um Utilizador com o identificador3', '2023-04-23 21:11:52', '2023-04-23 21:11:52', NULL),
(316, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em  cadastrar Minhas empresas cadastradas', '2023-04-23 21:42:26', '2023-04-23 21:42:26', NULL),
(317, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-04-23 21:42:33', '2023-04-23 21:42:33', NULL),
(318, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-04-23 21:42:44', '2023-04-23 21:42:44', NULL),
(319, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-04-23 21:43:01', '2023-04-23 21:43:01', NULL),
(320, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas inscrições de vagas', '2023-04-23 21:43:46', '2023-04-23 21:43:46', NULL),
(321, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-24 07:32:23', '2023-04-24 07:32:23', NULL),
(322, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-04-24 07:32:33', '2023-04-24 07:32:33', NULL),
(323, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em  cadastrar Minhas empresas cadastradas', '2023-04-24 07:32:35', '2023-04-24 07:32:35', NULL),
(324, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma empresa com o nomeAfricell', '2023-04-24 07:33:31', '2023-04-24 07:33:31', NULL),
(325, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-04-24 07:33:32', '2023-04-24 07:33:32', NULL),
(326, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-24 07:33:55', '2023-04-24 07:33:55', NULL),
(327, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-04-24 07:34:01', '2023-04-24 07:34:01', NULL),
(328, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Aprovou solicitação da empresa com o id 3', '2023-04-24 07:34:04', '2023-04-24 07:34:04', NULL),
(329, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-04-24 07:34:04', '2023-04-24 07:34:04', NULL),
(330, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-04-24 07:34:23', '2023-04-24 07:34:23', NULL),
(331, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-04-24 07:35:07', '2023-04-24 07:35:07', NULL),
(332, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma vaga com o nome  Técnico de Redes de Computadores', '2023-04-24 07:36:30', '2023-04-24 07:36:30', NULL),
(333, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-04-24 07:36:31', '2023-04-24 07:36:31', NULL),
(334, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-04-24 07:38:46', '2023-04-24 07:38:46', NULL),
(335, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-04-24 07:38:51', '2023-04-24 07:38:51', NULL),
(336, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-24 07:39:12', '2023-04-24 07:39:12', NULL),
(337, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-04-24 07:39:44', '2023-04-24 07:39:44', NULL),
(338, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-24 07:39:57', '2023-04-24 07:39:57', NULL),
(339, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador8', '2023-04-24 07:40:01', '2023-04-24 07:40:01', NULL),
(340, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-04-24 07:40:12', '2023-04-24 07:40:12', NULL),
(341, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-24 07:40:22', '2023-04-24 07:40:22', NULL),
(342, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas inscrições de vagas', '2023-04-24 07:40:48', '2023-04-24 07:40:48', NULL),
(343, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Aprovou candidato inscrito na vaga com identificador3', '2023-04-24 07:41:14', '2023-04-24 07:41:14', NULL),
(344, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-04-24 07:41:14', '2023-04-24 07:41:14', NULL),
(345, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Colocou o status pendente candidato inscrito na vaga com identificador3', '2023-04-24 07:41:29', '2023-04-24 07:41:29', NULL),
(346, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-04-24 07:41:30', '2023-04-24 07:41:30', NULL),
(347, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-24 08:44:51', '2023-04-24 08:44:51', NULL),
(348, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-24 08:45:02', '2023-04-24 08:45:02', NULL),
(349, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeInglês (Básico)', '2023-04-24 08:45:24', '2023-04-24 08:45:24', NULL),
(350, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-24 08:45:25', '2023-04-24 08:45:25', NULL),
(351, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-24 08:45:29', '2023-04-24 08:45:29', NULL),
(352, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeInglês (Fluente)', '2023-04-24 08:45:34', '2023-04-24 08:45:34', NULL),
(353, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-24 08:45:35', '2023-04-24 08:45:35', NULL),
(354, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-24 08:45:38', '2023-04-24 08:45:38', NULL),
(355, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nome+1 de experiência', '2023-04-24 08:45:54', '2023-04-24 08:45:54', NULL),
(356, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-24 08:45:55', '2023-04-24 08:45:55', NULL),
(357, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-24 08:45:59', '2023-04-24 08:45:59', NULL),
(358, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nome+5 de experiência', '2023-04-24 08:46:16', '2023-04-24 08:46:16', NULL),
(359, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-24 08:46:17', '2023-04-24 08:46:17', NULL),
(360, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em editar  categorias', '2023-04-24 08:46:53', '2023-04-24 08:46:53', NULL),
(361, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'editou uma categoria com o nome1-5 de experiência', '2023-04-24 08:47:11', '2023-04-24 08:47:11', NULL),
(362, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-24 08:47:12', '2023-04-24 08:47:12', NULL),
(363, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-24 08:47:32', '2023-04-24 08:47:32', NULL),
(364, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-24 08:47:52', '2023-04-24 08:47:52', NULL),
(365, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeLicenciado', '2023-04-24 08:48:42', '2023-04-24 08:48:42', NULL),
(366, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-24 08:48:43', '2023-04-24 08:48:43', NULL),
(367, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-24 08:48:46', '2023-04-24 08:48:46', NULL),
(368, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeEnsino Médio Concluído', '2023-04-24 08:49:16', '2023-04-24 08:49:16', NULL),
(369, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-24 08:49:17', '2023-04-24 08:49:17', NULL),
(370, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-24 08:50:06', '2023-04-24 08:50:06', NULL),
(371, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeSem experiência', '2023-04-24 08:50:21', '2023-04-24 08:50:21', NULL),
(372, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-24 08:50:22', '2023-04-24 08:50:22', NULL),
(373, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-24 08:50:53', '2023-04-24 08:50:53', NULL),
(374, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-24 08:51:31', '2023-04-24 08:51:31', NULL),
(375, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-24 08:51:57', '2023-04-24 08:51:57', NULL),
(376, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 1', '2023-04-24 09:48:07', '2023-04-24 09:48:07', NULL),
(377, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 1', '2023-04-24 09:50:52', '2023-04-24 09:50:52', NULL),
(378, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 1', '2023-04-24 09:51:37', '2023-04-24 09:51:37', NULL),
(379, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 1', '2023-04-24 09:52:02', '2023-04-24 09:52:02', NULL),
(380, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-24 17:28:18', '2023-04-24 17:28:18', NULL),
(381, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 6', '2023-04-24 17:28:22', '2023-04-24 17:28:22', NULL),
(382, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-24 17:30:32', '2023-04-24 17:30:32', NULL),
(383, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 3', '2023-04-24 17:30:35', '2023-04-24 17:30:35', NULL),
(384, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-04-24 17:35:20', '2023-04-24 17:35:20', NULL),
(385, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em  cadastrar Minhas empresas cadastradas', '2023-04-24 17:35:24', '2023-04-24 17:35:24', NULL),
(386, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma empresa com o nomeInstituto de Telecomunicações', '2023-04-24 17:36:33', '2023-04-24 17:36:33', NULL),
(387, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-04-24 17:36:34', '2023-04-24 17:36:34', NULL),
(388, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 3', '2023-04-24 17:37:08', '2023-04-24 17:37:08', NULL),
(389, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 3', '2023-04-24 17:37:41', '2023-04-24 17:37:41', NULL),
(390, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 3', '2023-04-24 17:38:02', '2023-04-24 17:38:02', NULL),
(391, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 3', '2023-04-24 17:38:09', '2023-04-24 17:38:09', NULL),
(392, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 3', '2023-04-24 17:38:24', '2023-04-24 17:38:24', NULL),
(393, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 3', '2023-04-24 17:53:46', '2023-04-24 17:53:46', NULL),
(394, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 3', '2023-04-24 17:54:17', '2023-04-24 17:54:17', NULL);
INSERT INTO `logs` (`id`, `level`, `REMOTE_ADDR`, `PATH_INFO`, `USER_NAME`, `USER_ID`, `HTTP_USER_AGENT`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(395, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 3', '2023-04-24 17:54:30', '2023-04-24 17:54:30', NULL),
(396, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-04-24 17:55:00', '2023-04-24 17:55:00', NULL),
(397, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 3', '2023-04-24 17:55:04', '2023-04-24 17:55:04', NULL),
(398, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 3', '2023-04-24 17:55:31', '2023-04-24 17:55:31', NULL),
(399, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 3', '2023-04-24 17:55:46', '2023-04-24 17:55:46', NULL),
(400, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 3', '2023-04-24 17:56:07', '2023-04-24 17:56:07', NULL),
(401, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 3', '2023-04-24 17:57:38', '2023-04-24 17:57:38', NULL),
(402, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-24 18:02:45', '2023-04-24 18:02:45', NULL),
(403, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-04-24 18:03:32', '2023-04-24 18:03:32', NULL),
(404, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Aprovou solicitação da empresa com o id 4', '2023-04-24 18:03:53', '2023-04-24 18:03:53', NULL),
(405, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-04-24 18:03:54', '2023-04-24 18:03:54', NULL),
(406, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-04-24 18:05:12', '2023-04-24 18:05:12', NULL),
(407, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-04-24 18:05:21', '2023-04-24 18:05:21', NULL),
(408, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-04-24 19:03:16', '2023-04-24 19:03:16', NULL),
(409, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 6', '2023-04-24 20:17:08', '2023-04-24 20:17:08', NULL),
(410, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-24 20:18:05', '2023-04-24 20:18:05', NULL),
(411, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 3', '2023-04-24 20:18:11', '2023-04-24 20:18:11', NULL),
(412, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 3', '2023-04-24 20:19:16', '2023-04-24 20:19:16', NULL),
(413, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 3', '2023-04-24 20:19:36', '2023-04-24 20:19:36', NULL),
(414, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 3', '2023-04-24 20:19:55', '2023-04-24 20:19:55', NULL),
(415, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-04-24 20:47:01', '2023-04-24 20:47:01', NULL),
(416, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-24 21:08:16', '2023-04-24 21:08:16', NULL),
(417, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 1', '2023-04-24 21:08:22', '2023-04-24 21:08:22', NULL),
(418, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-24 21:08:31', '2023-04-24 21:08:31', NULL),
(419, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-24 21:09:02', '2023-04-24 21:09:02', NULL),
(420, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 1', '2023-04-24 21:09:54', '2023-04-24 21:09:54', NULL),
(421, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 1', '2023-04-24 21:10:28', '2023-04-24 21:10:28', NULL),
(422, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-04-24 21:13:09', '2023-04-24 21:13:09', NULL),
(423, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas de Vagas Publicadas', '2023-04-24 21:14:57', '2023-04-24 21:14:57', NULL),
(424, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-24 21:15:15', '2023-04-24 21:15:15', NULL),
(425, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-04-24 21:25:31', '2023-04-24 21:25:31', NULL),
(426, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-04-24 21:25:36', '2023-04-24 21:25:36', NULL),
(427, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-04-24 21:27:28', '2023-04-24 21:27:28', NULL),
(428, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-04-24 21:30:00', '2023-04-24 21:30:00', NULL),
(429, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-04-24 21:31:39', '2023-04-24 21:31:39', NULL),
(430, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-24 21:31:59', '2023-04-24 21:31:59', NULL),
(431, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas inscrições de vagas', '2023-04-24 21:33:16', '2023-04-24 21:33:16', NULL),
(432, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-04-24 21:33:48', '2023-04-24 21:33:48', NULL),
(433, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-04-24 21:34:50', '2023-04-24 21:34:50', NULL),
(434, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-24 21:38:24', '2023-04-24 21:38:24', NULL),
(435, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-04-24 21:38:56', '2023-04-24 21:38:56', NULL),
(436, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas de Vagas Publicadas', '2023-04-24 21:39:03', '2023-04-24 21:39:03', NULL),
(437, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-04-24 21:39:16', '2023-04-24 21:39:16', NULL),
(438, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-04-24 21:40:26', '2023-04-24 21:40:26', NULL),
(439, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Procurar Vagas', '2023-04-24 21:40:38', '2023-04-24 21:40:38', NULL),
(440, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas inscrições de vagas', '2023-04-24 21:40:48', '2023-04-24 21:40:48', NULL),
(441, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-04-24 21:41:18', '2023-04-24 21:41:18', NULL),
(442, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-04-24 21:41:22', '2023-04-24 21:41:22', NULL),
(443, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-04-24 21:41:32', '2023-04-24 21:41:32', NULL),
(444, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-04-24 21:48:35', '2023-04-24 21:48:35', NULL),
(445, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-04-24 21:49:55', '2023-04-24 21:49:55', NULL),
(446, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-24 21:50:35', '2023-04-24 21:50:35', NULL),
(447, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-04-24 21:50:39', '2023-04-24 21:50:39', NULL),
(448, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 1', '2023-04-24 21:51:31', '2023-04-24 21:51:31', NULL),
(449, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas de Vagas Publicadas', '2023-04-24 21:52:15', '2023-04-24 21:52:15', NULL),
(450, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-24 21:52:24', '2023-04-24 21:52:24', NULL),
(451, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Procurar Vagas', '2023-04-24 21:52:55', '2023-04-24 21:52:55', NULL),
(452, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em  cadastrar Minhas empresas cadastradas', '2023-04-24 21:52:56', '2023-04-24 21:52:56', NULL),
(453, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-04-24 21:53:56', '2023-04-24 21:53:56', NULL),
(454, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Procurar Vagas', '2023-04-24 21:55:26', '2023-04-24 21:55:26', NULL),
(455, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-04-24 21:55:54', '2023-04-24 21:55:54', NULL),
(456, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-04-24 21:56:28', '2023-04-24 21:56:28', NULL),
(457, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em editar um Utilizador com o identificador8', '2023-04-24 21:56:35', '2023-04-24 21:56:35', NULL),
(458, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-04-24 21:56:52', '2023-04-24 21:56:52', NULL),
(459, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas inscrições de vagas', '2023-04-24 21:57:32', '2023-04-24 21:57:32', NULL),
(460, 'info', '127.0.0.1', NULL, 'Nilton Tomé', '8', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador8', '2023-04-24 21:57:59', '2023-04-24 21:57:59', NULL),
(461, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-24 22:11:01', '2023-04-24 22:11:01', NULL),
(462, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-24 22:12:44', '2023-04-24 22:12:44', NULL),
(463, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-04-24 22:21:17', '2023-04-24 22:21:17', NULL),
(464, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas de Vagas Publicadas', '2023-04-24 22:21:57', '2023-04-24 22:21:57', NULL),
(465, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 1', '2023-04-24 22:22:00', '2023-04-24 22:22:00', NULL),
(466, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 1', '2023-04-24 22:22:21', '2023-04-24 22:22:21', NULL),
(467, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-24 22:33:52', '2023-04-24 22:33:52', NULL),
(468, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-24 22:34:27', '2023-04-24 22:34:27', NULL),
(469, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-24 22:34:54', '2023-04-24 22:34:54', NULL),
(470, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-24 22:35:10', '2023-04-24 22:35:10', NULL),
(471, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-24 22:36:34', '2023-04-24 22:36:34', NULL),
(472, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 6', '2023-04-24 22:39:53', '2023-04-24 22:39:53', NULL),
(473, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-24 22:39:56', '2023-04-24 22:39:56', NULL),
(474, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-24 22:42:31', '2023-04-24 22:42:31', NULL),
(475, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-24 22:43:02', '2023-04-24 22:43:02', NULL),
(476, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-24 22:43:17', '2023-04-24 22:43:17', NULL),
(477, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-24 22:43:55', '2023-04-24 22:43:55', NULL),
(478, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 6', '2023-04-24 22:45:05', '2023-04-24 22:45:05', NULL),
(479, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-24 22:45:20', '2023-04-24 22:45:20', NULL),
(480, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 6', '2023-04-24 22:45:40', '2023-04-24 22:45:40', NULL),
(481, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-24 22:45:45', '2023-04-24 22:45:45', NULL),
(482, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-24 22:47:21', '2023-04-24 22:47:21', NULL),
(483, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-24 22:48:41', '2023-04-24 22:48:41', NULL),
(484, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-24 22:49:49', '2023-04-24 22:49:49', NULL),
(485, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-24 22:51:50', '2023-04-24 22:51:50', NULL),
(486, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-24 22:54:18', '2023-04-24 22:54:18', NULL),
(487, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-24 22:54:55', '2023-04-24 22:54:55', NULL),
(488, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-24 22:55:09', '2023-04-24 22:55:09', NULL),
(489, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-24 22:55:36', '2023-04-24 22:55:36', NULL),
(490, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-24 22:57:05', '2023-04-24 22:57:05', NULL),
(491, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-24 22:57:19', '2023-04-24 22:57:19', NULL),
(492, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-24 22:57:53', '2023-04-24 22:57:53', NULL),
(493, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-24 23:00:19', '2023-04-24 23:00:19', NULL),
(494, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 1', '2023-04-24 23:01:29', '2023-04-24 23:01:29', NULL),
(495, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 1', '2023-04-24 23:01:49', '2023-04-24 23:01:49', NULL),
(496, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 1', '2023-04-24 23:01:50', '2023-04-24 23:01:50', NULL),
(497, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 1', '2023-04-24 23:02:21', '2023-04-24 23:02:21', NULL),
(498, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-04-24 23:06:38', '2023-04-24 23:06:38', NULL),
(499, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 1', '2023-04-24 23:06:53', '2023-04-24 23:06:53', NULL),
(500, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-04-24 23:06:58', '2023-04-24 23:06:58', NULL),
(501, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-04-24 23:12:42', '2023-04-24 23:12:42', NULL),
(502, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-04-24 23:13:02', '2023-04-24 23:13:02', NULL),
(503, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-04-24 23:15:09', '2023-04-24 23:15:09', NULL),
(504, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-04-24 23:17:38', '2023-04-24 23:17:38', NULL),
(505, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-04-24 23:19:24', '2023-04-24 23:19:24', NULL),
(506, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-24 23:23:48', '2023-04-24 23:23:48', NULL),
(507, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-04-24 23:24:00', '2023-04-24 23:24:00', NULL),
(508, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-25 00:11:23', '2023-04-25 00:11:23', NULL),
(509, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-04-25 00:11:27', '2023-04-25 00:11:27', NULL),
(510, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-25 07:31:18', '2023-04-25 07:31:18', NULL),
(511, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-04-25 07:32:20', '2023-04-25 07:32:20', NULL),
(512, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas de Vagas Publicadas', '2023-04-25 07:33:39', '2023-04-25 07:33:39', NULL),
(513, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-04-25 07:33:46', '2023-04-25 07:33:46', NULL),
(514, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id1', '2023-04-25 07:34:01', '2023-04-25 07:34:01', NULL),
(515, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-25 07:34:16', '2023-04-25 07:34:16', NULL),
(516, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-25 07:34:25', '2023-04-25 07:34:25', NULL),
(517, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-25 07:34:50', '2023-04-25 07:34:50', NULL),
(518, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-25 07:36:02', '2023-04-25 07:36:02', NULL),
(519, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-25 07:36:10', '2023-04-25 07:36:10', NULL),
(520, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em  cadastrar Minhas empresas cadastradas', '2023-04-25 07:36:38', '2023-04-25 07:36:38', NULL),
(521, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-04-25 07:37:30', '2023-04-25 07:37:30', NULL),
(522, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-04-25 07:37:37', '2023-04-25 07:37:37', NULL),
(523, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-04-25 07:37:38', '2023-04-25 07:37:38', NULL),
(524, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-25 07:38:36', '2023-04-25 07:38:36', NULL),
(525, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-04-25 07:38:51', '2023-04-25 07:38:51', NULL),
(526, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Procurar Vagas', '2023-04-25 07:38:54', '2023-04-25 07:38:54', NULL),
(527, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-04-25 07:39:55', '2023-04-25 07:39:55', NULL),
(528, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-04-25 07:40:10', '2023-04-25 07:40:10', NULL),
(529, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-25 07:40:20', '2023-04-25 07:40:20', NULL),
(530, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-04-25 07:40:27', '2023-04-25 07:40:27', NULL),
(531, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-25 11:17:24', '2023-04-25 11:17:24', NULL),
(532, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 1', '2023-04-25 11:17:49', '2023-04-25 11:17:49', NULL),
(533, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-25 11:18:03', '2023-04-25 11:18:03', NULL),
(534, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-04-25 11:18:25', '2023-04-25 11:18:25', NULL),
(535, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-25 11:18:34', '2023-04-25 11:18:34', NULL),
(536, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-04-25 11:19:04', '2023-04-25 11:19:04', NULL),
(537, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-25 11:19:19', '2023-04-25 11:19:19', NULL),
(538, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-25 11:19:51', '2023-04-25 11:19:51', NULL),
(539, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-04-25 11:20:09', '2023-04-25 11:20:09', NULL),
(540, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-04-25 11:20:37', '2023-04-25 11:20:37', NULL),
(541, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-04-25 11:20:48', '2023-04-25 11:20:48', NULL),
(542, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-04-25 11:21:53', '2023-04-25 11:21:53', NULL),
(543, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas inscrições de vagas', '2023-04-25 11:22:07', '2023-04-25 11:22:07', NULL),
(544, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Procurar Vagas', '2023-04-25 11:22:27', '2023-04-25 11:22:27', NULL),
(545, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-25 11:31:38', '2023-04-25 11:31:38', NULL),
(546, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-04-25 11:46:45', '2023-04-25 11:46:45', NULL),
(547, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Procurar Vagas', '2023-04-25 11:48:10', '2023-04-25 11:48:10', NULL),
(548, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id1', '2023-04-25 11:51:00', '2023-04-25 11:51:00', NULL),
(549, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-04-25 11:51:04', '2023-04-25 11:51:04', NULL),
(550, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-04-30 16:54:06', '2023-04-30 16:54:06', NULL),
(551, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-01 21:46:33', '2023-05-01 21:46:33', NULL),
(552, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 21:46:44', '2023-05-01 21:46:44', NULL),
(553, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 21:51:11', '2023-05-01 21:51:11', NULL),
(554, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 21:51:49', '2023-05-01 21:51:49', NULL),
(555, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 21:53:18', '2023-05-01 21:53:18', NULL),
(556, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 21:54:04', '2023-05-01 21:54:04', NULL),
(557, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 21:55:42', '2023-05-01 21:55:42', NULL),
(558, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 21:57:12', '2023-05-01 21:57:12', NULL),
(559, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 21:58:01', '2023-05-01 21:58:01', NULL),
(560, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 21:58:28', '2023-05-01 21:58:28', NULL),
(561, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 21:59:30', '2023-05-01 21:59:30', NULL),
(562, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 21:59:39', '2023-05-01 21:59:39', NULL),
(563, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:00:11', '2023-05-01 22:00:11', NULL),
(564, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:00:57', '2023-05-01 22:00:57', NULL),
(565, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:01:17', '2023-05-01 22:01:17', NULL),
(566, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:01:46', '2023-05-01 22:01:46', NULL),
(567, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:01:58', '2023-05-01 22:01:58', NULL),
(568, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:02:48', '2023-05-01 22:02:48', NULL),
(569, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:03:43', '2023-05-01 22:03:43', NULL),
(570, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:04:22', '2023-05-01 22:04:22', NULL),
(571, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:04:53', '2023-05-01 22:04:53', NULL),
(572, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:05:30', '2023-05-01 22:05:30', NULL),
(573, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:05:51', '2023-05-01 22:05:51', NULL),
(574, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:06:12', '2023-05-01 22:06:12', NULL),
(575, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:06:24', '2023-05-01 22:06:24', NULL),
(576, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:07:02', '2023-05-01 22:07:02', NULL),
(577, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:08:00', '2023-05-01 22:08:00', NULL),
(578, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:08:08', '2023-05-01 22:08:08', NULL),
(579, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:09:35', '2023-05-01 22:09:35', NULL),
(580, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:10:13', '2023-05-01 22:10:13', NULL),
(581, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:10:38', '2023-05-01 22:10:38', NULL),
(582, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:12:17', '2023-05-01 22:12:17', NULL),
(583, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:14:17', '2023-05-01 22:14:17', NULL),
(584, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:14:46', '2023-05-01 22:14:46', NULL),
(585, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:14:56', '2023-05-01 22:14:56', NULL),
(586, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:17:59', '2023-05-01 22:17:59', NULL),
(587, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:18:04', '2023-05-01 22:18:04', NULL),
(588, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:18:40', '2023-05-01 22:18:40', NULL),
(589, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:18:52', '2023-05-01 22:18:52', NULL),
(590, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:18:56', '2023-05-01 22:18:56', NULL),
(591, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:19:12', '2023-05-01 22:19:12', NULL),
(592, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:19:39', '2023-05-01 22:19:39', NULL),
(593, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:19:45', '2023-05-01 22:19:45', NULL);
INSERT INTO `logs` (`id`, `level`, `REMOTE_ADDR`, `PATH_INFO`, `USER_NAME`, `USER_ID`, `HTTP_USER_AGENT`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(594, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:20:10', '2023-05-01 22:20:10', NULL),
(595, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:20:16', '2023-05-01 22:20:16', NULL),
(596, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:20:38', '2023-05-01 22:20:38', NULL),
(597, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:20:48', '2023-05-01 22:20:48', NULL),
(598, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:21:01', '2023-05-01 22:21:01', NULL),
(599, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:21:19', '2023-05-01 22:21:19', NULL),
(600, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-01 22:21:32', '2023-05-01 22:21:32', NULL),
(601, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-01 22:21:41', '2023-05-01 22:21:41', NULL),
(602, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:21:44', '2023-05-01 22:21:44', NULL),
(603, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:21:52', '2023-05-01 22:21:52', NULL),
(604, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:22:06', '2023-05-01 22:22:06', NULL),
(605, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-05-01 22:23:42', '2023-05-01 22:23:42', NULL),
(606, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id1', '2023-05-01 22:23:56', '2023-05-01 22:23:56', NULL),
(607, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id1', '2023-05-01 22:26:16', '2023-05-01 22:26:16', NULL),
(608, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-05-01 22:26:25', '2023-05-01 22:26:25', NULL),
(609, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas de Vagas Publicadas', '2023-05-01 22:27:03', '2023-05-01 22:27:03', NULL),
(610, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-01 22:27:48', '2023-05-01 22:27:48', NULL),
(611, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-01 22:28:03', '2023-05-01 22:28:03', NULL),
(612, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-01 22:28:19', '2023-05-01 22:28:19', NULL),
(613, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em  cadastrar Minhas empresas cadastradas', '2023-05-01 22:28:31', '2023-05-01 22:28:31', NULL),
(614, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 6', '2023-05-01 22:30:16', '2023-05-01 22:30:16', NULL),
(615, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-05-01 22:30:36', '2023-05-01 22:30:36', NULL),
(616, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em  cadastrar Minhas empresas cadastradas', '2023-05-01 22:30:44', '2023-05-01 22:30:44', NULL),
(617, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma empresa com o nomeKorretSeg', '2023-05-01 22:32:04', '2023-05-01 22:32:04', NULL),
(618, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-05-01 22:32:05', '2023-05-01 22:32:05', NULL),
(619, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-01 22:32:22', '2023-05-01 22:32:22', NULL),
(620, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-01 22:32:34', '2023-05-01 22:32:34', NULL),
(621, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-05-01 22:32:45', '2023-05-01 22:32:45', NULL),
(622, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-01 22:33:01', '2023-05-01 22:33:01', NULL),
(623, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas de Vagas Publicadas', '2023-05-01 22:33:10', '2023-05-01 22:33:10', NULL),
(624, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-05-01 22:33:21', '2023-05-01 22:33:21', NULL),
(625, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-05-01 22:33:31', '2023-05-01 22:33:31', NULL),
(626, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id1', '2023-05-01 22:33:34', '2023-05-01 22:33:34', NULL),
(627, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-05-01 22:33:43', '2023-05-01 22:33:43', NULL),
(628, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-05-01 22:36:49', '2023-05-01 22:36:49', NULL),
(629, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id1', '2023-05-01 22:37:31', '2023-05-01 22:37:31', NULL),
(630, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-01 22:37:59', '2023-05-01 22:37:59', NULL),
(631, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-05-01 22:38:16', '2023-05-01 22:38:16', NULL),
(632, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id1', '2023-05-01 22:38:19', '2023-05-01 22:38:19', NULL),
(633, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id1', '2023-05-01 22:39:45', '2023-05-01 22:39:45', NULL),
(634, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id1', '2023-05-01 22:39:54', '2023-05-01 22:39:54', NULL),
(635, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id1', '2023-05-01 22:40:11', '2023-05-01 22:40:11', NULL),
(636, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id1', '2023-05-01 22:40:29', '2023-05-01 22:40:29', NULL),
(637, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id1', '2023-05-01 22:40:39', '2023-05-01 22:40:39', NULL),
(638, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id1', '2023-05-01 22:40:54', '2023-05-01 22:40:54', NULL),
(639, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-05-01 22:41:08', '2023-05-01 22:41:08', NULL),
(640, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Aprovou solicitação da empresa com o id 5', '2023-05-01 22:41:12', '2023-05-01 22:41:12', NULL),
(641, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-05-01 22:41:13', '2023-05-01 22:41:13', NULL),
(642, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:42:43', '2023-05-01 22:42:43', NULL),
(643, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-01 22:42:53', '2023-05-01 22:42:53', NULL),
(644, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-01 22:43:03', '2023-05-01 22:43:03', NULL),
(645, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-05-01 22:43:10', '2023-05-01 22:43:10', NULL),
(646, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:43:51', '2023-05-01 22:43:51', NULL),
(647, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:44:01', '2023-05-01 22:44:01', NULL),
(648, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:44:18', '2023-05-01 22:44:18', NULL),
(649, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:44:24', '2023-05-01 22:44:24', NULL),
(650, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-05-01 22:44:58', '2023-05-01 22:44:58', NULL),
(651, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-05-01 22:45:02', '2023-05-01 22:45:02', NULL),
(652, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-05-01 22:45:06', '2023-05-01 22:45:06', NULL),
(653, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-05-01 22:46:20', '2023-05-01 22:46:20', NULL),
(654, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-05-01 22:46:24', '2023-05-01 22:46:24', NULL),
(655, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:46:37', '2023-05-01 22:46:37', NULL),
(656, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-01 22:47:11', '2023-05-01 22:47:11', NULL),
(657, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-01 22:48:36', '2023-05-01 22:48:36', NULL),
(658, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-05-01 22:49:14', '2023-05-01 22:49:14', NULL),
(659, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-01 22:50:04', '2023-05-01 22:50:04', NULL),
(660, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-01 22:50:24', '2023-05-01 22:50:24', NULL),
(661, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-01 22:50:31', '2023-05-01 22:50:31', NULL),
(662, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-01 22:54:58', '2023-05-01 22:54:58', NULL),
(663, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-01 22:55:11', '2023-05-01 22:55:11', NULL),
(664, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas inscrições de vagas', '2023-05-01 22:55:19', '2023-05-01 22:55:19', NULL),
(665, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Procurar Vagas', '2023-05-01 22:55:26', '2023-05-01 22:55:26', NULL),
(666, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-01 22:55:29', '2023-05-01 22:55:29', NULL),
(667, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-01 22:55:30', '2023-05-01 22:55:30', NULL),
(668, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id1', '2023-05-01 22:55:36', '2023-05-01 22:55:36', NULL),
(669, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id1', '2023-05-01 22:55:49', '2023-05-01 22:55:49', NULL),
(670, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 22:55:55', '2023-05-01 22:55:55', NULL),
(671, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 22:56:08', '2023-05-01 22:56:08', NULL),
(672, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 22:58:20', '2023-05-01 22:58:20', NULL),
(673, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:04:49', '2023-05-01 23:04:49', NULL),
(674, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:05:08', '2023-05-01 23:05:08', NULL),
(675, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:05:22', '2023-05-01 23:05:22', NULL),
(676, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:05:37', '2023-05-01 23:05:37', NULL),
(677, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:05:47', '2023-05-01 23:05:47', NULL),
(678, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:06:11', '2023-05-01 23:06:11', NULL),
(679, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:06:26', '2023-05-01 23:06:26', NULL),
(680, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:06:58', '2023-05-01 23:06:58', NULL),
(681, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:08:47', '2023-05-01 23:08:47', NULL),
(682, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:09:08', '2023-05-01 23:09:08', NULL),
(683, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:10:32', '2023-05-01 23:10:32', NULL),
(684, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:11:58', '2023-05-01 23:11:58', NULL),
(685, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:12:17', '2023-05-01 23:12:17', NULL),
(686, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:13:17', '2023-05-01 23:13:17', NULL),
(687, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:14:36', '2023-05-01 23:14:36', NULL),
(688, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:15:35', '2023-05-01 23:15:35', NULL),
(689, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:15:44', '2023-05-01 23:15:44', NULL),
(690, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:15:50', '2023-05-01 23:15:50', NULL),
(691, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:15:56', '2023-05-01 23:15:56', NULL),
(692, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:16:05', '2023-05-01 23:16:05', NULL),
(693, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:17:08', '2023-05-01 23:17:08', NULL),
(694, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:17:45', '2023-05-01 23:17:45', NULL),
(695, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:18:02', '2023-05-01 23:18:02', NULL),
(696, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:18:26', '2023-05-01 23:18:26', NULL),
(697, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:18:53', '2023-05-01 23:18:53', NULL),
(698, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:19:27', '2023-05-01 23:19:27', NULL),
(699, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:19:41', '2023-05-01 23:19:41', NULL),
(700, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:22:08', '2023-05-01 23:22:08', NULL),
(701, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:24:29', '2023-05-01 23:24:29', NULL),
(702, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:25:22', '2023-05-01 23:25:22', NULL),
(703, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:25:44', '2023-05-01 23:25:44', NULL),
(704, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:26:12', '2023-05-01 23:26:12', NULL),
(705, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:27:36', '2023-05-01 23:27:36', NULL),
(706, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:27:49', '2023-05-01 23:27:49', NULL),
(707, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:27:56', '2023-05-01 23:27:56', NULL),
(708, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:28:08', '2023-05-01 23:28:08', NULL),
(709, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:28:16', '2023-05-01 23:28:16', NULL),
(710, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:28:33', '2023-05-01 23:28:33', NULL),
(711, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:28:43', '2023-05-01 23:28:43', NULL),
(712, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:28:53', '2023-05-01 23:28:53', NULL),
(713, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:29:16', '2023-05-01 23:29:16', NULL),
(714, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-01 23:31:01', '2023-05-01 23:31:01', NULL),
(715, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Se inscreveu em uma vaga com o id2', '2023-05-01 23:31:07', '2023-05-01 23:31:07', NULL),
(716, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas inscrições de vagas', '2023-05-01 23:31:07', '2023-05-01 23:31:07', NULL),
(717, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas inscrições de vagas', '2023-05-01 23:32:14', '2023-05-01 23:32:14', NULL),
(718, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Procurar Vagas', '2023-05-01 23:32:22', '2023-05-01 23:32:22', NULL),
(719, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas inscrições de vagas', '2023-05-01 23:32:30', '2023-05-01 23:32:30', NULL),
(720, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-01 23:32:34', '2023-05-01 23:32:34', NULL),
(721, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-01 23:32:54', '2023-05-01 23:32:54', NULL),
(722, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-05-01 23:33:01', '2023-05-01 23:33:01', NULL),
(723, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-05-01 23:33:11', '2023-05-01 23:33:11', NULL),
(724, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-05-01 23:33:14', '2023-05-01 23:33:14', NULL),
(725, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-05-01 23:33:19', '2023-05-01 23:33:19', NULL),
(726, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-05-01 23:33:29', '2023-05-01 23:33:29', NULL),
(727, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-05-01 23:33:42', '2023-05-01 23:33:42', NULL),
(728, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-05-01 23:33:48', '2023-05-01 23:33:48', NULL),
(729, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-05-01 23:34:19', '2023-05-01 23:34:19', NULL),
(730, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-05-01 23:34:26', '2023-05-01 23:34:26', NULL),
(731, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-01 23:50:51', '2023-05-01 23:50:51', NULL),
(732, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-01 23:51:00', '2023-05-01 23:51:00', NULL),
(733, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-01 23:52:27', '2023-05-01 23:52:27', NULL),
(734, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-01 23:52:39', '2023-05-01 23:52:39', NULL),
(735, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-01 23:57:31', '2023-05-01 23:57:31', NULL),
(736, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em  cadastrar Minhas empresas cadastradas', '2023-05-01 23:57:37', '2023-05-01 23:57:37', NULL),
(737, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-05-01 23:57:42', '2023-05-01 23:57:42', NULL),
(738, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em  cadastrar Minhas empresas cadastradas', '2023-05-01 23:57:44', '2023-05-01 23:57:44', NULL),
(739, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma empresa com o nomeAngola Telecom', '2023-05-01 23:58:53', '2023-05-01 23:58:53', NULL),
(740, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-05-01 23:58:54', '2023-05-01 23:58:54', NULL),
(741, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-05-01 23:59:00', '2023-05-01 23:59:00', NULL),
(742, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Aprovou solicitação da empresa com o id 6', '2023-05-01 23:59:07', '2023-05-01 23:59:07', NULL),
(743, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-05-01 23:59:07', '2023-05-01 23:59:07', NULL),
(744, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-05-02 00:20:36', '2023-05-02 00:20:36', NULL),
(745, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-02 00:20:41', '2023-05-02 00:20:41', NULL),
(746, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-02 00:22:40', '2023-05-02 00:22:40', NULL),
(747, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma vaga com o nome  Administrador de Redes', '2023-05-02 00:24:01', '2023-05-02 00:24:01', NULL),
(748, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-05-02 00:24:02', '2023-05-02 00:24:02', NULL),
(749, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-02 00:25:27', '2023-05-02 00:25:27', NULL),
(750, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-02 00:26:07', '2023-05-02 00:26:07', NULL),
(751, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma vaga com o nome  Gestor de tráfego', '2023-05-02 00:27:01', '2023-05-02 00:27:01', NULL),
(752, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-05-02 00:27:01', '2023-05-02 00:27:01', NULL),
(753, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em  cadastrar Minhas empresas cadastradas', '2023-05-02 00:27:35', '2023-05-02 00:27:35', NULL),
(754, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma empresa com o nomeDigital AO', '2023-05-02 00:28:43', '2023-05-02 00:28:43', NULL),
(755, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-05-02 00:28:43', '2023-05-02 00:28:43', NULL),
(756, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-05-02 00:28:48', '2023-05-02 00:28:48', NULL),
(757, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Aprovou solicitação da empresa com o id 7', '2023-05-02 00:28:53', '2023-05-02 00:28:53', NULL),
(758, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-05-02 00:28:53', '2023-05-02 00:28:53', NULL),
(759, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-02 00:28:59', '2023-05-02 00:28:59', NULL),
(760, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-02 00:29:03', '2023-05-02 00:29:03', NULL),
(761, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-02 00:31:26', '2023-05-02 00:31:26', NULL),
(762, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-02 00:31:55', '2023-05-02 00:31:55', NULL),
(763, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma vaga com o nome  Programador Full-Stack', '2023-05-02 00:33:12', '2023-05-02 00:33:12', NULL),
(764, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-05-02 00:33:13', '2023-05-02 00:33:13', NULL),
(765, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-02 00:34:56', '2023-05-02 00:34:56', NULL),
(766, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-02 00:35:57', '2023-05-02 00:35:57', NULL),
(767, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-02 00:36:12', '2023-05-02 00:36:12', NULL),
(768, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-02 00:38:21', '2023-05-02 00:38:21', NULL),
(769, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-02 00:38:30', '2023-05-02 00:38:30', NULL),
(770, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cadastrou uma vaga com o nome  Professor de Línguas', '2023-05-02 00:39:45', '2023-05-02 00:39:45', NULL),
(771, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-05-02 00:39:46', '2023-05-02 00:39:46', NULL),
(772, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-02 00:43:02', '2023-05-02 00:43:02', NULL),
(773, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-05-02 00:46:52', '2023-05-02 00:46:52', NULL),
(774, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-02 10:59:21', '2023-05-02 10:59:21', NULL),
(775, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-02 11:09:41', '2023-05-02 11:09:41', NULL),
(776, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-02 12:43:32', '2023-05-02 12:43:32', NULL),
(777, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-02 12:44:44', '2023-05-02 12:44:44', NULL),
(778, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-02 12:49:06', '2023-05-02 12:49:06', NULL),
(779, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-02 12:52:57', '2023-05-02 12:52:57', NULL),
(780, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-02 12:53:07', '2023-05-02 12:53:07', NULL),
(781, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-02 12:56:48', '2023-05-02 12:56:48', NULL),
(782, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-02 12:57:45', '2023-05-02 12:57:45', NULL),
(783, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-05-02 12:58:49', '2023-05-02 12:58:49', NULL),
(784, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-02 13:15:33', '2023-05-02 13:15:33', NULL);
INSERT INTO `logs` (`id`, `level`, `REMOTE_ADDR`, `PATH_INFO`, `USER_NAME`, `USER_ID`, `HTTP_USER_AGENT`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(785, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-02 13:15:46', '2023-05-02 13:15:46', NULL),
(786, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-05-02 13:21:26', '2023-05-02 13:21:26', NULL),
(787, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-05-02 13:25:25', '2023-05-02 13:25:25', NULL),
(788, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-05-02 13:25:54', '2023-05-02 13:25:54', NULL),
(789, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-05-02 13:26:00', '2023-05-02 13:26:00', NULL),
(790, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-05-02 13:31:45', '2023-05-02 13:31:45', NULL),
(791, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-05-02 13:33:10', '2023-05-02 13:33:10', NULL),
(792, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-05-02 13:37:09', '2023-05-02 13:37:09', NULL),
(793, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-05-02 13:37:52', '2023-05-02 13:37:52', NULL),
(794, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-05-02 13:38:38', '2023-05-02 13:38:38', NULL),
(795, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-05-02 13:39:12', '2023-05-02 13:39:12', NULL),
(796, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-05-02 13:39:54', '2023-05-02 13:39:54', NULL),
(797, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-05-02 13:40:34', '2023-05-02 13:40:34', NULL),
(798, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-05-02 13:42:25', '2023-05-02 13:42:25', NULL),
(799, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-05-02 13:43:09', '2023-05-02 13:43:09', NULL),
(800, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-05-02 13:43:30', '2023-05-02 13:43:30', NULL),
(801, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-05-02 13:44:44', '2023-05-02 13:44:44', NULL),
(802, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-05-02 13:45:44', '2023-05-02 13:45:44', NULL),
(803, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-02 13:49:25', '2023-05-02 13:49:25', NULL),
(804, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-02 13:50:00', '2023-05-02 13:50:00', NULL),
(805, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-02 13:50:12', '2023-05-02 13:50:12', NULL),
(806, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-02 13:50:22', '2023-05-02 13:50:22', NULL),
(807, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-02 13:50:38', '2023-05-02 13:50:38', NULL),
(808, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-03 11:04:59', '2023-05-03 11:04:59', NULL),
(809, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-05-03 11:05:10', '2023-05-03 11:05:10', NULL),
(810, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-05-03 11:05:45', '2023-05-03 11:05:45', NULL),
(811, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-05-03 11:05:50', '2023-05-03 11:05:50', NULL),
(812, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-05-03 11:05:54', '2023-05-03 11:05:54', NULL),
(813, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-03 11:06:03', '2023-05-03 11:06:03', NULL),
(814, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-03 11:12:04', '2023-05-03 11:12:04', NULL),
(815, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 6', '2023-05-03 11:12:42', '2023-05-03 11:12:42', NULL),
(816, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-03 11:14:10', '2023-05-03 11:14:10', NULL),
(817, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-03 11:34:58', '2023-05-03 11:34:58', NULL),
(818, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas inscrições de vagas', '2023-05-03 11:35:03', '2023-05-03 11:35:03', NULL),
(819, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'apagou uma inscrição a vaga com id1', '2023-05-03 11:35:06', '2023-05-03 11:35:06', NULL),
(820, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas inscrições de vagas', '2023-05-03 11:35:07', '2023-05-03 11:35:07', NULL),
(821, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas inscrições de vagas', '2023-05-03 12:12:27', '2023-05-03 12:12:27', NULL),
(822, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-03 12:12:42', '2023-05-03 12:12:42', NULL),
(823, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-03 12:15:28', '2023-05-03 12:15:28', NULL),
(824, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-03 12:15:31', '2023-05-03 12:15:31', NULL),
(825, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-03 12:15:45', '2023-05-03 12:15:45', NULL),
(826, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-03 12:16:31', '2023-05-03 12:16:31', NULL),
(827, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-03 12:16:34', '2023-05-03 12:16:34', NULL),
(828, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-03 12:16:58', '2023-05-03 12:16:58', NULL),
(829, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id6', '2023-05-03 12:17:59', '2023-05-03 12:17:59', NULL),
(830, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-03 19:13:34', '2023-05-03 19:13:34', NULL),
(831, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-05-03 19:13:43', '2023-05-03 19:13:43', NULL),
(832, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-05-03 19:17:08', '2023-05-03 19:17:08', NULL),
(833, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-05-03 19:18:01', '2023-05-03 19:18:01', NULL),
(834, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Editou  Perfil', '2023-05-03 19:18:30', '2023-05-03 19:18:30', NULL),
(835, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-05-03 19:18:30', '2023-05-03 19:18:30', NULL),
(836, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador11', '2023-05-03 19:18:36', '2023-05-03 19:18:36', NULL),
(837, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-03 19:19:36', '2023-05-03 19:19:36', NULL),
(838, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-03 19:20:05', '2023-05-03 19:20:05', NULL),
(839, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Se inscreveu em uma vaga com o id2', '2023-05-03 19:20:18', '2023-05-03 19:20:18', NULL),
(840, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas inscrições de vagas', '2023-05-03 19:20:19', '2023-05-03 19:20:19', NULL),
(841, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas inscrições de vagas', '2023-05-03 19:25:05', '2023-05-03 19:25:05', NULL),
(842, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas inscrições de vagas', '2023-05-03 19:25:07', '2023-05-03 19:25:07', NULL),
(843, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas inscrições de vagas', '2023-05-03 19:25:09', '2023-05-03 19:25:09', NULL),
(844, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas inscrições de vagas', '2023-05-03 19:25:10', '2023-05-03 19:25:10', NULL),
(845, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-03 19:25:17', '2023-05-03 19:25:17', NULL),
(846, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-03 19:25:28', '2023-05-03 19:25:28', NULL),
(847, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-05-03 19:25:38', '2023-05-03 19:25:38', NULL),
(848, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id1', '2023-05-03 19:26:29', '2023-05-03 19:26:29', NULL),
(849, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-05-03 19:26:38', '2023-05-03 19:26:38', NULL),
(850, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-03 19:27:01', '2023-05-03 19:27:01', NULL),
(851, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-05-03 19:27:19', '2023-05-03 19:27:19', NULL),
(852, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 1', '2023-05-03 19:27:26', '2023-05-03 19:27:26', NULL),
(853, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-03 19:27:37', '2023-05-03 19:27:37', NULL),
(854, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-03 19:27:52', '2023-05-03 19:27:52', NULL),
(855, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 6', '2023-05-03 19:28:05', '2023-05-03 19:28:05', NULL),
(856, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-03 19:28:14', '2023-05-03 19:28:14', NULL),
(857, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-03 19:28:34', '2023-05-03 19:28:34', NULL),
(858, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou utilizador com o id 3', '2023-05-03 19:28:39', '2023-05-03 19:28:39', NULL),
(859, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador11', '2023-05-03 19:29:02', '2023-05-03 19:29:02', NULL),
(860, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador11', '2023-05-03 19:29:07', '2023-05-03 19:29:07', NULL),
(861, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador11', '2023-05-03 19:29:08', '2023-05-03 19:29:08', NULL),
(862, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador11', '2023-05-03 19:29:09', '2023-05-03 19:29:09', NULL),
(863, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador11', '2023-05-03 19:29:09', '2023-05-03 19:29:09', NULL),
(864, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador11', '2023-05-03 19:29:10', '2023-05-03 19:29:10', NULL),
(865, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador11', '2023-05-03 19:29:14', '2023-05-03 19:29:14', NULL),
(866, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador11', '2023-05-03 19:29:14', '2023-05-03 19:29:14', NULL),
(867, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador11', '2023-05-03 19:29:15', '2023-05-03 19:29:15', NULL),
(868, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador11', '2023-05-03 19:29:16', '2023-05-03 19:29:16', NULL),
(869, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador11', '2023-05-03 19:30:26', '2023-05-03 19:30:26', NULL),
(870, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-03 19:31:44', '2023-05-03 19:31:44', NULL),
(871, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-03 19:31:53', '2023-05-03 19:31:53', NULL),
(872, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-03 19:32:01', '2023-05-03 19:32:01', NULL),
(873, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-03 19:32:14', '2023-05-03 19:32:14', NULL),
(874, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-03 19:38:48', '2023-05-03 19:38:48', NULL),
(875, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-03 19:40:56', '2023-05-03 19:40:56', NULL),
(876, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-03 19:41:11', '2023-05-03 19:41:11', NULL),
(877, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-03 19:41:24', '2023-05-03 19:41:24', NULL),
(878, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-03 19:41:50', '2023-05-03 19:41:50', NULL),
(879, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-03 19:42:02', '2023-05-03 19:42:02', NULL),
(880, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-06 15:25:44', '2023-05-06 15:25:44', NULL),
(881, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-06 15:26:00', '2023-05-06 15:26:00', NULL),
(882, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-06 15:26:38', '2023-05-06 15:26:38', NULL),
(883, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-06 17:26:27', '2023-05-06 17:26:27', NULL),
(884, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-05-06 17:26:38', '2023-05-06 17:26:38', NULL),
(885, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-05-06 17:27:03', '2023-05-06 17:27:03', NULL),
(886, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-05-06 17:33:34', '2023-05-06 17:33:34', NULL),
(887, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id1', '2023-05-06 17:33:38', '2023-05-06 17:33:38', NULL),
(888, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-05-06 17:35:52', '2023-05-06 17:35:52', NULL),
(889, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-06 17:41:58', '2023-05-06 17:41:58', NULL),
(890, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-06 17:42:06', '2023-05-06 17:42:06', NULL),
(891, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-05-06 17:42:12', '2023-05-06 17:42:12', NULL),
(892, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-05-06 17:42:16', '2023-05-06 17:42:16', NULL),
(893, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-05-06 17:42:34', '2023-05-06 17:42:34', NULL),
(894, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-06 17:43:04', '2023-05-06 17:43:04', NULL),
(895, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-06 17:43:11', '2023-05-06 17:43:11', NULL),
(896, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-05-06 17:43:16', '2023-05-06 17:43:16', NULL),
(897, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-05-06 17:43:19', '2023-05-06 17:43:19', NULL),
(898, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-05-06 17:43:46', '2023-05-06 17:43:46', NULL),
(899, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-05-06 17:44:14', '2023-05-06 17:44:14', NULL),
(900, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-05-06 17:44:32', '2023-05-06 17:44:32', NULL),
(901, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-05-06 17:52:47', '2023-05-06 17:52:47', NULL),
(902, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-05-06 17:54:24', '2023-05-06 17:54:24', NULL),
(903, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-06 18:17:24', '2023-05-06 18:17:24', NULL),
(904, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-06 18:18:13', '2023-05-06 18:18:13', NULL),
(905, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-05-06 18:21:33', '2023-05-06 18:21:33', NULL),
(906, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-06 18:21:42', '2023-05-06 18:21:42', NULL),
(907, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-05-06 18:21:46', '2023-05-06 18:21:46', NULL),
(908, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-06 18:23:17', '2023-05-06 18:23:17', NULL),
(909, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-05-06 18:23:46', '2023-05-06 18:23:46', NULL),
(910, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-05-06 18:23:49', '2023-05-06 18:23:49', NULL),
(911, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-06 18:24:12', '2023-05-06 18:24:12', NULL),
(912, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-06 18:24:18', '2023-05-06 18:24:18', NULL),
(913, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-06 18:25:25', '2023-05-06 18:25:25', NULL),
(914, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-05-06 18:25:57', '2023-05-06 18:25:57', NULL),
(915, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-06 18:34:54', '2023-05-06 18:34:54', NULL),
(916, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-06 18:40:46', '2023-05-06 18:40:46', NULL),
(917, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id4', '2023-05-06 18:41:17', '2023-05-06 18:41:17', NULL),
(918, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-06 18:45:49', '2023-05-06 18:45:49', NULL),
(919, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-06 18:46:28', '2023-05-06 18:46:28', NULL),
(920, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-06 18:48:59', '2023-05-06 18:48:59', NULL),
(921, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id1', '2023-05-06 18:49:30', '2023-05-06 18:49:30', NULL),
(922, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id1', '2023-05-06 18:49:41', '2023-05-06 18:49:41', NULL),
(923, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id1', '2023-05-06 18:50:13', '2023-05-06 18:50:13', NULL),
(924, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id1', '2023-05-06 18:50:21', '2023-05-06 18:50:21', NULL),
(925, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id1', '2023-05-06 18:51:44', '2023-05-06 18:51:44', NULL),
(926, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-06 18:51:47', '2023-05-06 18:51:47', NULL),
(927, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-06 18:52:09', '2023-05-06 18:52:09', NULL),
(928, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-06 18:52:21', '2023-05-06 18:52:21', NULL),
(929, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-06 18:52:45', '2023-05-06 18:52:45', NULL),
(930, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-06 18:53:12', '2023-05-06 18:53:12', NULL),
(931, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-06 18:53:33', '2023-05-06 18:53:33', NULL),
(932, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em editar um Utilizador com o identificador3', '2023-05-06 18:54:37', '2023-05-06 18:54:37', NULL),
(933, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-06 18:55:31', '2023-05-06 18:55:31', NULL),
(934, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-06 18:58:06', '2023-05-06 18:58:06', NULL),
(935, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Procurar Vagas', '2023-05-06 18:58:10', '2023-05-06 18:58:10', NULL),
(936, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-09 08:21:35', '2023-05-09 08:21:35', NULL),
(937, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-09 08:21:46', '2023-05-09 08:21:46', NULL),
(938, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-09 08:22:03', '2023-05-09 08:22:03', NULL),
(939, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-05-09 08:23:28', '2023-05-09 08:23:28', NULL),
(940, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id1', '2023-05-09 08:23:33', '2023-05-09 08:23:33', NULL),
(941, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador8', '2023-05-09 08:23:44', '2023-05-09 08:23:44', NULL),
(942, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-09 08:24:23', '2023-05-09 08:24:23', NULL),
(943, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-09 08:38:59', '2023-05-09 08:38:59', NULL),
(944, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-09 08:39:14', '2023-05-09 08:39:14', NULL),
(945, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-09 08:39:22', '2023-05-09 08:39:22', NULL),
(946, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-05-09 08:40:44', '2023-05-09 08:40:44', NULL),
(947, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Listou categorias', '2023-05-09 08:41:05', '2023-05-09 08:41:05', NULL),
(948, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-05-09 08:41:07', '2023-05-09 08:41:07', NULL),
(949, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-09 08:41:18', '2023-05-09 08:41:18', NULL),
(950, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-09 08:41:32', '2023-05-09 08:41:32', NULL),
(951, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-10 20:23:19', '2023-05-10 20:23:19', NULL),
(952, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Listou utilizador com o id 1', '2023-05-10 20:28:45', '2023-05-10 20:28:45', NULL),
(953, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Listou utilizador com o id 1', '2023-05-10 20:29:22', '2023-05-10 20:29:22', NULL),
(954, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-10 20:29:30', '2023-05-10 20:29:30', NULL),
(955, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Listou utilizador com o id 1', '2023-05-10 20:29:50', '2023-05-10 20:29:50', NULL),
(956, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Listou utilizador com o id 1', '2023-05-10 20:52:55', '2023-05-10 20:52:55', NULL),
(957, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-10 20:53:18', '2023-05-10 20:53:18', NULL),
(958, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-10 20:53:32', '2023-05-10 20:53:32', NULL),
(959, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador11', '2023-05-10 20:53:49', '2023-05-10 20:53:49', NULL),
(960, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-10 20:56:16', '2023-05-10 20:56:16', NULL),
(961, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id1', '2023-05-10 20:56:23', '2023-05-10 20:56:23', NULL),
(962, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-10 20:56:45', '2023-05-10 20:56:45', NULL),
(963, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Procurar Vagas', '2023-05-10 20:56:47', '2023-05-10 20:56:47', NULL),
(964, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Listou utilizador com o id 11', '2023-05-10 20:57:20', '2023-05-10 20:57:20', NULL),
(965, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-10 20:57:25', '2023-05-10 20:57:25', NULL),
(966, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-11 17:06:15', '2023-05-11 17:06:15', NULL),
(967, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-11 17:07:17', '2023-05-11 17:07:17', NULL),
(968, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-11 17:20:29', '2023-05-11 17:20:29', NULL),
(969, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-05-11 17:26:38', '2023-05-11 17:26:38', NULL),
(970, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Listou categorias', '2023-05-11 17:27:24', '2023-05-11 17:27:24', NULL),
(971, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-05-11 19:05:50', '2023-05-11 19:05:50', NULL),
(972, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id1', '2023-05-11 19:07:18', '2023-05-11 19:07:18', NULL),
(973, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-05-11 19:07:28', '2023-05-11 19:07:28', NULL),
(974, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em editar um Utilizador com o identificador1', '2023-05-11 19:23:49', '2023-05-11 19:23:49', NULL),
(975, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-11 19:24:09', '2023-05-11 19:24:09', NULL),
(976, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-12 20:40:29', '2023-05-12 20:40:29', NULL),
(977, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-12 20:40:37', '2023-05-12 20:40:37', NULL),
(978, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-12 20:41:04', '2023-05-12 20:41:04', NULL),
(979, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-12 20:41:13', '2023-05-12 20:41:13', NULL),
(980, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-12 20:41:18', '2023-05-12 20:41:18', NULL);
INSERT INTO `logs` (`id`, `level`, `REMOTE_ADDR`, `PATH_INFO`, `USER_NAME`, `USER_ID`, `HTTP_USER_AGENT`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(981, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-12 20:41:29', '2023-05-12 20:41:29', NULL),
(982, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-12 20:41:37', '2023-05-12 20:41:37', NULL),
(983, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-12 20:41:42', '2023-05-12 20:41:42', NULL),
(984, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-12 20:52:18', '2023-05-12 20:52:18', NULL),
(985, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-13 16:35:24', '2023-05-13 16:35:24', NULL),
(986, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador11', '2023-05-13 16:35:46', '2023-05-13 16:35:46', NULL),
(987, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador11', '2023-05-13 16:37:08', '2023-05-13 16:37:08', NULL),
(988, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador11', '2023-05-13 16:37:58', '2023-05-13 16:37:58', NULL),
(989, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador11', '2023-05-13 16:39:12', '2023-05-13 16:39:12', NULL),
(990, 'info', '127.0.0.1', NULL, 'Armando Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-13 16:40:30', '2023-05-13 16:40:30', NULL),
(991, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-13 16:41:34', '2023-05-13 16:41:34', NULL),
(992, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-13 16:42:18', '2023-05-13 16:42:18', NULL),
(993, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-13 16:42:38', '2023-05-13 16:42:38', NULL),
(994, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em editar um Utilizador com o identificador2', '2023-05-13 16:42:47', '2023-05-13 16:42:47', NULL),
(995, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Editou dados do utilizador com o id2', '2023-05-13 16:45:10', '2023-05-13 16:45:10', NULL),
(996, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-13 16:45:16', '2023-05-13 16:45:16', NULL),
(997, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em editar um Utilizador com o identificador3', '2023-05-13 16:45:25', '2023-05-13 16:45:25', NULL),
(998, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em editar um Utilizador com o identificador3', '2023-05-13 16:46:19', '2023-05-13 16:46:19', NULL),
(999, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Editou dados do utilizador com o id3', '2023-05-13 16:46:43', '2023-05-13 16:46:43', NULL),
(1000, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-13 16:46:48', '2023-05-13 16:46:48', NULL),
(1001, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em editar um Utilizador com o identificador4', '2023-05-13 16:46:58', '2023-05-13 16:46:58', NULL),
(1002, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Editou dados do utilizador com o id4', '2023-05-13 16:47:17', '2023-05-13 16:47:17', NULL),
(1003, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-13 16:47:21', '2023-05-13 16:47:21', NULL),
(1004, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em editar um Utilizador com o identificador12', '2023-05-13 16:49:21', '2023-05-13 16:49:21', NULL),
(1005, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Editou dados do utilizador com o id12', '2023-05-13 16:49:59', '2023-05-13 16:49:59', NULL),
(1006, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-13 16:53:41', '2023-05-13 16:53:41', NULL),
(1007, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-13 16:53:58', '2023-05-13 16:53:58', NULL),
(1008, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-13 16:54:10', '2023-05-13 16:54:10', NULL),
(1009, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-13 16:54:59', '2023-05-13 16:54:59', NULL),
(1010, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-13 16:55:09', '2023-05-13 16:55:09', NULL),
(1011, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-13 16:56:34', '2023-05-13 16:56:34', NULL),
(1012, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-05-13 16:56:36', '2023-05-13 16:56:36', NULL),
(1013, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-13 16:56:46', '2023-05-13 16:56:46', NULL),
(1014, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em editar um Utilizador com o identificador1', '2023-05-13 16:56:49', '2023-05-13 16:56:49', NULL),
(1015, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em editar um Utilizador com o identificador1', '2023-05-13 16:57:41', '2023-05-13 16:57:41', NULL),
(1016, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em editar um Utilizador com o identificador4', '2023-05-13 16:57:52', '2023-05-13 16:57:52', NULL),
(1017, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em editar um Utilizador com o identificador4', '2023-05-13 16:58:12', '2023-05-13 16:58:12', NULL),
(1018, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em editar um Utilizador com o identificador4', '2023-05-13 16:59:03', '2023-05-13 16:59:03', NULL),
(1019, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-13 17:10:14', '2023-05-13 17:10:14', NULL),
(1020, 'info', '127.0.0.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Minhas inscrições de vagas', '2023-05-13 17:23:50', '2023-05-13 17:23:50', NULL),
(1021, 'info', '127.0.0.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-05-13 17:24:01', '2023-05-13 17:24:01', NULL),
(1022, 'info', '127.0.0.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-13 17:24:09', '2023-05-13 17:24:09', NULL),
(1023, 'info', '127.0.0.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-13 17:24:32', '2023-05-13 17:24:32', NULL),
(1024, 'info', '127.0.0.1', NULL, 'Armando da Costa', '15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-13 17:28:26', '2023-05-13 17:28:26', NULL),
(1025, 'info', '127.0.0.1', NULL, 'Armando da Costa', '15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-05-13 17:29:56', '2023-05-13 17:29:56', NULL),
(1026, 'info', '127.0.0.1', NULL, 'Armando da Costa', '15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-13 17:30:26', '2023-05-13 17:30:26', NULL),
(1027, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-05-13 17:31:44', '2023-05-13 17:31:44', NULL),
(1028, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-05-13 17:33:07', '2023-05-13 17:33:07', NULL),
(1029, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-05-13 17:33:34', '2023-05-13 17:33:34', NULL),
(1030, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-13 17:34:15', '2023-05-13 17:34:15', NULL),
(1031, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em editar um Utilizador com o identificador15', '2023-05-13 17:34:22', '2023-05-13 17:34:22', NULL),
(1032, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Editou dados do utilizador com o id15', '2023-05-13 17:34:49', '2023-05-13 17:34:49', NULL),
(1033, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-13 17:34:54', '2023-05-13 17:34:54', NULL),
(1034, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-05-13 17:35:00', '2023-05-13 17:35:00', NULL),
(1035, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-05-13 17:36:59', '2023-05-13 17:36:59', NULL),
(1036, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Criou uma conta de Utilizador de Solante Solaaa', '2023-05-13 17:37:23', '2023-05-13 17:37:23', NULL),
(1037, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-13 17:37:23', '2023-05-13 17:37:23', NULL),
(1038, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-05-13 17:37:38', '2023-05-13 17:37:38', NULL),
(1039, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Criou uma conta de Utilizador de Kelmer Pastilha', '2023-05-13 17:39:15', '2023-05-13 17:39:15', NULL),
(1040, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-13 17:39:15', '2023-05-13 17:39:15', NULL),
(1041, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-05-13 17:40:46', '2023-05-13 17:40:46', NULL),
(1042, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Criou uma conta de Utilizador de Nerú Americano', '2023-05-13 17:42:59', '2023-05-13 17:42:59', NULL),
(1043, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-13 17:42:59', '2023-05-13 17:42:59', NULL),
(1044, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Listou utilizador com o id 17', '2023-05-13 17:43:10', '2023-05-13 17:43:10', NULL),
(1045, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em editar um Utilizador com o identificador18', '2023-05-13 17:43:44', '2023-05-13 17:43:44', NULL),
(1046, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-05-13 17:43:56', '2023-05-13 17:43:56', NULL),
(1047, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Criou uma conta de Utilizador de Neymar Júnior', '2023-05-13 17:45:14', '2023-05-13 17:45:14', NULL),
(1048, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-13 17:45:14', '2023-05-13 17:45:14', NULL),
(1049, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-05-13 17:45:28', '2023-05-13 17:45:28', NULL),
(1050, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Criou uma conta de Utilizador de Lionel Messi', '2023-05-13 17:46:45', '2023-05-13 17:46:45', NULL),
(1051, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-13 17:46:45', '2023-05-13 17:46:45', NULL),
(1052, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-13 17:52:32', '2023-05-13 17:52:32', NULL),
(1053, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-13 17:58:19', '2023-05-13 17:58:19', NULL),
(1054, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Listou categorias', '2023-05-13 17:59:47', '2023-05-13 17:59:47', NULL),
(1055, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-05-13 18:01:59', '2023-05-13 18:01:59', NULL),
(1056, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Criou uma conta de Utilizador de Aníbal Armando da Costa', '2023-05-13 18:02:39', '2023-05-13 18:02:39', NULL),
(1057, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-13 18:02:39', '2023-05-13 18:02:39', NULL),
(1058, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-05-13 18:02:47', '2023-05-13 18:02:47', NULL),
(1059, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-13 18:02:52', '2023-05-13 18:02:52', NULL),
(1060, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em editar um Utilizador com o identificador10', '2023-05-13 18:03:01', '2023-05-13 18:03:01', NULL),
(1061, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Editou dados do utilizador com o id10', '2023-05-13 18:03:22', '2023-05-13 18:03:22', NULL),
(1062, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-13 18:07:39', '2023-05-13 18:07:39', NULL),
(1063, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador11', '2023-05-13 18:08:06', '2023-05-13 18:08:06', NULL),
(1064, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-05-13 18:08:26', '2023-05-13 18:08:26', NULL),
(1065, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-13 18:10:01', '2023-05-13 18:10:01', NULL),
(1066, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-05-13 18:12:42', '2023-05-13 18:12:42', NULL),
(1067, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Listou categorias', '2023-05-13 18:12:56', '2023-05-13 18:12:56', NULL),
(1068, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-05-13 18:12:58', '2023-05-13 18:12:58', NULL),
(1069, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeAnalista Clínica', '2023-05-13 18:13:14', '2023-05-13 18:13:14', NULL),
(1070, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Listou categorias', '2023-05-13 18:13:15', '2023-05-13 18:13:15', NULL),
(1071, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-05-13 18:13:18', '2023-05-13 18:13:18', NULL),
(1072, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeEnfermeira', '2023-05-13 18:13:27', '2023-05-13 18:13:27', NULL),
(1073, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Listou categorias', '2023-05-13 18:13:28', '2023-05-13 18:13:28', NULL),
(1074, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-05-13 18:13:31', '2023-05-13 18:13:31', NULL),
(1075, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeDendista', '2023-05-13 18:13:49', '2023-05-13 18:13:49', NULL),
(1076, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Listou categorias', '2023-05-13 18:13:49', '2023-05-13 18:13:49', NULL),
(1077, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-05-13 18:13:52', '2023-05-13 18:13:52', NULL),
(1078, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Cadastrou uma categoria com o nomeAdvogado', '2023-05-13 18:14:01', '2023-05-13 18:14:01', NULL),
(1079, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Listou categorias', '2023-05-13 18:14:02', '2023-05-13 18:14:02', NULL),
(1080, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-05-13 18:14:04', '2023-05-13 18:14:04', NULL),
(1081, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-13 18:16:55', '2023-05-13 18:16:55', NULL),
(1082, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-05-13 18:16:56', '2023-05-13 18:16:56', NULL),
(1083, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-05-13 18:17:03', '2023-05-13 18:17:03', NULL),
(1084, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-13 18:17:08', '2023-05-13 18:17:08', NULL),
(1085, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em editar um Utilizador com o identificador10', '2023-05-13 18:17:32', '2023-05-13 18:17:32', NULL),
(1086, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Editou dados do utilizador com o id10', '2023-05-13 18:17:49', '2023-05-13 18:17:49', NULL),
(1087, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em editar um Utilizador com o identificador10', '2023-05-13 18:18:42', '2023-05-13 18:18:42', NULL),
(1088, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-05-13 18:18:54', '2023-05-13 18:18:54', NULL),
(1089, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-05-13 18:25:06', '2023-05-13 18:25:06', NULL),
(1090, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Editou  Perfil', '2023-05-13 18:25:46', '2023-05-13 18:25:46', NULL),
(1091, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-05-13 18:25:46', '2023-05-13 18:25:46', NULL),
(1092, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador2', '2023-05-13 18:26:00', '2023-05-13 18:26:00', NULL),
(1093, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-05-13 18:29:05', '2023-05-13 18:29:05', NULL),
(1094, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-05-13 18:29:13', '2023-05-13 18:29:13', NULL),
(1095, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id1', '2023-05-13 18:29:16', '2023-05-13 18:29:16', NULL),
(1096, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id1', '2023-05-13 18:30:21', '2023-05-13 18:30:21', NULL),
(1097, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id1', '2023-05-13 18:30:36', '2023-05-13 18:30:36', NULL),
(1098, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id1', '2023-05-13 18:31:45', '2023-05-13 18:31:45', NULL),
(1099, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-13 18:31:50', '2023-05-13 18:31:50', NULL),
(1100, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-05-13 18:32:23', '2023-05-13 18:32:23', NULL),
(1101, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-05-13 18:32:27', '2023-05-13 18:32:27', NULL),
(1102, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-05-13 18:33:08', '2023-05-13 18:33:08', NULL),
(1103, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-05-13 18:33:11', '2023-05-13 18:33:11', NULL),
(1104, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-13 18:34:26', '2023-05-13 18:34:26', NULL),
(1105, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-05-13 18:48:00', '2023-05-13 18:48:00', NULL),
(1106, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em  cadastrar Minhas empresas cadastradas', '2023-05-13 18:48:14', '2023-05-13 18:48:14', NULL),
(1107, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em  cadastrar Minhas empresas cadastradas', '2023-05-13 18:50:26', '2023-05-13 18:50:26', NULL),
(1108, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Cadastrou uma empresa com o nomeTransdoidinha SU Lda', '2023-05-13 18:50:46', '2023-05-13 18:50:46', NULL),
(1109, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-05-13 18:50:46', '2023-05-13 18:50:46', NULL),
(1110, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-05-13 18:57:10', '2023-05-13 18:57:10', NULL),
(1111, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id1', '2023-05-13 18:57:17', '2023-05-13 18:57:17', NULL),
(1112, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-05-13 19:48:02', '2023-05-13 19:48:02', NULL),
(1113, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-05-13 19:48:08', '2023-05-13 19:48:08', NULL),
(1114, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-05-13 19:48:20', '2023-05-13 19:48:20', NULL),
(1115, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-05-13 19:52:27', '2023-05-13 19:52:27', NULL),
(1116, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-05-13 19:53:00', '2023-05-13 19:53:00', NULL),
(1117, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-05-13 19:53:23', '2023-05-13 19:53:23', NULL),
(1118, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-05-13 19:53:43', '2023-05-13 19:53:43', NULL),
(1119, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-13 19:53:54', '2023-05-13 19:53:54', NULL),
(1120, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-13 19:55:51', '2023-05-13 19:55:51', NULL),
(1121, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-13 19:56:20', '2023-05-13 19:56:20', NULL),
(1122, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-13 19:56:23', '2023-05-13 19:56:23', NULL),
(1123, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-13 19:57:13', '2023-05-13 19:57:13', NULL),
(1124, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-13 19:58:25', '2023-05-13 19:58:25', NULL),
(1125, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-13 19:58:37', '2023-05-13 19:58:37', NULL),
(1126, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-05-13 19:58:39', '2023-05-13 19:58:39', NULL),
(1127, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Cadastrou uma vaga com o nome  Administrador de Redes', '2023-05-13 19:59:02', '2023-05-13 19:59:02', NULL),
(1128, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-05-13 19:59:03', '2023-05-13 19:59:03', NULL),
(1129, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-05-13 19:59:19', '2023-05-13 19:59:19', NULL),
(1130, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id7', '2023-05-13 19:59:23', '2023-05-13 19:59:23', NULL),
(1131, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id7', '2023-05-13 19:59:57', '2023-05-13 19:59:57', NULL),
(1132, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id7', '2023-05-13 20:00:06', '2023-05-13 20:00:06', NULL),
(1133, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id7', '2023-05-13 20:00:24', '2023-05-13 20:00:24', NULL),
(1134, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id7', '2023-05-13 20:00:30', '2023-05-13 20:00:30', NULL),
(1135, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id7', '2023-05-13 20:00:36', '2023-05-13 20:00:36', NULL),
(1136, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-13 20:01:25', '2023-05-13 20:01:25', NULL),
(1137, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-13 20:04:39', '2023-05-13 20:04:39', NULL),
(1138, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Procurar Vagas', '2023-05-13 20:04:40', '2023-05-13 20:04:40', NULL),
(1139, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Minhas inscrições de vagas', '2023-05-13 20:04:41', '2023-05-13 20:04:41', NULL),
(1140, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-13 20:05:48', '2023-05-13 20:05:48', NULL),
(1141, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-13 20:05:56', '2023-05-13 20:05:56', NULL),
(1142, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-05-13 20:06:02', '2023-05-13 20:06:02', NULL),
(1143, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-13 20:08:08', '2023-05-13 20:08:08', NULL),
(1144, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-13 20:08:34', '2023-05-13 20:08:34', NULL),
(1145, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-05-13 20:08:40', '2023-05-13 20:08:40', NULL),
(1146, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-05-13 20:08:55', '2023-05-13 20:08:55', NULL),
(1147, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-13 20:09:04', '2023-05-13 20:09:04', NULL),
(1148, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-13 20:09:21', '2023-05-13 20:09:21', NULL),
(1149, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-13 20:10:07', '2023-05-13 20:10:07', NULL),
(1150, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-13 20:10:24', '2023-05-13 20:10:24', NULL),
(1151, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-13 20:12:08', '2023-05-13 20:12:08', NULL),
(1152, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-13 20:12:46', '2023-05-13 20:12:46', NULL),
(1153, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-05-13 20:21:40', '2023-05-13 20:21:40', NULL),
(1154, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-13 20:21:45', '2023-05-13 20:21:45', NULL),
(1155, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-13 20:22:11', '2023-05-13 20:22:11', NULL),
(1156, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-05-13 20:22:18', '2023-05-13 20:22:18', NULL),
(1157, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-05-13 20:22:30', '2023-05-13 20:22:30', NULL),
(1158, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-05-13 20:22:33', '2023-05-13 20:22:33', NULL),
(1159, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-05-13 20:25:05', '2023-05-13 20:25:05', NULL),
(1160, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-05-13 20:25:08', '2023-05-13 20:25:08', NULL),
(1161, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-05-13 20:26:53', '2023-05-13 20:26:53', NULL),
(1162, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-13 20:26:57', '2023-05-13 20:26:57', NULL),
(1163, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-05-13 20:28:52', '2023-05-13 20:28:52', NULL),
(1164, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-05-13 20:32:16', '2023-05-13 20:32:16', NULL),
(1165, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-05-13 20:32:26', '2023-05-13 20:32:26', NULL),
(1166, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-05-13 20:32:29', '2023-05-13 20:32:29', NULL),
(1167, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id2', '2023-05-13 20:33:14', '2023-05-13 20:33:14', NULL),
(1168, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-13 20:38:27', '2023-05-13 20:38:27', NULL),
(1169, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-05-13 20:41:15', '2023-05-13 20:41:15', NULL),
(1170, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 20:41:35', '2023-05-13 20:41:35', NULL),
(1171, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Se inscreveu em uma vaga com o id2', '2023-05-13 20:41:42', '2023-05-13 20:41:42', NULL),
(1172, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Minhas inscrições de vagas', '2023-05-13 20:41:42', '2023-05-13 20:41:42', NULL),
(1173, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-13 20:42:02', '2023-05-13 20:42:02', NULL);
INSERT INTO `logs` (`id`, `level`, `REMOTE_ADDR`, `PATH_INFO`, `USER_NAME`, `USER_ID`, `HTTP_USER_AGENT`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1174, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-13 20:42:12', '2023-05-13 20:42:12', NULL),
(1175, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-05-13 20:42:32', '2023-05-13 20:42:32', NULL),
(1176, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-05-13 20:54:00', '2023-05-13 20:54:00', NULL),
(1177, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-13 21:00:02', '2023-05-13 21:00:02', NULL),
(1178, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-05-13 21:05:21', '2023-05-13 21:05:21', NULL),
(1179, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id1', '2023-05-13 21:05:33', '2023-05-13 21:05:33', NULL),
(1180, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:05:48', '2023-05-13 21:05:48', NULL),
(1181, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:14:06', '2023-05-13 21:14:06', NULL),
(1182, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:15:01', '2023-05-13 21:15:01', NULL),
(1183, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:15:14', '2023-05-13 21:15:14', NULL),
(1184, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:15:26', '2023-05-13 21:15:26', NULL),
(1185, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:15:45', '2023-05-13 21:15:45', NULL),
(1186, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:17:06', '2023-05-13 21:17:06', NULL),
(1187, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:18:18', '2023-05-13 21:18:18', NULL),
(1188, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:18:49', '2023-05-13 21:18:49', NULL),
(1189, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:19:06', '2023-05-13 21:19:06', NULL),
(1190, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:19:59', '2023-05-13 21:19:59', NULL),
(1191, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:20:39', '2023-05-13 21:20:39', NULL),
(1192, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:21:17', '2023-05-13 21:21:17', NULL),
(1193, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:22:27', '2023-05-13 21:22:27', NULL),
(1194, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:22:46', '2023-05-13 21:22:46', NULL),
(1195, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:23:35', '2023-05-13 21:23:35', NULL),
(1196, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:24:07', '2023-05-13 21:24:07', NULL),
(1197, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:24:40', '2023-05-13 21:24:40', NULL),
(1198, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:25:11', '2023-05-13 21:25:11', NULL),
(1199, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:25:29', '2023-05-13 21:25:29', NULL),
(1200, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:25:46', '2023-05-13 21:25:46', NULL),
(1201, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:25:57', '2023-05-13 21:25:57', NULL),
(1202, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:26:27', '2023-05-13 21:26:27', NULL),
(1203, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:26:54', '2023-05-13 21:26:54', NULL),
(1204, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:28:05', '2023-05-13 21:28:05', NULL),
(1205, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:28:51', '2023-05-13 21:28:51', NULL),
(1206, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:29:23', '2023-05-13 21:29:23', NULL),
(1207, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:30:02', '2023-05-13 21:30:02', NULL),
(1208, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:30:33', '2023-05-13 21:30:33', NULL),
(1209, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:31:36', '2023-05-13 21:31:36', NULL),
(1210, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:31:49', '2023-05-13 21:31:49', NULL),
(1211, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:32:40', '2023-05-13 21:32:40', NULL),
(1212, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:32:55', '2023-05-13 21:32:55', NULL),
(1213, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:33:07', '2023-05-13 21:33:07', NULL),
(1214, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 21:33:17', '2023-05-13 21:33:17', NULL),
(1215, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id4', '2023-05-13 21:33:22', '2023-05-13 21:33:22', NULL),
(1216, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id4', '2023-05-13 22:05:51', '2023-05-13 22:05:51', NULL),
(1217, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-13 22:06:45', '2023-05-13 22:06:45', NULL),
(1218, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-13 22:06:49', '2023-05-13 22:06:49', NULL),
(1219, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-13 22:06:53', '2023-05-13 22:06:53', NULL),
(1220, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-13 22:07:03', '2023-05-13 22:07:03', NULL),
(1221, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-13 22:07:21', '2023-05-13 22:07:21', NULL),
(1222, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Procurar Vagas', '2023-05-13 22:09:09', '2023-05-13 22:09:09', NULL),
(1223, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Procurar Vagas', '2023-05-13 22:10:01', '2023-05-13 22:10:01', NULL),
(1224, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Procurar Vagas', '2023-05-13 22:10:19', '2023-05-13 22:10:19', NULL),
(1225, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Procurar Vagas', '2023-05-13 22:10:25', '2023-05-13 22:10:25', NULL),
(1226, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Empresas Cadastradas com idZAP', '2023-05-13 22:10:33', '2023-05-13 22:10:33', NULL),
(1227, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Empresas Cadastradas com idZAP', '2023-05-13 22:11:23', '2023-05-13 22:11:23', NULL),
(1228, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id5', '2023-05-13 22:12:38', '2023-05-13 22:12:38', NULL),
(1229, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Procurar Vagas', '2023-05-13 22:13:37', '2023-05-13 22:13:37', NULL),
(1230, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-13 22:13:44', '2023-05-13 22:13:44', NULL),
(1231, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-13 22:13:51', '2023-05-13 22:13:51', NULL),
(1232, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Minhas inscrições de vagas', '2023-05-13 22:13:59', '2023-05-13 22:13:59', NULL),
(1233, 'info', '127.0.0.1', NULL, 'Adilson J. R da Costa', '2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Listou utilizador com o id 2', '2023-05-13 22:14:01', '2023-05-13 22:14:01', NULL),
(1234, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-15 12:01:58', '2023-05-15 12:01:58', NULL),
(1235, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-15 12:02:14', '2023-05-15 12:02:14', NULL),
(1236, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-15 12:02:44', '2023-05-15 12:02:44', NULL),
(1237, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-15 12:03:15', '2023-05-15 12:03:15', NULL),
(1238, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-15 12:03:25', '2023-05-15 12:03:25', NULL),
(1239, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Listou utilizador com o id 1', '2023-05-15 12:04:14', '2023-05-15 12:04:14', NULL),
(1240, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-15 12:09:46', '2023-05-15 12:09:46', NULL),
(1241, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-05-15 12:19:12', '2023-05-15 12:19:12', NULL),
(1242, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas de Vagas Publicadas', '2023-05-15 12:32:52', '2023-05-15 12:32:52', NULL),
(1243, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-15 12:33:21', '2023-05-15 12:33:21', NULL),
(1244, 'info', '127.0.0.1', NULL, 'Armando da Costa', '15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-15 12:33:40', '2023-05-15 12:33:40', NULL),
(1245, 'info', '127.0.0.1', NULL, 'Armando da Costa', '15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-15 12:34:40', '2023-05-15 12:34:40', NULL),
(1246, 'info', '127.0.0.1', NULL, 'Armando da Costa', '15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-15 12:35:00', '2023-05-15 12:35:00', NULL),
(1247, 'info', '127.0.0.1', NULL, 'Armando da Costa', '15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-15 12:36:39', '2023-05-15 12:36:39', NULL),
(1248, 'info', '127.0.0.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-15 12:36:49', '2023-05-15 12:36:49', NULL),
(1249, 'info', '127.0.0.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-15 12:36:54', '2023-05-15 12:36:54', NULL),
(1250, 'info', '127.0.0.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id1', '2023-05-15 12:37:01', '2023-05-15 12:37:01', NULL),
(1251, 'info', '127.0.0.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-15 12:37:15', '2023-05-15 12:37:15', NULL),
(1252, 'info', '127.0.0.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-15 12:37:38', '2023-05-15 12:37:38', NULL),
(1253, 'info', '127.0.0.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-15 12:38:11', '2023-05-15 12:38:11', NULL),
(1254, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-15 12:38:23', '2023-05-15 12:38:23', NULL),
(1255, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-15 12:38:31', '2023-05-15 12:38:31', NULL),
(1256, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-15 12:38:39', '2023-05-15 12:38:39', NULL),
(1257, 'info', '127.0.0.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-15 12:38:48', '2023-05-15 12:38:48', NULL),
(1258, 'info', '127.0.0.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id3', '2023-05-15 12:38:53', '2023-05-15 12:38:53', NULL),
(1259, 'info', '127.0.0.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id3', '2023-05-15 12:40:17', '2023-05-15 12:40:17', NULL),
(1260, 'info', '127.0.0.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id3', '2023-05-15 12:40:41', '2023-05-15 12:40:41', NULL),
(1261, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas de Vagas Publicadas', '2023-05-15 12:41:58', '2023-05-15 12:41:58', NULL),
(1262, 'info', '127.0.0.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id1', '2023-05-15 12:44:15', '2023-05-15 12:44:15', NULL),
(1263, 'info', '127.0.0.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id1', '2023-05-15 12:58:06', '2023-05-15 12:58:06', NULL),
(1264, 'info', '127.0.0.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id1', '2023-05-15 13:03:29', '2023-05-15 13:03:29', NULL),
(1265, 'info', '127.0.0.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id3', '2023-05-15 13:04:15', '2023-05-15 13:04:15', NULL),
(1266, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-15 13:06:16', '2023-05-15 13:06:16', NULL),
(1267, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-15 13:06:21', '2023-05-15 13:06:21', NULL),
(1268, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-15 13:06:28', '2023-05-15 13:06:28', NULL),
(1269, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-15 13:06:31', '2023-05-15 13:06:31', NULL),
(1270, 'info', '192.168.43.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', 'Iniciou a Sessão', '2023-05-15 17:45:47', '2023-05-15 17:45:47', NULL),
(1271, 'info', '192.168.43.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-15 17:46:26', '2023-05-15 17:46:26', NULL),
(1272, 'info', '192.168.43.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', 'Terminou a Sessão', '2023-05-15 17:47:20', '2023-05-15 17:47:20', NULL),
(1273, 'info', '192.168.43.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', 'Iniciou a Sessão', '2023-05-15 17:48:26', '2023-05-15 17:48:26', NULL),
(1274, 'info', '192.168.43.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', 'Vizualizou o perfil com o identificador3', '2023-05-15 17:48:39', '2023-05-15 17:48:39', NULL),
(1275, 'info', '192.168.43.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-15 17:49:02', '2023-05-15 17:49:02', NULL),
(1276, 'info', '192.168.43.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id1', '2023-05-15 17:49:05', '2023-05-15 17:49:05', NULL),
(1277, 'info', '192.168.43.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-15 17:49:56', '2023-05-15 17:49:56', NULL),
(1278, 'info', '192.168.43.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id2', '2023-05-15 17:49:59', '2023-05-15 17:49:59', NULL),
(1279, 'info', '192.168.43.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', 'Listou utilizador com o id 3', '2023-05-15 17:50:07', '2023-05-15 17:50:07', NULL),
(1280, 'info', '192.168.43.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', 'Terminou a Sessão', '2023-05-15 17:50:23', '2023-05-15 17:50:23', NULL),
(1281, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-05-15 17:56:43', '2023-05-15 17:56:43', NULL),
(1282, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-05-15 17:56:52', '2023-05-15 17:56:52', NULL),
(1283, 'info', '192.168.43.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'Iniciou a Sessão', '2023-05-21 22:42:59', '2023-05-21 22:42:59', NULL),
(1284, 'info', '192.168.43.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-21 22:43:09', '2023-05-21 22:43:09', NULL),
(1285, 'info', '192.168.43.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-21 22:44:16', '2023-05-21 22:44:16', NULL),
(1286, 'info', '192.168.43.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id1', '2023-05-21 22:44:23', '2023-05-21 22:44:23', NULL),
(1287, 'info', '192.168.43.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-21 22:45:03', '2023-05-21 22:45:03', NULL),
(1288, 'info', '192.168.43.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id4', '2023-05-21 22:45:18', '2023-05-21 22:45:18', NULL),
(1289, 'info', '192.168.43.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'Entrou em Procurar Emprego', '2023-05-21 22:45:35', '2023-05-21 22:45:35', NULL),
(1290, 'info', '192.168.43.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'Terminou a Sessão', '2023-05-21 22:45:43', '2023-05-21 22:45:43', NULL),
(1291, 'info', '192.168.43.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'Iniciou a Sessão', '2023-05-21 22:46:32', '2023-05-21 22:46:32', NULL),
(1292, 'info', '192.168.43.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'Vizualizou o perfil com o identificador11', '2023-05-21 22:46:40', '2023-05-21 22:46:40', NULL),
(1293, 'info', '192.168.43.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'Terminou a Sessão', '2023-05-21 22:46:58', '2023-05-21 22:46:58', NULL),
(1294, 'info', '192.168.43.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'Iniciou a Sessão', '2023-05-21 22:47:10', '2023-05-21 22:47:10', NULL),
(1295, 'info', '192.168.43.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-05-21 22:47:38', '2023-05-21 22:47:38', NULL),
(1296, 'info', '192.168.43.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-05-21 22:47:51', '2023-05-21 22:47:51', NULL),
(1297, 'info', '192.168.43.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'Entrou  inscritos a vagas com o id1', '2023-05-21 22:47:56', '2023-05-21 22:47:56', NULL),
(1298, 'info', '192.168.43.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'Terminou a Sessão', '2023-05-21 22:48:19', '2023-05-21 22:48:19', NULL),
(1299, 'info', '192.168.43.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'Iniciou a Sessão', '2023-05-21 22:48:35', '2023-05-21 22:48:35', NULL),
(1300, 'info', '192.168.43.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-05-21 22:48:45', '2023-05-21 22:48:45', NULL),
(1301, 'info', '192.168.43.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'Entrou em Listas Utilizadores', '2023-05-21 22:49:02', '2023-05-21 22:49:02', NULL),
(1302, 'info', '192.168.43.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'Entrou em Listas de Vagas Publicadas', '2023-05-21 22:49:16', '2023-05-21 22:49:16', NULL),
(1303, 'info', '192.168.43.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'Listou utilizador com o id 1', '2023-05-21 22:49:38', '2023-05-21 22:49:38', NULL),
(1304, 'info', '192.168.43.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-05-21 22:50:01', '2023-05-21 22:50:01', NULL),
(1305, 'info', '192.168.43.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'Entrou  inscritos a vagas com o id1', '2023-05-21 22:50:05', '2023-05-21 22:50:05', NULL),
(1306, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-06-03 21:22:31', '2023-06-03 21:22:31', NULL),
(1307, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-06-03 21:22:42', '2023-06-03 21:22:42', NULL),
(1308, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-06-03 21:23:02', '2023-06-03 21:23:02', NULL),
(1309, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-06-03 21:23:55', '2023-06-03 21:23:55', NULL),
(1310, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-06-03 21:24:05', '2023-06-03 21:24:05', NULL),
(1311, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-06-03 21:24:22', '2023-06-03 21:24:22', NULL),
(1312, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em  cadastrar Minhas empresas cadastradas', '2023-06-03 21:24:56', '2023-06-03 21:24:56', NULL),
(1313, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-06-03 21:25:00', '2023-06-03 21:25:00', NULL),
(1314, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-06-03 21:25:02', '2023-06-03 21:25:02', NULL),
(1315, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-06-03 21:25:09', '2023-06-03 21:25:09', NULL),
(1316, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-06-03 21:41:15', '2023-06-03 21:41:15', NULL),
(1317, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Cadastrou uma vaga com o nome  Estágio de Contabilidade', '2023-06-03 21:42:39', '2023-06-03 21:42:39', NULL),
(1318, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-06-03 21:42:39', '2023-06-03 21:42:39', NULL),
(1319, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-06-03 21:43:54', '2023-06-03 21:43:54', NULL),
(1320, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-06-03 21:56:14', '2023-06-03 21:56:14', NULL),
(1321, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-06-03 22:22:38', '2023-06-03 22:22:38', NULL),
(1322, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Minhas empresas cadastradas', '2023-06-03 22:54:19', '2023-06-03 22:54:19', NULL),
(1323, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em  cadastrar Minhas empresas cadastradas', '2023-06-03 22:54:25', '2023-06-03 22:54:25', NULL),
(1324, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Listou utilizador com o id 5', '2023-06-03 22:54:30', '2023-06-03 22:54:30', NULL),
(1325, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-06-03 22:54:35', '2023-06-03 22:54:35', NULL),
(1326, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-06-03 22:54:44', '2023-06-03 22:54:44', NULL),
(1327, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-06-03 22:54:50', '2023-06-03 22:54:50', NULL),
(1328, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-06-03 22:55:14', '2023-06-03 22:55:14', NULL),
(1329, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id8', '2023-06-03 22:55:17', '2023-06-03 22:55:17', NULL),
(1330, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador11', '2023-06-03 22:55:24', '2023-06-03 22:55:24', NULL),
(1331, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id8', '2023-06-03 22:55:37', '2023-06-03 22:55:37', NULL),
(1332, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-06-03 22:55:43', '2023-06-03 22:55:43', NULL),
(1333, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-06-03 22:55:53', '2023-06-03 22:55:53', NULL),
(1334, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-06-03 22:56:03', '2023-06-03 22:56:03', NULL),
(1335, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-06-03 22:56:10', '2023-06-03 22:56:10', NULL),
(1336, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Listou categorias', '2023-06-03 22:56:19', '2023-06-03 22:56:19', NULL),
(1337, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'entrou em cadastrar  categorias', '2023-06-03 22:56:23', '2023-06-03 22:56:23', NULL),
(1338, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Criar uma Conta de Utilizador', '2023-06-03 22:56:28', '2023-06-03 22:56:28', NULL),
(1339, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Listas de Vagas Publicadas', '2023-06-03 22:56:38', '2023-06-03 22:56:38', NULL),
(1340, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-06-03 22:56:45', '2023-06-03 22:56:45', NULL),
(1341, 'info', '127.0.0.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-06-03 22:56:57', '2023-06-03 22:56:57', NULL),
(1342, 'info', '127.0.0.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-06-03 22:57:05', '2023-06-03 22:57:05', NULL),
(1343, 'info', '127.0.0.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-06-03 22:57:12', '2023-06-03 22:57:12', NULL),
(1344, 'info', '127.0.0.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id8', '2023-06-03 22:57:17', '2023-06-03 22:57:17', NULL),
(1345, 'info', '127.0.0.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-06-03 22:57:29', '2023-06-03 22:57:29', NULL),
(1346, 'info', '127.0.0.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Minhas inscrições de vagas', '2023-06-03 22:57:35', '2023-06-03 22:57:35', NULL),
(1347, 'info', '127.0.0.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Entrou  em Procurar Vagas', '2023-06-03 22:57:38', '2023-06-03 22:57:38', NULL),
(1348, 'info', '127.0.0.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Listou utilizador com o id 3', '2023-06-03 22:57:45', '2023-06-03 22:57:45', NULL),
(1349, 'info', '127.0.0.1', NULL, 'Armando João Correia', '3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-06-03 22:57:56', '2023-06-03 22:57:56', NULL),
(1350, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-06-03 22:58:13', '2023-06-03 22:58:13', NULL),
(1351, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-06-03 22:58:23', '2023-06-03 22:58:23', NULL),
(1352, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-06-03 22:58:55', '2023-06-03 22:58:55', NULL),
(1353, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-06-03 22:59:06', '2023-06-03 22:59:06', NULL),
(1354, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-06-03 22:59:20', '2023-06-03 22:59:20', NULL),
(1355, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de inscritos ', '2023-06-03 22:59:34', '2023-06-03 22:59:34', NULL),
(1356, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-06-03 23:00:03', '2023-06-03 23:00:03', NULL),
(1357, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-06-03 23:00:18', '2023-06-03 23:00:18', NULL),
(1358, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de inscritos ', '2023-06-03 23:00:25', '2023-06-03 23:00:25', NULL),
(1359, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-06-03 23:00:51', '2023-06-03 23:00:51', NULL),
(1360, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-06-03 23:01:01', '2023-06-03 23:01:01', NULL),
(1361, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de inscritos ', '2023-06-03 23:01:05', '2023-06-03 23:01:05', NULL),
(1362, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de inscritos ', '2023-06-03 23:02:33', '2023-06-03 23:02:33', NULL);
INSERT INTO `logs` (`id`, `level`, `REMOTE_ADDR`, `PATH_INFO`, `USER_NAME`, `USER_ID`, `HTTP_USER_AGENT`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1363, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de inscritos ', '2023-06-03 23:02:50', '2023-06-03 23:02:50', NULL),
(1364, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-06-03 23:03:00', '2023-06-03 23:03:00', NULL),
(1365, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-06-04 14:45:56', '2023-06-04 14:45:56', NULL),
(1366, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Imprimiu uma lista de inscritos ', '2023-06-04 15:21:27', '2023-06-04 15:21:27', NULL),
(1367, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador11', '2023-06-04 15:26:25', '2023-06-04 15:26:25', NULL),
(1368, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Listou utilizador com o id 1', '2023-06-04 15:33:40', '2023-06-04 15:33:40', NULL),
(1369, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-06-07 12:45:56', '2023-06-07 12:45:56', NULL),
(1370, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-06-07 12:46:15', '2023-06-07 12:46:15', NULL),
(1371, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-06-07 12:46:28', '2023-06-07 12:46:28', NULL),
(1372, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-06-07 12:46:41', '2023-06-07 12:46:41', NULL),
(1373, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-06-07 12:46:51', '2023-06-07 12:46:51', NULL),
(1374, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-06-07 12:47:15', '2023-06-07 12:47:15', NULL),
(1375, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-06-07 12:47:34', '2023-06-07 12:47:34', NULL),
(1376, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Listou utilizador com o id 5', '2023-06-07 12:47:50', '2023-06-07 12:47:50', NULL),
(1377, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-06-07 12:47:52', '2023-06-07 12:47:52', NULL),
(1378, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-06-07 12:48:13', '2023-06-07 12:48:13', NULL),
(1379, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-06-07 12:48:42', '2023-06-07 12:48:42', NULL),
(1380, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-06-07 13:50:58', '2023-06-07 13:50:58', NULL),
(1381, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-06-07 13:51:06', '2023-06-07 13:51:06', NULL),
(1382, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-06-07 14:03:43', '2023-06-07 14:03:43', NULL),
(1383, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Cadastrou uma vaga com o nome  Estágio de Hardware', '2023-06-07 14:06:00', '2023-06-07 14:06:00', NULL),
(1384, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou em Lista de Vagas Publicadas', '2023-06-07 14:06:00', '2023-06-07 14:06:00', NULL),
(1385, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-06-07 14:06:18', '2023-06-07 14:06:18', NULL),
(1386, 'info', '127.0.0.1', NULL, 'Armando da Costa', '15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-06-07 16:48:29', '2023-06-07 16:48:29', NULL),
(1387, 'info', '127.0.0.1', NULL, 'Armando da Costa', '15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-06-07 16:48:53', '2023-06-07 16:48:53', NULL),
(1388, 'info', '127.0.0.1', NULL, 'Armando da Costa', '15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-06-07 16:49:16', '2023-06-07 16:49:16', NULL),
(1389, 'info', '127.0.0.1', NULL, 'Armando da Costa', '15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-06-07 16:54:54', '2023-06-07 16:54:54', NULL),
(1390, 'info', '127.0.0.1', NULL, 'Armando da Costa', '15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-06-07 16:54:56', '2023-06-07 16:54:56', NULL),
(1391, 'info', '127.0.0.1', NULL, 'Armando da Costa', '15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-06-07 16:55:24', '2023-06-07 16:55:24', NULL),
(1392, 'info', '127.0.0.1', NULL, 'Armando da Costa', '15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Editou  Perfil', '2023-06-07 16:55:50', '2023-06-07 16:55:50', NULL),
(1393, 'info', '127.0.0.1', NULL, 'Armando da Costa', '15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-06-07 16:55:51', '2023-06-07 16:55:51', NULL),
(1394, 'info', '127.0.0.1', NULL, 'Armando da Costa', '15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador15', '2023-06-07 16:55:59', '2023-06-07 16:55:59', NULL),
(1395, 'info', '127.0.0.1', NULL, 'Armando da Costa', '15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-06-07 16:56:25', '2023-06-07 16:56:25', NULL),
(1396, 'info', '127.0.0.1', NULL, 'Armando da Costa', '15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou em Procurar Emprego', '2023-06-07 16:56:35', '2023-06-07 16:56:35', NULL),
(1397, 'info', '127.0.0.1', NULL, 'Armando da Costa', '15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou em datalhes da   procurar emprego com o id9', '2023-06-07 16:56:55', '2023-06-07 16:56:55', NULL),
(1398, 'info', '127.0.0.1', NULL, 'Armando da Costa', '15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Se inscreveu em uma vaga com o id9', '2023-06-07 16:57:17', '2023-06-07 16:57:17', NULL),
(1399, 'info', '127.0.0.1', NULL, 'Armando da Costa', '15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou  em Minhas inscrições de vagas', '2023-06-07 16:57:18', '2023-06-07 16:57:18', NULL),
(1400, 'info', '127.0.0.1', NULL, 'Armando da Costa', '15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-06-07 16:57:42', '2023-06-07 16:57:42', NULL),
(1401, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-06-07 16:57:52', '2023-06-07 16:57:52', NULL),
(1402, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-06-07 16:57:57', '2023-06-07 16:57:57', NULL),
(1403, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id9', '2023-06-07 16:58:06', '2023-06-07 16:58:06', NULL),
(1404, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador15', '2023-06-07 16:58:16', '2023-06-07 16:58:16', NULL),
(1405, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Aprovou candidato inscrito na vaga com identificador17', '2023-06-07 16:58:28', '2023-06-07 16:58:28', NULL),
(1406, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou  inscritos a vagas com o id9', '2023-06-07 16:58:29', '2023-06-07 16:58:29', NULL),
(1407, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-06-07 17:09:45', '2023-06-07 17:09:45', NULL),
(1408, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou em criar  Lista de Vagas ', '2023-06-07 17:10:17', '2023-06-07 17:10:17', NULL),
(1409, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-06-07 17:17:30', '2023-06-07 17:17:30', NULL),
(1410, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-06-07 17:19:09', '2023-06-07 17:19:09', NULL),
(1411, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-06-07 17:20:04', '2023-06-07 17:20:04', NULL),
(1412, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-06-07 18:23:18', '2023-06-07 18:23:18', NULL),
(1413, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-06-08 07:45:05', '2023-06-08 07:45:05', NULL),
(1414, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Listou categorias', '2023-06-08 07:46:55', '2023-06-08 07:46:55', NULL),
(1415, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou em Listas Utilizadores', '2023-06-08 07:47:17', '2023-06-08 07:47:17', NULL),
(1416, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou em Solicitações de Empresas', '2023-06-08 07:47:32', '2023-06-08 07:47:32', NULL),
(1417, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou em Listas de Vagas Publicadas', '2023-06-08 07:47:45', '2023-06-08 07:47:45', NULL),
(1418, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou  em Lista de Vagas Publicadas', '2023-06-08 07:47:55', '2023-06-08 07:47:55', NULL),
(1419, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-06-08 07:48:01', '2023-06-08 07:48:01', NULL),
(1420, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'Iniciou a Sessão', '2023-06-08 07:52:09', '2023-06-08 07:52:09', NULL),
(1421, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'Entrou  em Minhas empresas cadastradas', '2023-06-08 07:52:20', '2023-06-08 07:52:20', NULL),
(1422, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'Entrou  em Minhas empresas cadastradas', '2023-06-08 07:53:40', '2023-06-08 07:53:40', NULL),
(1423, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'entrou em  editar uma empresa com o nomeAngola Telecom', '2023-06-08 07:53:51', '2023-06-08 07:53:51', NULL),
(1424, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'Entrou  em  cadastrar Minhas empresas cadastradas', '2023-06-08 07:54:10', '2023-06-08 07:54:10', NULL),
(1425, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'Entrou em Lista de Vagas Publicadas', '2023-06-08 07:54:25', '2023-06-08 07:54:25', NULL),
(1426, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'Entrou em criar  Lista de Vagas ', '2023-06-08 07:54:32', '2023-06-08 07:54:32', NULL),
(1427, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'Entrou  em Lista de Vagas Publicadas', '2023-06-08 07:54:48', '2023-06-08 07:54:48', NULL),
(1428, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'Entrou  em Lista de Vagas Publicadas', '2023-06-08 07:55:05', '2023-06-08 07:55:05', NULL),
(1429, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'Entrou em Lista de Vagas Publicadas', '2023-06-08 07:55:12', '2023-06-08 07:55:12', NULL),
(1430, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'Entrou  em Lista de Vagas Publicadas', '2023-06-08 07:55:26', '2023-06-08 07:55:26', NULL),
(1431, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'Entrou em Lista de Vagas Publicadas', '2023-06-08 07:55:31', '2023-06-08 07:55:31', NULL),
(1432, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'Entrou  em Lista de Vagas Publicadas', '2023-06-08 07:55:36', '2023-06-08 07:55:36', NULL),
(1433, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'Entrou  inscritos a vagas com o id8', '2023-06-08 07:56:03', '2023-06-08 07:56:03', NULL),
(1434, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'Entrou em Lista de Vagas Publicadas', '2023-06-08 07:56:12', '2023-06-08 07:56:12', NULL),
(1435, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'Eliminou uma vaga com o id 8', '2023-06-08 07:56:20', '2023-06-08 07:56:20', NULL),
(1436, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'Entrou em Lista de Vagas Publicadas', '2023-06-08 07:56:20', '2023-06-08 07:56:20', NULL),
(1437, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'Entrou em Lista de Vagas Publicadas', '2023-06-08 07:57:12', '2023-06-08 07:57:12', NULL),
(1438, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'Entrou em Lista de Vagas Publicadas', '2023-06-08 07:57:21', '2023-06-08 07:57:21', NULL),
(1439, 'info', '127.0.0.1', NULL, 'Ariclene Gaspar', '5', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'Imprimiu uma lista de vagas ', '2023-06-08 07:57:51', '2023-06-08 07:57:51', NULL),
(1440, 'info', '127.0.0.1', NULL, 'Armando da Costa', '15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.37', 'Iniciou a Sessão', '2023-06-08 08:00:32', '2023-06-08 08:00:32', NULL),
(1441, 'info', '127.0.0.1', NULL, 'Armando da Costa', '15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.37', 'Entrou  em Procurar Vagas', '2023-06-08 08:01:05', '2023-06-08 08:01:05', NULL),
(1442, 'info', '127.0.0.1', NULL, 'Armando da Costa', '15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.37', 'Entrou em editar Perfil', '2023-06-08 08:01:16', '2023-06-08 08:01:16', NULL),
(1443, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-06-08 14:36:53', '2023-06-08 14:36:53', NULL),
(1444, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-06-08 14:43:47', '2023-06-08 14:43:47', NULL),
(1445, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-06-08 14:48:03', '2023-06-08 14:48:03', NULL),
(1446, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-06-08 14:50:32', '2023-06-08 14:50:32', NULL),
(1447, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de inscritos ', '2023-06-08 14:50:39', '2023-06-08 14:50:39', NULL),
(1448, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-06-08 14:50:48', '2023-06-08 14:50:48', NULL),
(1449, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de inscritos ', '2023-06-08 14:51:00', '2023-06-08 14:51:00', NULL),
(1450, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-06-08 14:51:22', '2023-06-08 14:51:22', NULL),
(1451, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de inscritos ', '2023-06-08 14:51:37', '2023-06-08 14:51:37', NULL),
(1452, 'info', '127.0.0.1', NULL, 'Marcelina João', '13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-06-08 14:51:52', '2023-06-08 14:51:52', NULL),
(1453, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-06-08 14:52:06', '2023-06-08 14:52:06', NULL),
(1454, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-06-08 14:52:16', '2023-06-08 14:52:16', NULL),
(1455, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de inscritos ', '2023-06-08 14:52:24', '2023-06-08 14:52:24', NULL),
(1456, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-06-08 15:03:17', '2023-06-08 15:03:17', NULL),
(1457, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de inscritos ', '2023-06-08 15:07:17', '2023-06-08 15:07:17', NULL),
(1458, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-06-08 15:07:49', '2023-06-08 15:07:49', NULL),
(1459, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Listou categorias', '2023-06-08 15:08:14', '2023-06-08 15:08:14', NULL),
(1460, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de inscritos ', '2023-06-08 15:12:01', '2023-06-08 15:12:01', NULL),
(1461, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de inscritos ', '2023-06-08 15:13:53', '2023-06-08 15:13:53', NULL),
(1462, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-06-08 15:14:31', '2023-06-08 15:14:31', NULL),
(1463, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de inscritos ', '2023-06-08 15:14:36', '2023-06-08 15:14:36', NULL),
(1464, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-06-08 15:16:32', '2023-06-08 15:16:32', NULL),
(1465, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de inscritos ', '2023-06-08 15:16:43', '2023-06-08 15:16:43', NULL),
(1466, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-06-08 15:17:23', '2023-06-08 15:17:23', NULL),
(1467, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-06-08 15:17:41', '2023-06-08 15:17:41', NULL),
(1468, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-06-08 15:17:54', '2023-06-08 15:17:54', NULL),
(1469, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de inscritos ', '2023-06-08 15:22:05', '2023-06-08 15:22:05', NULL),
(1470, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-06-08 15:22:11', '2023-06-08 15:22:11', NULL),
(1471, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-06-08 15:27:41', '2023-06-08 15:27:41', NULL),
(1472, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de inscritos ', '2023-06-08 15:28:06', '2023-06-08 15:28:06', NULL),
(1473, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de inscritos ', '2023-06-08 15:29:13', '2023-06-08 15:29:13', NULL),
(1474, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de inscritos ', '2023-06-08 15:29:36', '2023-06-08 15:29:36', NULL),
(1475, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de inscritos ', '2023-06-08 15:30:59', '2023-06-08 15:30:59', NULL),
(1476, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-06-08 15:34:39', '2023-06-08 15:34:39', NULL),
(1477, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-06-08 15:35:54', '2023-06-08 15:35:54', NULL),
(1478, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de inscritos ', '2023-06-08 15:42:09', '2023-06-08 15:42:09', NULL),
(1479, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou em Listas de Vagas Publicadas', '2023-06-08 15:50:06', '2023-06-08 15:50:06', NULL),
(1480, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou em Listas de Vagas Publicadas', '2023-06-08 16:14:01', '2023-06-08 16:14:01', NULL),
(1481, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou em Listas de Vagas Publicadas', '2023-06-08 16:17:02', '2023-06-08 16:17:02', NULL),
(1482, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de Vagas por empresa ', '2023-06-08 16:17:09', '2023-06-08 16:17:09', NULL),
(1483, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de Vagas por empresa ', '2023-06-08 16:17:52', '2023-06-08 16:17:52', NULL),
(1484, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de Vagas por empresa ', '2023-06-08 16:18:36', '2023-06-08 16:18:36', NULL),
(1485, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de Vagas por empresa ', '2023-06-08 16:23:15', '2023-06-08 16:23:15', NULL),
(1486, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de Vagas por empresa ', '2023-06-08 16:23:29', '2023-06-08 16:23:29', NULL),
(1487, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de Vagas por empresa ', '2023-06-08 16:23:56', '2023-06-08 16:23:56', NULL),
(1488, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de Vagas por empresa ', '2023-06-08 16:24:19', '2023-06-08 16:24:19', NULL),
(1489, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de Vagas por empresa ', '2023-06-08 16:25:12', '2023-06-08 16:25:12', NULL),
(1490, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de Vagas por empresa ', '2023-06-08 16:35:35', '2023-06-08 16:35:35', NULL),
(1491, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de Vagas por empresa ', '2023-06-08 16:36:11', '2023-06-08 16:36:11', NULL),
(1492, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de Vagas por empresa ', '2023-06-08 16:36:36', '2023-06-08 16:36:36', NULL),
(1493, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de Vagas por empresa ', '2023-06-08 16:36:39', '2023-06-08 16:36:39', NULL),
(1494, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de Vagas por empresa ', '2023-06-08 16:38:03', '2023-06-08 16:38:03', NULL),
(1495, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou em Listas de Vagas Publicadas', '2023-06-08 16:40:50', '2023-06-08 16:40:50', NULL),
(1496, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou em Listas de Vagas Publicadas', '2023-06-08 16:41:08', '2023-06-08 16:41:08', NULL),
(1497, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou em Listas de Vagas Publicadas', '2023-06-08 16:41:30', '2023-06-08 16:41:30', NULL),
(1498, 'info', '127.0.0.1', NULL, 'Mário Costa', '6', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de Vagas por empresa', '2023-06-08 16:45:36', '2023-06-08 16:45:36', NULL),
(1499, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-06-08 16:52:04', '2023-06-08 16:52:04', NULL),
(1500, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Iniciou a Sessão', '2023-06-08 17:01:21', '2023-06-08 17:01:21', NULL),
(1501, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Entrou em editar Perfil', '2023-06-08 17:02:22', '2023-06-08 17:02:22', NULL),
(1502, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Vizualizou o perfil com o identificador11', '2023-06-08 17:02:26', '2023-06-08 17:02:26', NULL),
(1503, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de vagas ', '2023-06-08 17:10:00', '2023-06-08 17:10:00', NULL),
(1504, 'info', '127.0.0.1', NULL, 'Admin', '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Imprimiu uma lista de inscritos ', '2023-06-08 17:10:10', '2023-06-08 17:10:10', NULL),
(1505, 'info', '127.0.0.1', NULL, 'Paulo Severino', '11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Terminou a Sessão', '2023-06-08 18:22:14', '2023-06-08 18:22:14', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_03_122814_create_logs_table', 1),
(5, '2021_07_07_170747_create_configurations_table', 1),
(6, '2021_07_07_170747_create_slideshows_table', 1),
(7, '2021_08_04_181221_create_news_table', 1),
(8, '2021_08_07_082614_create_gallery_table', 1),
(9, '2022_02_26_163631_create_vagas_table', 1),
(10, '2022_02_26_193514_create_categoria_vaga_table', 1),
(11, '2022_02_27_131055_create_dados_perfil_table', 1),
(12, '2022_02_27_172509_create_categoria_usuario_table', 1),
(13, '2022_02_27_174355_create_candidaturas_table', 1),
(14, '2022_02_27_182002_create_sms_table', 1),
(15, '2022_03_16_112650_create_empresas_table', 1),
(16, '2022_04_22_135449_create_categorias_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `typewriter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ajc.correia31@gmail.com', '$2y$10$wZVbL1V1GVsZN7hddNvDm.alpSxT33RcSLQC6aQNM0hxdMYHwIugO', '2023-04-25 00:15:59'),
('mariobobota23@gmail.com', '$2y$10$tN01leBeWq0asuil7iAXE.kmo1hqhT2n3fXD.ECu.g5nsRoCp2MK6', '2023-05-24 21:42:40');

-- --------------------------------------------------------

--
-- Estrutura da tabela `slideshows`
--

CREATE TABLE `slideshows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sms`
--

CREATE TABLE `sms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_cliente` bigint(20) UNSIGNED NOT NULL,
  `nomeCategoria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tituloEmprego` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomeEmresa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sms`
--

INSERT INTO `sms` (`id`, `fk_cliente`, `nomeCategoria`, `tituloEmprego`, `nomeEmresa`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 'Técnico Médio de Informática', 'Técnico de Informática', 'ZAP', NULL, '2023-04-23 18:17:37', '2023-04-23 18:17:37'),
(2, 3, 'Técnico Médio de Informática', 'Técnico de Redes de Computadores', 'Africell', NULL, '2023-04-24 07:36:30', '2023-04-24 07:36:30'),
(3, 8, 'Técnico Médio de Informática', 'Técnico de Redes de Computadores', 'Africell', NULL, '2023-04-24 07:36:30', '2023-04-24 07:36:30'),
(9, 11, 'Ensino Médio Concluído', 'Estágio de Contabilidade', 'Angola Telecom', NULL, '2023-06-03 21:42:38', '2023-06-03 21:42:38'),
(10, 2, 'Ensino Médio Concluído', 'Estágio de Contabilidade', 'Angola Telecom', NULL, '2023-06-03 21:42:39', '2023-06-03 21:42:39'),
(11, 8, 'Técnico de Hardware', 'Estágio de Hardware', 'Angola Telecom', NULL, '2023-06-07 14:05:58', '2023-06-07 14:05:58'),
(12, 8, 'HelpDesk', 'Estágio de Hardware', 'Angola Telecom', NULL, '2023-06-07 14:05:59', '2023-06-07 14:05:59');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `provider_id`, `email`, `level`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, 'admin@jobs.com', 'Administrador-Master', '2023-04-23 14:00:14', '$2y$10$9n26UxJQDvlmlsD85WDtvu.habdX6O728YJcwC65YpNNiwZF6eLGm', 'ek4Yk0FGWFfc0YZqtygerU6xkHVWvl6fGCpZMq1rHa8TFoCn9sgRxWmu11rb', '2023-04-23 14:00:15', '2023-04-23 14:00:15'),
(2, 'Adilson J. R da Costa', 'adicosta', NULL, 'adilsondacosta97@gmail.com', 'cliente', NULL, '$2y$10$D.0DPau3hS4do7PP1ntPU.oy.WOP3FdhqghjbjoO2cCTD34X/mOMa', NULL, '2023-04-23 12:03:51', '2023-05-13 16:45:10'),
(3, 'Armando João Correia', 'armando31', NULL, 'ajc.correia31@gmail.com', 'cliente', NULL, '$2y$10$q6my5df0jkOc.sjN4oO4WulGiFrjHoAxCmKnTlXCHf7IKgSqsJRO6', NULL, '2023-04-23 12:53:25', '2023-05-13 16:46:43'),
(4, 'Osvaldo Fidel Jeremias', 'osvaldo', NULL, 'osvaldojeremias@gmail.com', 'cliente', NULL, '$2y$10$T9lDHIhuhdoRpcSQEXn0tOP3KVmP4CF5ypxCZtLpN/mnUQuU3kBhe', NULL, '2023-04-23 12:54:22', '2023-05-13 16:47:17'),
(5, 'Ariclene Gaspar', 'ariclene', NULL, 'ariclenegaspar23@gmail.com', 'Administrador', NULL, '$2y$10$utyUQFl6nHoToDZ4bDVFweJIMAMz43PbiYDBi5ft/ydBuMyBpoH1S', NULL, '2023-04-23 12:55:20', '2023-04-23 12:55:20'),
(6, 'Mário Costa', 'mario', NULL, 'mariobobota23@gmail.com', 'Administrador', NULL, '$2y$10$T9HHzJ7GDPpycVhB74Qn1OLGXZolDgaeRttyaYFcV/jUDOC8KJ6.W', 'k0FeCFu7tkPgLNUEa2F85Zr1zTVLxBTHO1xmv6SZDq0tmDCLzZhx0a0132LT', '2023-03-24 17:30:33', '2023-05-15 17:56:34'),
(7, 'Mateus Francisco', 'mateus', NULL, 'mateus@gmail.com', 'cliente', NULL, '$2y$10$PBhZVn7cdrjmtlgdcK3oOevblXHgTY.yP/U5Xv.YgHMpymFK/W12a', NULL, '2023-04-23 13:27:44', '2023-04-23 13:27:44'),
(8, 'Nilton Tomé', 'nilton', NULL, 'nilton@gmail.com', 'cliente', NULL, '$2y$10$yrv4HdNvTTZTW3C2/SDErOIEVMijrrHa1CTcmSnbaWVAgmA.GVyQ.', NULL, '2023-04-23 13:28:17', '2023-04-23 13:28:17'),
(9, 'Ernesto Sonjamba', 'ernesto', NULL, 'ernesto@gmail.com', 'cliente', NULL, '$2y$10$v.G6iyeJdRQ.dkIqGO8B6ejRCZ2YFjrhHPARvoeyiMLPgjMK9ENri', NULL, '2023-04-23 13:29:44', '2023-04-23 13:29:44'),
(10, 'Edson Costa', 'edson', NULL, 'edmardacosta19@gmail.com', 'cliente', NULL, '$2y$10$y6KHFZpxRViKFdMeA/jeIOlQhjaY2BIcjyEjE2DL.m1/ph7KvWgLC', NULL, '2023-04-23 13:32:52', '2023-05-13 18:17:48'),
(11, 'Paulo Severino', 'paulo', NULL, 'pauloseverino@gmail.com', 'cliente', NULL, '$2y$10$SF8z6tpriluA.1TyBcLwguCIr4I.W22ynHrDg./0S.lVVU3VsqHRS', NULL, '2023-04-23 13:37:59', '2023-04-23 13:37:59'),
(12, 'César Ronaldo', 'cesar', NULL, 'cesar@gmail.com', 'cliente', NULL, '$2y$10$K3bjbqRXFTaY.RdwfDp/h.ABz9CWW2BRppWLSU7.9nswT2SadMAHO', NULL, '2023-04-23 13:38:53', '2023-05-13 16:49:58'),
(13, 'Marcelina João', 'marcelina', NULL, 'marcelinajoao192@gmail.com', 'Administrador', NULL, '$2y$10$bWClEUDRZvNs.Bslj4douejEHg9vvJUUEqIVyJm9KXvhaejJdVp4K', NULL, '2023-04-23 13:41:19', '2023-04-23 13:41:19'),
(15, 'Armando da Costa', 'armando', NULL, 'armandocosta@gmail.com', 'cliente', NULL, '$2y$10$OjdIISxMsMSGOsJ4KkFU2O4iGzih.2a8v7AAXvPA9J6013.pzwXa2', NULL, '2023-05-13 17:27:24', '2023-05-13 17:34:49'),
(16, 'Valeriano Messele', 'valeriano', NULL, 'valeriano@gmail.com', 'cliente', NULL, '$2y$10$Da5iTDflIABg6DlhZ/eMOeXF.88druVK1kNUq95wPDmy3oeqxOyqe', NULL, '2023-05-13 17:37:23', '2023-05-13 17:37:23'),
(17, 'Victor Miguel', 'victor', NULL, 'victormiguel@gmail.com', 'cliente', NULL, '$2y$10$tZz3AeDO9L84ly6eAHVM7eQrfEvy88BoPvfaugajcvkkjHO96SCMO', NULL, '2023-05-13 17:39:15', '2023-05-13 17:39:15'),
(18, 'Nsungo Pedro', 'nsungo', NULL, 'nsungo@gmail.com', 'cliente', NULL, '$2y$10$AUFVda2eBHG27flhyJrk8.NZ8CIwCo3ySed9A1kQZeu0NQK87cvAa', NULL, '2023-05-13 17:42:59', '2023-05-13 17:42:59'),
(19, 'Filomena Gaspar', 'filomena', NULL, 'filomena@gmail.com', 'cliente', NULL, '$2y$10$IGdztXNBupKzQGzLKFjVvuHmD2FwYxE.0mpILLkHg3kbSFj9tveNu', NULL, '2023-05-13 17:45:14', '2023-05-13 17:45:14'),
(20, 'Albertina Costa', 'albertina', NULL, 'albertina@gmail.com', 'cliente', NULL, '$2y$10$lpIXAMhb6mVAnpDl4B2AKuNAdl9oEFvR.Q2PmkqiCdZAjqmpTm54.', NULL, '2023-05-13 17:46:45', '2023-05-13 17:46:45'),
(21, 'Aníbal Armando da Costa', 'anibal', NULL, 'anibal@gmail.com', 'cliente', NULL, '$2y$10$L5hPA9Xkss/oKe2/Slr5ZOOSAmUizEf3Ba27cZPQiWjjk15mAZ7T6', NULL, '2023-05-13 18:02:39', '2023-05-13 18:02:39');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vagas`
--

CREATE TABLE `vagas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_user` bigint(20) UNSIGNED NOT NULL,
  `tituloEmprego` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagemEmprego` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emailEmprego` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempoEmprego` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomeEmresa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefoneEmprego` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricaoEmpreego` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempoVaga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataVaga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `vagas`
--

INSERT INTO `vagas` (`id`, `fk_user`, `tituloEmprego`, `imagemEmprego`, `emailEmprego`, `tempoEmprego`, `nomeEmresa`, `telefoneEmprego`, `descricaoEmpreego`, `tempoVaga`, `dataVaga`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 13, 'Técnico de Informática', 'photoEmployee/photoEmployee-3644576414db2d.png', 'zap@gov.co.ao', 'Trabalho a Distância', 'ZAP', '935555500', 'Precisamos de técnicos com habilidades em redes e programação', '6', '2023-04-30', NULL, '2023-04-23 18:17:37', '2023-04-23 19:49:24'),
(2, 6, 'Técnico de Redes de Computadores', 'photoEmployee/photoEmployee-16446317d9d912.jpg', 'aficell@co.ao', 'Contrato', 'Africell', '950180123', 'Precisamos de candidatos com as seguintes habilidades', '6', '2023-04-28', NULL, '2023-04-24 07:36:29', '2023-04-24 07:41:29'),
(3, 5, 'Administrador de Redes', 'photoEmployee/photoEmployee-4645058206e93d.jpg', 'angola.telecom@gov.ao', 'Tempo Inteiro', 'Angola Telecom', '996699665', 'Aproveite, Vagas limitadas', '6', '2023-05-04', NULL, '2023-05-02 00:24:00', '2023-05-02 00:24:00'),
(4, 5, 'Gestor de tráfego', 'photoEmployee/photoEmployee-2645058d496f77.png', 'angola.telecom@gov.ao', 'Tempo Inteiro', 'Angola Telecom', '996699665', 'Aproveite, Vagas Limitadas', '10', '2023-05-04', NULL, '2023-05-02 00:27:00', '2023-05-02 00:27:00'),
(5, 5, 'Programador Full-Stack', 'photoEmployee/photoEmployee-264505a4860bc2.jpg', 'digital.ao@gov.ao', 'Trabalho a Distância', 'Digital AO', '925252530', 'Aproveite esta oportunidade para desenvolver sistemas incríveis', '5', '2023-05-04', NULL, '2023-05-02 00:33:12', '2023-05-02 00:33:12'),
(6, 5, 'Professor de Línguas', 'photoEmployee/photoEmployee-2645058d496f77.jpg', 'angola.telecom@gov.ao', 'Tempo Inteiro', 'Angola Telecom', '996699665', 'Aproveite essa oportunidade', '4', '2023-05-04', NULL, '2023-05-02 00:39:45', '2023-05-02 00:39:45'),
(8, 5, 'Estágio de Contabilidade', 'photoEmployee/photoEmployee-1647bb3cde8251.png', 'angola.telecom@gov.ao', 'Estágio', 'Angola Telecom', '996699665', 'Aproveite essa oportunidade', '18', '2023-06-14', NULL, '2023-06-03 21:42:38', '2023-06-08 07:56:20'),
(9, 5, 'Estágio de Hardware', 'photoEmployee/photoEmployee-264808ec5af773.jpg', 'angola.telecom@gov.ao', 'Estágio', 'Angola Telecom', '996699665', 'Precisamos de técnicos capacitados', '4', '2023-06-15', NULL, '2023-06-07 14:05:58', '2023-06-07 16:58:27');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `candidaturas`
--
ALTER TABLE `candidaturas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidaturas_fk_cliente_foreign` (`fk_cliente`),
  ADD KEY `candidaturas_fk_publicador_foreign` (`fk_publicador`),
  ADD KEY `candidaturas_fk_vaga_foreign` (`fk_vaga`);

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categoria_usuario`
--
ALTER TABLE `categoria_usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_usuario_fk_cliente_foreign` (`fk_cliente`);

--
-- Índices para tabela `categoria_vaga`
--
ALTER TABLE `categoria_vaga`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_vaga_fk_categoria_foreign` (`fk_categoria`);

--
-- Índices para tabela `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `dados_perfil`
--
ALTER TABLE `dados_perfil`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dados_perfil_fk_user_foreign` (`fk_user`);

--
-- Índices para tabela `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empresas_fk_user_foreign` (`fk_user`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `slideshows`
--
ALTER TABLE `slideshows`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sms_fk_cliente_foreign` (`fk_cliente`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Índices para tabela `vagas`
--
ALTER TABLE `vagas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vagas_fk_user_foreign` (`fk_user`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `candidaturas`
--
ALTER TABLE `candidaturas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de tabela `categoria_usuario`
--
ALTER TABLE `categoria_usuario`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `categoria_vaga`
--
ALTER TABLE `categoria_vaga`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `configurations`
--
ALTER TABLE `configurations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `dados_perfil`
--
ALTER TABLE `dados_perfil`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1506;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `slideshows`
--
ALTER TABLE `slideshows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `sms`
--
ALTER TABLE `sms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `vagas`
--
ALTER TABLE `vagas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `candidaturas`
--
ALTER TABLE `candidaturas`
  ADD CONSTRAINT `candidaturas_fk_cliente_foreign` FOREIGN KEY (`fk_cliente`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `candidaturas_fk_publicador_foreign` FOREIGN KEY (`fk_publicador`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `candidaturas_fk_vaga_foreign` FOREIGN KEY (`fk_vaga`) REFERENCES `vagas` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `categoria_usuario`
--
ALTER TABLE `categoria_usuario`
  ADD CONSTRAINT `categoria_usuario_fk_cliente_foreign` FOREIGN KEY (`fk_cliente`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `categoria_vaga`
--
ALTER TABLE `categoria_vaga`
  ADD CONSTRAINT `categoria_vaga_fk_categoria_foreign` FOREIGN KEY (`fk_categoria`) REFERENCES `vagas` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `dados_perfil`
--
ALTER TABLE `dados_perfil`
  ADD CONSTRAINT `dados_perfil_fk_user_foreign` FOREIGN KEY (`fk_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `empresas`
--
ALTER TABLE `empresas`
  ADD CONSTRAINT `empresas_fk_user_foreign` FOREIGN KEY (`fk_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `sms`
--
ALTER TABLE `sms`
  ADD CONSTRAINT `sms_fk_cliente_foreign` FOREIGN KEY (`fk_cliente`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `vagas`
--
ALTER TABLE `vagas`
  ADD CONSTRAINT `vagas_fk_user_foreign` FOREIGN KEY (`fk_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
