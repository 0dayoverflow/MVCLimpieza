CREATE TABLE `actividad limpieza`  (
  `IdAct` int NOT NULL AUTO_INCREMENT,
  `DetAct` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `FkIdCol1` int NULL DEFAULT NULL,
  PRIMARY KEY (`IdAct`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

CREATE TABLE `colonia`  (
  `IdCol` int NOT NULL AUTO_INCREMENT,
  `CP` int NULL DEFAULT NULL,
  `Ase` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Mun` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Est` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Ciudad` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`IdCol`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

CREATE TABLE `cuadrilla`  (
  `IdCua` int NOT NULL AUTO_INCREMENT,
  `FkIdJefe1` int NULL DEFAULT NULL,
  `FkIdAct1` int NULL DEFAULT NULL,
  PRIMARY KEY (`IdCua`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

CREATE TABLE `jefe`  (
  `IdJefe` int NOT NULL AUTO_INCREMENT,
  `NomJefe` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ApeJefe` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`IdJefe`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

CREATE TABLE `personal`  (
  `IdPer` int NOT NULL AUTO_INCREMENT,
  `NomPer` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ApePer` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `FkIdCuad1` int NULL DEFAULT NULL,
  PRIMARY KEY (`IdPer`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

ALTER TABLE `actividad limpieza` ADD CONSTRAINT `fk_actividad limpieza_colonia_1` FOREIGN KEY (`FkIdCol1`) REFERENCES `colonia` (`IdCol`);
ALTER TABLE `cuadrilla` ADD CONSTRAINT `fk_cuadrilla_actividad limpieza_1` FOREIGN KEY (`FkIdAct1`) REFERENCES `actividad limpieza` (`IdAct`);
ALTER TABLE `cuadrilla` ADD CONSTRAINT `fk_cuadrilla_jefe_1` FOREIGN KEY (`FkIdJefe1`) REFERENCES `jefe` (`IdJefe`);
ALTER TABLE `personal` ADD CONSTRAINT `fk_personal_cuadrilla_1` FOREIGN KEY (`FkIdCuad1`) REFERENCES `cuadrilla` (`IdCua`);

