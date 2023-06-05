USE metro_cdmx;

CREATE TABLE IF NOT EXISTS `line_stations` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `line_id` BIGINT(20) UNSIGNED NOT NULL,
  `station_id` BIGINT(20) UNSIGNED NOT NULL,

  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

  PRIMARY KEY (`id`),

  CONSTRAINT `lines_stations_line_id_forgein`
  FOREIGN KEY (`line_id`) REFERENCES `lines` (`id`),

  CONSTRAINT `lines_stations_station_id_forgein`
  FOREIGN KEY (`station_id`) REFERENCES `stations` (`id`)
)