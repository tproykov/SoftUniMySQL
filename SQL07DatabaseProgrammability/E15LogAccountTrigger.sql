CREATE TABLE logs (
    log_id INT UNIQUE AUTO_INCREMENT,
    account_id INT,
    old_sum DECIMAL(19, 4),
    new_sum DECIMAL(19, 4),
    CONSTRAINT pk_log_id_logs
    PRIMARY KEY (log_id)
);

CREATE TRIGGER tr_log_account_changes
AFTER UPDATE ON accounts
FOR EACH ROW
    INSERT INTO logs (account_id, old_sum, new_sum)
        VALUES (OLD.id, OLD.balance, NEW.balance)