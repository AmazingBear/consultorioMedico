-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Nov-2021 às 14:58
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `consultorio`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add medico', 7, 'add_medico'),
(26, 'Can change medico', 7, 'change_medico'),
(27, 'Can delete medico', 7, 'delete_medico'),
(28, 'Can view medico', 7, 'view_medico'),
(29, 'Can add paciente', 8, 'add_paciente'),
(30, 'Can change paciente', 8, 'change_paciente'),
(31, 'Can delete paciente', 8, 'delete_paciente'),
(32, 'Can view paciente', 8, 'view_paciente'),
(33, 'Can add consulta', 9, 'add_consulta'),
(34, 'Can change consulta', 9, 'change_consulta'),
(35, 'Can delete consulta', 9, 'delete_consulta'),
(36, 'Can view consulta', 9, 'view_consulta'),
(37, 'Can add especializacao', 10, 'add_especializacao'),
(38, 'Can change especializacao', 10, 'change_especializacao'),
(39, 'Can delete especializacao', 10, 'delete_especializacao'),
(40, 'Can view especializacao', 10, 'view_especializacao');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$D7m5manXRBJf8o72jQIgU5$t4Hbl0vzmyLKnkfknUgextzM/Xip/p1/bTNWAxGwbew=', '2021-11-26 12:02:16.840039', 1, 'master', '', '', 'master@master.com', 1, 1, '2021-11-26 12:02:04.479977');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-11-26 12:02:32.930817', '1', '1', 1, '[{\"added\": {}}]', 10, 1),
(2, '2021-11-26 12:02:37.425009', '2', '2', 1, '[{\"added\": {}}]', 10, 1),
(3, '2021-11-26 12:02:40.422697', '3', '3', 1, '[{\"added\": {}}]', 10, 1),
(4, '2021-11-26 12:02:43.624427', '4', '4', 1, '[{\"added\": {}}]', 10, 1),
(5, '2021-11-26 12:02:46.584113', '5', '5', 1, '[{\"added\": {}}]', 10, 1),
(6, '2021-11-26 12:02:50.405255', '6', '6', 1, '[{\"added\": {}}]', 10, 1),
(7, '2021-11-26 12:02:54.989301', '7', '7', 1, '[{\"added\": {}}]', 10, 1),
(8, '2021-11-26 12:02:58.285836', '8', '8', 1, '[{\"added\": {}}]', 10, 1),
(9, '2021-11-26 12:28:19.724149', '1', 'Testando da Silva', 1, '[{\"added\": {}}]', 7, 1),
(10, '2021-11-26 12:34:08.062978', '1', 'Francisco da Silva', 1, '[{\"added\": {}}]', 8, 1),
(11, '2021-11-26 12:34:20.478893', '1', '1', 1, '[{\"added\": {}}]', 9, 1),
(12, '2021-11-26 12:56:05.882700', '1', 'Testando da Silva', 3, '', 7, 1),
(13, '2021-11-26 12:57:49.625330', '1', 'Testando da Silva', 3, '', 7, 1),
(14, '2021-11-26 13:13:30.486078', '2', 'PacientePaciente', 3, '', 8, 1),
(15, '2021-11-26 13:13:30.532441', '1', 'Francisco da Silva', 3, '', 8, 1),
(16, '2021-11-26 13:13:41.076535', '1', '1', 3, '', 9, 1),
(17, '2021-11-26 13:13:47.829654', '3', 'awfawfawf', 3, '', 7, 1),
(18, '2021-11-26 13:13:47.866143', '2', 'Testando da Silva', 3, '', 7, 1),
(19, '2021-11-26 13:13:47.961146', '1', 'Testando da Silva', 3, '', 7, 1),
(20, '2021-11-26 13:13:53.554573', '2', 'PacientePaciente', 3, '', 8, 1),
(21, '2021-11-26 13:13:53.593119', '1', 'Francisco da Silva', 3, '', 8, 1),
(22, '2021-11-26 13:46:58.875187', '2', '2', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'home', 'consulta'),
(10, 'home', 'especializacao'),
(7, 'home', 'medico'),
(8, 'home', 'paciente'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-11-26 12:00:39.095515'),
(2, 'auth', '0001_initial', '2021-11-26 12:00:44.164111'),
(3, 'admin', '0001_initial', '2021-11-26 12:00:45.572531'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-11-26 12:00:45.624576'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-11-26 12:00:45.670412'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-11-26 12:00:47.032455'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-11-26 12:00:47.757188'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-11-26 12:00:47.840725'),
(9, 'auth', '0004_alter_user_username_opts', '2021-11-26 12:00:47.898829'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-11-26 12:00:48.418077'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-11-26 12:00:48.468395'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-11-26 12:00:48.510589'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-11-26 12:00:48.635617'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-11-26 12:00:48.742312'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-11-26 12:00:48.898505'),
(16, 'auth', '0011_update_proxy_permissions', '2021-11-26 12:00:48.938734'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-11-26 12:00:49.033167'),
(18, 'home', '0001_initial', '2021-11-26 12:00:50.869033'),
(19, 'home', '0002_alter_consulta_medico', '2021-11-26 12:00:52.235054'),
(20, 'home', '0003_auto_20211124_1046', '2021-11-26 12:00:52.793535'),
(21, 'home', '0004_paciente_senha', '2021-11-26 12:00:52.890262'),
(22, 'home', '0005_auto_20211126_0826', '2021-11-26 12:00:54.380482'),
(23, 'home', '0006_alter_especializacao_especializacao', '2021-11-26 12:00:54.412476'),
(24, 'home', '0007_alter_especializacao_especializacao', '2021-11-26 12:00:54.458602'),
(25, 'home', '0008_alter_especializacao_especializacao', '2021-11-26 12:00:54.604483'),
(26, 'sessions', '0001_initial', '2021-11-26 12:00:55.305872'),
(27, 'home', '0009_alter_medico_especializacao', '2021-11-26 12:06:36.131328');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('y5o98kzdnvisa5bwzt66trsw7n6qd6fq', '.eJxVjDsOwyAQRO9CHaEFAwsp0_sMaPkFJxGWjF1FuXtsyUXSjea9mTfztK3Vbz0vfkrsygS7_HaB4jO3A6QHtfvM49zWZQr8UPhJOx_nlF-30_07qNTrvkYsVgWjklRgBZLWKNDEorSDgs5JAEQLe4rBFIHSOlfIaAFJDoMk9vkCo7U2FQ:1mqZvk:bG0sKvejZGk7x6Jvgm3NaQgQSeYf1DgSvvtX-aQ7oP0', '2021-12-10 12:02:16.871184');

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_consulta`
--

CREATE TABLE `home_consulta` (
  `id` bigint(20) NOT NULL,
  `medico_id` bigint(20) NOT NULL,
  `diahorario` datetime(6) NOT NULL,
  `paciente_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `home_consulta`
--

INSERT INTO `home_consulta` (`id`, `medico_id`, `diahorario`, `paciente_id`) VALUES
(2, 4, '2021-12-31 13:46:48.000000', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_especializacao`
--

CREATE TABLE `home_especializacao` (
  `id` bigint(20) NOT NULL,
  `especializacao` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `home_especializacao`
--

INSERT INTO `home_especializacao` (`id`, `especializacao`) VALUES
(1, 'Cardiologista'),
(2, 'Pediatra'),
(3, 'Urologista'),
(4, 'Geriatria'),
(5, 'Oftalmologista'),
(6, 'Dermatologia'),
(7, 'Emergência'),
(8, 'Infectologia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_medico`
--

CREATE TABLE `home_medico` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `especializacao_id` bigint(20) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `home_medico`
--

INSERT INTO `home_medico` (`id`, `nome`, `especializacao_id`, `foto`) VALUES
(4, 'Medico Bom', 6, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `home_paciente`
--

CREATE TABLE `home_paciente` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `endereco` varchar(40) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `home_paciente`
--

INSERT INTO `home_paciente` (`id`, `nome`, `cpf`, `telefone`, `endereco`, `email`, `senha`) VALUES
(3, 'Jeronimo Souza', '12345678912', '13442534423', 'Rua 9', 'Jero@jero.com', 'jeronimo123');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices para tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Índices para tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Índices para tabela `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Índices para tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Índices para tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Índices para tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Índices para tabela `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Índices para tabela `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Índices para tabela `home_consulta`
--
ALTER TABLE `home_consulta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_consulta_paciente_id_cdaf67cf_fk_home_paciente_id` (`paciente_id`),
  ADD KEY `home_consulta_medico_id_7d79f074` (`medico_id`);

--
-- Índices para tabela `home_especializacao`
--
ALTER TABLE `home_especializacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `home_medico`
--
ALTER TABLE `home_medico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_medico_especializacao_id_06ad38bc` (`especializacao_id`);

--
-- Índices para tabela `home_paciente`
--
ALTER TABLE `home_paciente`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `home_consulta`
--
ALTER TABLE `home_consulta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `home_especializacao`
--
ALTER TABLE `home_especializacao`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `home_medico`
--
ALTER TABLE `home_medico`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `home_paciente`
--
ALTER TABLE `home_paciente`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Limitadores para a tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Limitadores para a tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `home_consulta`
--
ALTER TABLE `home_consulta`
  ADD CONSTRAINT `home_consulta_medico_id_7d79f074_fk_home_medico_id` FOREIGN KEY (`medico_id`) REFERENCES `home_medico` (`id`),
  ADD CONSTRAINT `home_consulta_paciente_id_cdaf67cf_fk_home_paciente_id` FOREIGN KEY (`paciente_id`) REFERENCES `home_paciente` (`id`);

--
-- Limitadores para a tabela `home_medico`
--
ALTER TABLE `home_medico`
  ADD CONSTRAINT `home_medico_especializacao_id_06ad38bc_fk_home_especializacao_id` FOREIGN KEY (`especializacao_id`) REFERENCES `home_especializacao` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
