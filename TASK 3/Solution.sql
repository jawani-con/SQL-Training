-- Create the database
CREATE DATABASE task3;
USE task3;

-- Create accounts table
CREATE TABLE accounts (
    id INT PRIMARY KEY,
    username VARCHAR(255) NOT NULL
);

-- Create items table
CREATE TABLE items (
    id INT PRIMARY KEY,
    type ENUM('sword', 'shield', 'armor') NOT NULL,
    name VARCHAR(255) NOT NULL
);
-- Create accounts_items table with quality column allowing 'common', 'epic', and 'rare'
CREATE TABLE accounts_items (
    account_id INT,
    item_id INT,
    quality ENUM('common', 'epic', 'rare') NOT NULL,
    FOREIGN KEY (account_id) REFERENCES accounts(id),
    FOREIGN KEY (item_id) REFERENCES items(id)
);

-- Insert sample data into accounts table
INSERT INTO accounts (id, username) VALUES
(1, 'cmunns1'),
(2, 'yworcs0');

-- Insert sample data into items table
INSERT INTO items (id, type, name) VALUES
(1, 'sword', 'Sword of Solanaceae'),
(2, 'shield', 'Shield of Rosaceae'),
(3, 'shield', 'Shield of Fagaceae'),
(5, 'shield', 'Shield of Lauraceae'),
(6, 'shield', 'Shield of Asteraceae'),
(7, 'armor', 'Armor of Myrtaceae'),
(8, 'shield', 'Shield of Rosaceae'),
(10, 'shield', 'Shield of Rosaceae');

-- Insert sample data into accounts_items table
INSERT INTO accounts_items (account_id, item_id, quality) VALUES
(1, 10, 'epic'),
(1, 2, 'rare'),
(1, 2, 'rare'),
(1, 7, 'rare'),
(1, 1, 'common'),
(1, 2, 'common'),
(1, 3, 'common'),
(1, 5, 'common'),
(1, 8, 'common'),
(2, 8, 'epic'),
(2, 5, 'rare'),
(2, 3, 'common'),
(2, 6, 'common');

SELECT a.username, i.type, ai.quality, i.name FROM accounts_items AS ai
JOIN accounts as a ON a.id=ai.account_id
JOIN items AS ai.item_id = i.id
WHERE ai.quality = (
    SELECT ai_sub.quality FROM accounts_items AS ai_sub 
    JOIN items AS i_sub ON ai_sub.item_id = i_sub.id
    WHERE ai_sub.account_id = ai.account_id AND i_sub.type = i.type
    ORDER BY 
        CASE 
            WHEN ai_sub.quality = 'epic' THEN 1
            WHEN ai_sub.quality = 'common' THEN 2
            WHEN ai_sub.quality = 'rare' THEN 3
        END
    LIMIT 1
)
ORDER BY a.username, 
    CASE 
        WHEN i.type = 'armor' THEN 1
        WHEN i.type = 'sheild' THEN 2
        WHEN i.type = 'sword' THEN 3
    END;



    
