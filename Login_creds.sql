CREATE TABLE `sample`.`login_creds` (
  `sys_id` INT NOT NULL,
  `pass` DECIMAL NULL,
  `start_date` DATETIME NULL,
  `role` VARCHAR(45) NULL,
  PRIMARY KEY (`sys_id`),
  CONSTRAINT `fk_logcred`
    FOREIGN KEY (`sys_id`)
    REFERENCES `sample`.`employee` (`SN`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);

SELECT * FROM `login_creds`;

INSERT INTO `sample`.`login_creds` (`sys_id`, `pass`, `start_date`, `role`) VALUES ('1', '3456346', '2012-08-12', 'Administration');
INSERT INTO `sample`.`login_creds` (`sys_id`, `pass`, `start_date`, `role`) VALUES ('2', '4353454', '2015-04-24', 'Billing');
