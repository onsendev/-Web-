SET SESSION FOREIGN_KEY_CHECKS=0;
CREATE TABLE baggages
(
	baggage_id int unsigned NOT NULL AUTO_INCREMENT,
	tracking_number varchar(255) NOT NULL,
	baggage_status_id int NOT NULL,
	PRIMARY KEY (baggage_id)
);

CREATE TABLE baggage_statuses
(
	baggage_status_id int NOT NULL AUTO_INCREMENT,
	status varchar(255) NOT NULL,
	PRIMARY KEY (baggage_status_id)
);

ALTER TABLE baggages
	ADD FOREIGN KEY (baggage_status_id)
	REFERENCES baggage_statuses (baggage_status_id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;

INSERT INTO `baggage_statuses` (`baggage_status_id`, `status`) VALUES (NULL, '受付済み'), (NULL, '配達中'), (NULL, '配達済み');
