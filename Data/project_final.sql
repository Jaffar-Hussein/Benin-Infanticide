CREATE TABLE `Evenement` (
  `id` integer PRIMARY KEY,
  `code_patient` integer,
  `code_sageFemme` integer,
  `code_region` integer,
  `date` timestamp,
  `nombre_enfants` integer,
  `condition` string,
  `time_intevention` integer,
  `etat_sanitaire` string,
  `created_at` timestamp
);

CREATE TABLE `Region` (
  `id` integer PRIMARY KEY,
  `nom` string,
  `number_hospitals` integer,
  `access_water` string
);

CREATE TABLE `Sage_Femme` (
  `id` integer PRIMARY KEY,
  `code_staff` integer,
  `code_region` integer
);

CREATE TABLE `Patient` (
  `id` integer PRIMARY KEY,
  `name` string,
  `age` integer,
  `nombre_enfants` integer
);

CREATE TABLE `Staff` (
  `id` integer PRIMARY KEY,
  `level_education` string
);

ALTER TABLE `Patient` ADD FOREIGN KEY (`id`) REFERENCES `Evenement` (`code_patient`);

ALTER TABLE `Region` ADD FOREIGN KEY (`id`) REFERENCES `Evenement` (`code_sageFemme`);

ALTER TABLE `Region` ADD FOREIGN KEY (`id`) REFERENCES `Sage_Femme` (`code_region`);

ALTER TABLE `Sage_Femme` ADD FOREIGN KEY (`code_region`) REFERENCES `Staff` (`id`);
