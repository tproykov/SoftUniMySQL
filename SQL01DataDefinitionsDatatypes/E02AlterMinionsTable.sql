USE minions;
ALTER TABLE minions
ADD town_id INT NOT NULL;
ALTER TABLE minions
ADD constraint fk_town_id__minions__id_towns
FOREIGN KEY (town_id)
REFERENCES towns (id);