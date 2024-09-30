-- For JUDGE upload the full code of Exercise 15 first!
CREATE TABLE notification_emails (
    id INT UNIQUE AUTO_INCREMENT,
    recipient INT NOT NULL,
    subject VARCHAR(50),
    body TEXT,
    CONSTRAINT pk_id_notification_emails
    PRIMARY KEY (id)
);

CREATE TRIGGER tr_email_log_changes
AFTER INSERT ON logs
FOR EACH ROW
    INSERT INTO notification_emails (recipient, subject, body)
        VALUES (NEW.account_id,
                CONCAT('Balance change for account: ', NEW.account_id),
                CONCAT('On ', DATE_FORMAT(NOW(), '%b %d %Y at %r'), ' your balance was changed from ',
                       ROUND(NEW.old_sum, 2), ' to ', ROUND(NEW.new_sum, 2), '.'));