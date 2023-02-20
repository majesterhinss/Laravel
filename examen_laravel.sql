-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 20 fév. 2023 à 19:11
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `examen_laravel`
--

-- --------------------------------------------------------

--
-- Structure de la table `candidats`
--

CREATE TABLE `candidats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomCandidat` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `niveauEtude` varchar(255) NOT NULL,
  `sexe` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `candidats`
--

INSERT INTO `candidats` (`id`, `nomCandidat`, `prenom`, `email`, `age`, `niveauEtude`, `sexe`, `created_at`, `updated_at`) VALUES
(1, 'MABANZA', 'Nourse', 'nrhinssmabanza@gmail.com', 9, 'iszopsk', 'Homme', '2023-02-19 20:58:43', '2023-02-19 20:58:43'),
(2, 'MABANZA', 'Nourse', 'nrhinssmabanza@gmail.com', 9, 'iszopsk', 'Homme', '2023-02-19 20:59:55', '2023-02-19 20:59:55');

-- --------------------------------------------------------

--
-- Structure de la table `candidat_formation`
--

CREATE TABLE `candidat_formation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `formation_id` bigint(20) UNSIGNED NOT NULL,
  `candidat_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `candidat_formation`
--

INSERT INTO `candidat_formation` (`id`, `formation_id`, `candidat_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `formations`
--

CREATE TABLE `formations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomFormation` varchar(255) NOT NULL,
  `duree` int(11) NOT NULL,
  `description` text NOT NULL,
  `isStarted` tinyint(1) NOT NULL,
  `date_debut` datetime NOT NULL,
  `referentiel_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `formations`
--

INSERT INTO `formations` (`id`, `nomFormation`, `duree`, `description`, `isStarted`, `date_debut`, `referentiel_id`, `created_at`, `updated_at`) VALUES
(1, 'Conseiller client ', 3456, 'Conseiller client, chargé de traiter ou d\'apporter une solution adéquate à un problème donné', 1, '2023-02-19 22:56:26', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_10_173737_create_types_table', 1),
(6, '2023_02_10_174235_create_referentiels_table', 1),
(7, '2023_02_12_001531_create_formations_table', 1),
(8, '2023_02_17_002705_create_candidats_table', 1),
(9, '2023_02_17_002744_create_pivot_table_candidat_formation', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `referentiels`
--

CREATE TABLE `referentiels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `libelleReferentiel` varchar(255) NOT NULL,
  `validated` tinyint(1) NOT NULL,
  `horaire` double(8,2) NOT NULL,
  `type_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `referentiels`
--

INSERT INTO `referentiels` (`id`, `libelleReferentiel`, `validated`, `horaire`, `type_id`, `created_at`, `updated_at`) VALUES
(2, 'Informatique', 1, 1234.00, 2, NULL, NULL),
(3, 'Service client', 1, 3645.00, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `libelleType` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `types`
--

INSERT INTO `types` (`id`, `libelleType`, `created_at`, `updated_at`) VALUES
(1, 'Type metier ', NULL, NULL),
(2, 'Type initial', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `candidats`
--
ALTER TABLE `candidats`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `candidat_formation`
--
ALTER TABLE `candidat_formation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidat_formation_formation_id_foreign` (`formation_id`),
  ADD KEY `candidat_formation_candidat_id_foreign` (`candidat_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `formations`
--
ALTER TABLE `formations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `formations_referentiel_id_foreign` (`referentiel_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `referentiels`
--
ALTER TABLE `referentiels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `referentiels_type_id_foreign` (`type_id`);

--
-- Index pour la table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `candidats`
--
ALTER TABLE `candidats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `candidat_formation`
--
ALTER TABLE `candidat_formation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `formations`
--
ALTER TABLE `formations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `referentiels`
--
ALTER TABLE `referentiels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `candidat_formation`
--
ALTER TABLE `candidat_formation`
  ADD CONSTRAINT `candidat_formation_candidat_id_foreign` FOREIGN KEY (`candidat_id`) REFERENCES `candidats` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `candidat_formation_formation_id_foreign` FOREIGN KEY (`formation_id`) REFERENCES `formations` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `formations`
--
ALTER TABLE `formations`
  ADD CONSTRAINT `formations_referentiel_id_foreign` FOREIGN KEY (`referentiel_id`) REFERENCES `referentiels` (`id`);

--
-- Contraintes pour la table `referentiels`
--
ALTER TABLE `referentiels`
  ADD CONSTRAINT `referentiels_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
