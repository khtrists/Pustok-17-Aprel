USE [PustokDb]

GO
INSERT [dbo].[Books] ([Name],[Descp],[GenreId],[AuthorId],[SalePrice],[CostPrice],[DiscountPercent],[StockStatus],[IsBestSeller],[IsNew],[CreatedAt],[ModifiedAt]) 
VALUES ('Great Gatsby', 'A classic novel by F. Scott Fitzgerald', 20,2,  8.99, 4.99, 0.15, 0, 1, 1, '2022-03-01 12:00:00', '2022-03-01 12:00:00'),
       ('1984', 'A dystopian novel by George Orwell', 36,3,  10.99, 6.99, 0.25, 1, 1, 0, '2022-04-01 13:00:00', '2022-04-01 13:00:00'),
       ('The Hobbit', 'A classic fantasy novel by J.R.R. Tolkien', 35,4,  7.99, 3.99, 0.10, 1, 0, 1, '2022-05-01 14:00:00', '2022-05-01 14:00:00'),
       ('Pride and Prejudice', 'A classic novel by Jane Austen', 27,5,  11.99, 6.99, 0.05, 1, 0, 1, '2022-06-01 15:00:00', '2022-06-01 15:00:00'),
       ('Brave New World', 'A dystopian novel by Aldous Huxley', 21,6,  8.99, 4.99, 0.10, 1, 0, 1, '2022-08-01 17:00:00', '2022-08-01 17:00:00'),
       ('Animal Farm', 'A satirical novella by George Orwell', 30,7,  6.99, 3.99, 0.15, 1, 1, 0, '2022-09-01 18:00:00', '2022-09-01 18:00:00'),
       ('Frankenstein', 'A gothic novel by Mary Shelley', 29,8,  10.99, 6.99, 0.05, 1, 0, 1, '2022-12-01 21:00:00', '2022-12-01 21:00:00'),
       ('The Count of Monte Cristo', 'An adventure novel by Alexandre Dumas', 19,12, 11.99, 7.99, 0.20, 1, 1, 0, '2023-01-01 22:00:00', '2023-01-01 22:00:00'),
       ('The War of the Worlds', 'A science fiction novel by H.G. Wells', 22,11,  8.99, 4.99, 0.15, 1, 0, 1, '2023-02-01 23:00:00', '2023-02-01 23:00:00'),
       ('Dracula', 'An epistolary novel by Bram Stoker',23,11, 9.99, 5.99, 0.10, 1, 0, 1, '2023-03-01 00:00:00', '2023-03-01 00:00:00'),
       ('The Time Machine', 'A science fiction novella by H.G. Wells', 22,6,  6.99, 3.99, 0.05, 1, 1, 0, '2023-04-01 01:00:00', '2023-04-01 01:00:00'),
       ('The Sherlock Holmes', 'A collection of detective stories by Arthur Conan Doyle',33,10,  12.99, 7.99, 0.25, 1, 1, 0, '2023-05-01 02:00:00', '2023-05-01 02:00:00'),
       ('The Call of the Wild', 'An adventure novel by Jack London', 24,5, 7.99, 4.99, 0.10, 1, 0, 1, '2023-06-01 03:00:00', '2023-06-01 03:00:00'),
       ('Treasure Island', 'An adventure novel by Robert Louis Stevenson', 28,2,  9.99, 5.99, 0.15, 1, 0, 1, '2023-07-01 04:00:00', '2023-07-01 04:00:00'),
       ('Heart of Darkness', 'A novella by Joseph Conrad', 37,3, 8.99, 4.99, 0.20, 1, 1, 0, '2023-08-01 05:00:00','2023-05-01 02:00:00');


INSERT INTO Authors (FullName) 
VALUES 
('J.D. Salinger'), 
('Harper Lee'), 
('F. Scott Fitzgerald'), 
('George Orwell'), 
('J.R.R. Tolkien'), 
('Jane Austen'), 
('Aldous Huxley'), 
('Mark Twain'), 
('Mary Shelley'), 
('Alexandre Dumas'), 
('H.G. Wells'), 
('Bram Stoker');



INSERT INTO Genres (Name)
VALUES
('Bildungsroman '),
('Adventure'),
('Jazz Age'),
('Dystopian'),
('High fantasy'),
('Regency romance'),
('High fantasy, epic'),
('Dystopian, science'),
('Political satire'),
('Gothic'),
('Picaresque'),
('Gothic science fiction'),
('Historical fiction '),
('Science fiction'),
('Gothic, horror'),
('Science fiction '),
('Detective fiction '),
('Adventure animal '),
('Adventure pirate '),
('Modernist psychological');