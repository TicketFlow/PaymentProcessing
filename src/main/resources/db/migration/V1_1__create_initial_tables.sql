CREATE TABLE `payment_method`
(
    `id`               int PRIMARY KEY AUTO_INCREMENT,
    `user_id`          int          NOT NULL,
    `type`             varchar(255) NOT NULL,
    `card_number`      varchar(255) NOT NULL,
    `card_holder_name` varchar(255) NOT NULL,
    `expiration_date`  date         NOT NULL,
    `security_code`    varchar(255) NOT NULL
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE Payment
(
    id                INT PRIMARY KEY AUTO_INCREMENT,
    sale_id           INT         NOT NULL,
    price             FLOAT       NOT NULL,
    approved          BOOLEAN     NOT NULL,
    coupon_id         INT,
    status            VARCHAR(50) NOT NULL,
    payment_method_id INT         NOT NULL,
    CONSTRAINT fk_payment_payment_method FOREIGN KEY (payment_method_id) REFERENCES `payment_method` (id)
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;


# ENGINE = InnoDB: define o mecanismo de armazenamento da tabela como InnoDB, que é um mecanismo de armazenamento transacional usado para garantir a integridade dos dados.
# AUTO_INCREMENT = 1: define o valor inicial da coluna de chave primária como 1 e incrementa automaticamente a cada nova inserção de registro.
# DEFAULT CHARSET = utf8mb4: especifica o conjunto de caracteres padrão para a tabela como utf8mb4, que suporta o conjunto de caracteres Unicode completo.
# COLLATE = utf8mb4_0900_ai_ci: define o conjunto de regras de comparação de caracteres para a tabela como utf8mb4_0900_ai_ci, que é uma regra de comparação de caracteres insensível a maiúsculas e minúsculas com suporte a acentos e outros caracteres diacríticos.
