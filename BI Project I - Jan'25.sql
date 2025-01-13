CREATE TABLE [Clients] (
  [Client_ID] CHAR(36) PRIMARY KEY,
  [Client_Name] VARCHAR(50) NOT NULL,
  [Email] VARCHAR(255),
  [Phone] VARCHAR(20),
  [Industry] VARCHAR(50),
  [Contact_Start_Date] DATETIME,
  [Contact_End_Date] DATETIME
);
INSERT INTO Clients (Client_ID, Client_Name, Email, Phone, Industry, Contact_Start_Date, Contact_End_Date)
VALUES
    ('1', 'Acme Corp', 'acme@example.com', '555-1234', 'Technology', '2023-01-01', '2024-12-31'),
    ('2', 'Global Solutions', 'global@solutions.com', '555-5678', 'Finance', '2022-06-15', '2025-03-31'),
    ('3', 'Innovatech', 'info@innovatech.com', '555-9012', 'Healthcare', '2023-03-20', NULL),
    ('4', 'Creative Minds', 'creative@minds.com', '555-4321', 'Marketing', '2024-01-10', '2024-12-31'),
    ('5', 'Green Energy', 'green@energy.com', '555-7890', 'Energy', '2023-08-05', '2025-06-30');


CREATE TABLE [Campaigns] (
  [Campaign_ID] CHAR(36) PRIMARY KEY,
  [Campaign_Name] VARCHAR(50) NOT NULL,
  [Start_Date] DATETIME NOT NULL,
  [End_Date] DATETIME,
  [Budget] NUMERIC(12,2),
  [Impressions] BIGINT,
  [Clicks] BIGINT,
  [Engagement] BIGINT,
  [Conversion_Rate] NUMERIC(5,2),
  [Client_ID] CHAR(36)
);
INSERT INTO Campaigns (Campaign_ID, Campaign_Name, Start_Date, End_Date, Budget, Impressions, Clicks, Engagement, Conversion_Rate, Client_ID)
VALUES
    ('1', 'Summer Campaign', '2024-06-01', '2024-09-30', 50000.00, 1000000, 50000, 200000, 0.05, '1'),
    ('2', 'Holiday Sale', '2024-11-15', '2025-01-15', 30000.00, 800000, 40000, 150000, 0.04, '2'),
    ('3', 'New Product Launch', '2024-08-10', '2024-10-31', 75000.00, 1200000, 60000, 250000, 0.06, '3'),
    ('4', 'Spring Promotion', '2024-03-01', '2024-05-31', 40000.00, 900000, 45000, 180000, 0.05, '4'),
    ('5', 'Green Energy Initiative', '2024-07-01', '2024-09-30', 60000.00, 1100000, 55000, 220000, 0.05, '5');


CREATE TABLE [Employees] (
  [Employee_ID] CHAR(36) PRIMARY KEY,
  [Employee_Name] VARCHAR(50) NOT NULL,
  [Role] VARCHAR(50) NOT NULL,
  [Email] VARCHAR(255),
  [Phone] VARCHAR(20),
  [Department] VARCHAR(50),
  [Employee_Since] DATE
);
INSERT INTO Employees (Employee_ID, Employee_Name, Role, Email, Phone, Department, Employee_Since)
VALUES
    ('1', 'John Doe', 'Marketing Manager', 'john.doe@company.com', '555-1111', 'Marketing', '2020-01-15'),
    ('2', 'Jane Smith', 'Social Media Specialist', 'jane.smith@company.com', '555-2222', 'Marketing', '2022-03-10'),
    ('3', 'David Lee', 'Content Creator', 'david.lee@company.com', '555-3333', 'Creative', '2021-07-05'),
    ('4', 'Sarah Jones', 'Data Analyst', 'sarah.jones@company.com', '555-4444', 'Analytics', '2023-02-20'),
    ('5', 'Michael Brown', 'Project Manager', 'michael.brown@company.com', '555-5555', 'Project Management', '2019-09-12');


CREATE TABLE [Platforms] (
  [Platform_ID] CHAR(36) PRIMARY KEY,
  [Platform_Name] VARCHAR(50) NOT NULL,
  [URL] VARCHAR(255),
  [Contact_Person] VARCHAR(50),
  [Email] VARCHAR(255),
  [Phone] VARCHAR(20)
);
INSERT INTO Platforms (Platform_ID, Platform_Name, URL, Contact_Person, Email, Phone)
VALUES
    ('1', 'Facebook', 'www.facebook.com', 'John Smith', 'john.smith@facebook.com', '555-6666'),
    ('2', 'Instagram', 'www.instagram.com', 'Jane Doe', 'jane.doe@instagram.com', '555-7777'),
    ('3', 'Twitter', 'www.twitter.com', 'David Lee', 'david.lee@twitter.com', '555-8888'),
    ('4', 'Google Ads', 'ads.google.com', 'Sarah Jones', 'sarah.jones@google.com', '555-9999'),
    ('5', 'LinkedIn', 'www.linkedin.com', 'Michael Brown', 'michael.brown@linkedin.com', '555-0000');


CREATE TABLE [Influencers] (
  [Influencer_ID] CHAR(36) PRIMARY KEY,
  [Influencer_Name] VARCHAR(50) NOT NULL,
  [Social_Handle] VARCHAR(50) NOT NULL,
  [Follower_Count] BIGINT,
  [Email] VARCHAR(255),
  [Phone] VARCHAR(20)
);
INSERT INTO Influencers (Influencer_ID, Influencer_Name, Social_Handle, Follower_Count, Email, Phone)
VALUES
    ('1', 'Tech Enthusiast', 'tech_enthusiast', 100000, 'tech@example.com', '555-1010'),
    ('2', 'Travel Guru', 'travel_guru', 50000, 'travel@example.com', '555-1020'),
    ('3', 'Foodie Adventures', 'foodie_adventures', 75000, 'foodie@example.com', '555-1030'),
    ('4', 'Fitness Freak', 'fitness_freak', 80000, 'fitness@example.com', '555-1040'),
    ('5', 'Fashionista', 'fashionista_world', 120000, 'fashion@example.com', '555-1050');


CREATE TABLE [Contents] (
  [Content_ID] CHAR(36) PRIMARY KEY,
  [Title] VARCHAR(100) NOT NULL,
  [Description] TEXT,
  [Media_Type] VARCHAR(50),
  [Creation_Date] DATE NOT NULL,
  [Campaign_ID] CHAR(36)
);
INSERT INTO Contents (Content_ID, Title, Description, Media_Type, Creation_Date, Campaign_ID)
VALUES
    ('1', 'Summer Sale', 'Up to 50% off all summer wear', 'Image', '2024-06-15', '1'),
    ('2', 'Holiday Gift Guide', 'Find the perfect gift for everyone', 'Video', '2024-11-20', '2'),
    ('3', 'Introducing New Product X', 'Experience the future of technology', 'Video', '2024-08-15', '3'),
    ('4', 'Spring Refresh', 'Get ready for spring with new arrivals', 'Image', '2024-03-10', '4'),
    ('5', 'Go Green Initiative', 'Save the planet, one step at a time', 'Image', '2024-07-10', '5');


CREATE TABLE [Payments] (
  [Payment_ID] CHAR(36) PRIMARY KEY,
  [Date] DATE NOT NULL,
  [Amount] NUMERIC(12,2),
  [Payment_Type] VARCHAR(255),
  [Payment_Details] VARCHAR(255),
  [Campaign_ID] CHAR(36)
);
INSERT INTO Payments (Payment_ID, Date, Amount, Payment_Type, Payment_Details, Campaign_ID)
VALUES
    ('1', '2024-06-10', 25000.00, 'Credit Card', 'Visa', '1'),
    ('2', '2024-11-18', 15000.00, 'Bank Transfer', 'Reference #12345', '2'),
    ('3', '2024-08-15', 37500.00, 'PayPal', 'Invoice #123', '3'),
    ('4', '2024-03-15', 20000.00, 'Credit Card', 'MasterCard', '4'),
    ('5', '2024-07-15', 30000.00, 'Bank Transfer', 'Reference #67890', '5');


CREATE TABLE [Metrics] (
  [Metric_ID] CHAR(36) PRIMARY KEY,
  [Impressions] BIGINT,
  [Clicks] BIGINT,
  [Engagement] BIGINT,
  [Conversion_Rate] NUMERIC(5,2)
);
INSERT INTO Metrics (Metric_ID, Impressions, Clicks, Engagement, Conversion_Rate)
VALUES
    ('1', 1000000, 50000, 200000, 0.05),
    ('2', 800000, 40000, 150000, 0.04),
    ('3', 1200000, 60000, 250000, 0.06),
    ('4', 900000, 45000, 180000, 0.05),
    ('5', 1100000, 55000, 220000, 0.05);


CREATE TABLE [Advertisements] (
  [Ad_ID] CHAR(36) PRIMARY KEY,
  [Ad_Name] VARCHAR(50) NOT NULL,
  [Type] VARCHAR(50),
  [Duration] DECIMAL(10,2),
  [Budget] NUMERIC(12,2) NOT NULL,
  [Platform_ID] CHAR(36),
  [Campaign_ID] CHAR(36)
);
INSERT INTO Advertisements (Ad_ID, Ad_Name, Type, Duration, Budget, Platform_ID, Campaign_ID)
VALUES
    ('1', 'Summer Sale Banner', 'Banner', 30.00, 10000.00, '1', '1'),
    ('2', 'Holiday Gift Guide Video', 'Video', 60.00, 15000.00, '2', '2'),
    ('3', 'New Product Launch Ad', 'Video', 45.00, 20000.00, '3', '3'),
    ('4', 'Spring Promotion Carousel', 'Carousel', 25.00, 8000.00, '1', '4'),
    ('5', 'Green Energy Initiative Story', 'Story', 24.00, 12000.00, '2', '5');
 
   
CREATE TABLE [Campaigns_Employees] (
  [CampaignEmployee_ID] CHAR(36) PRIMARY KEY,
  [Employee_ID] CHAR(36),
  [Campaign_ID] CHAR(36)
);
INSERT INTO Campaigns_Employees (CampaignEmployee_ID, Employee_ID, Campaign_ID)
VALUES
    ('1', '1', '1'),
    ('2', '2', '1'),
    ('3', '3', '2'),
    ('4', '1', '3'),
    ('5', '5', '4');


CREATE TABLE [Campaigns_Influencers] (
  [CampaignInfluencer_ID] CHAR(36) PRIMARY KEY,
  [Influencer_ID] CHAR(36),
  [Campaign_ID] CHAR(36)
);
INSERT INTO Campaigns_Influencers (CampaignInfluencer_ID, Influencer_ID, Campaign_ID)
VALUES
    ('1', '1', '1'),
    ('2', '2', '2'),
    ('3', '3', '3'),
    ('4', '4', '4'),
    ('5', '5', '5');


CREATE TABLE [Campaigns_Platforms] (
  [CampaignPlatform_ID] CHAR(36) PRIMARY KEY,
  [Campaign_ID] CHAR(36),
  [Platform_ID] CHAR(36)
);
INSERT INTO Campaigns_Platforms (CampaignPlatform_ID, Campaign_ID, Platform_ID)
VALUES
    ('1', '1', '1'),
    ('2', '1', '2'),
    ('3', '2', '3'),
    ('4', '3', '1'),
    ('5', '4', '2');


CREATE TABLE [Campaign_Performance] (
  [Campaign_Performance_ID] CHAR(36) PRIMARY KEY,
  [Metric_ID] CHAR(36),
  [Campaign_ID] CHAR(36),
  [MetricValue] NUMERIC(12,2)
);
INSERT INTO Campaign_Performance (Campaign_Performance_ID, Campaign_ID, Metric_ID, MetricValue)
VALUES
    ('1', '1', '1', 1000000),
    ('2', '2', '1', 800000), 
    ('3', '3', '1', 1200000), 
    ('4', '4', '1', 900000), 
    ('5', '5', '1', 1100000);


CREATE TABLE [Campaign_Expenditure] (
  [CampaignExpenditure_ID] CHAR(36) PRIMARY KEY,
  [Expenditure_Category] VARCHAR(50) NOT NULL,
  [Amount] NUMERIC(12,2),
  [Date] DATETIME [not null],
  [Campaign_ID] CHAR(36),
  [Platform_ID] CHAR(36)
);
INSERT INTO Campaign_Expenditure (CampaignExpenditure_ID, Expenditure_Category, Amount, Date, Campaign_ID, Platform_ID)
VALUES
    ('1', 'Advertising Costs', 25000.00, '2024-06-10', '1', '1'),
    ('2', 'Influencer Fees', 10000.00, '2024-06-15', '1', '2'),
    ('3', 'Production Costs', 15000.00, '2024-11-18', '2', '3'),
    ('4', 'Advertising Costs', 20000.00, '2024-08-15', '3', '1'),
    ('5', 'Influencer Fees', 8000.00, '2024-03-15', '4', '2');


CREATE TABLE [Content_Category] (
  [ContentCategory_ID] CHAR(36),
  [Content_ID] CHAR(36),
  [Category_Name] VARCHAR(50) NOT NULL,
  PRIMARY KEY ([ContentCategory_ID], [Content_ID])
);
INSERT INTO Content_Category (ContentCategory_ID, Content_ID, Category_Name)
VALUES
    ('1', '1', 'Sale'),
     ('2', '2', 'Holiday'),
     ('3', '3','Product Launch'),
     ('4', '4','Seasonal'),
     ('5', '5','Sustainability');


CREATE TABLE [Employee_Department] (
  [EmployeeDepartment_ID] CHAR(36) PRIMARY KEY,
  [Department] VARCHAR(50),
  [Description] TEXT
);
INSERT INTO Employee_Department (EmployeeDepartment_ID, Department, Description)
VALUES
     ('1', 'Marketing', 'Responsible for all marketing activities'),
     ('2', 'Sales', 'Handles sales and revenue generation'),
     ('3', 'Finance', 'Manages financial operations'),
     ('4', 'IT', 'Provides IT support and infrastructure'),
     ('5', 'HR', 'Manages human resources');


ALTER TABLE [Campaigns] ADD FOREIGN KEY ([Client_ID]) REFERENCES [Clients] ([Client_ID])


ALTER TABLE [Contents] ADD FOREIGN KEY ([Campaign_ID]) REFERENCES [Campaigns] ([Campaign_ID])


ALTER TABLE [Payments] ADD FOREIGN KEY ([Campaign_ID]) REFERENCES [Campaigns] ([Campaign_ID])


ALTER TABLE [Metrics] ADD FOREIGN KEY ([Campaign_ID]) REFERENCES [Campaigns] ([Campaign_ID])


ALTER TABLE [Advertisements] ADD FOREIGN KEY ([Platform_ID]) REFERENCES [Platforms] ([Platform_ID])


ALTER TABLE [Advertisements] ADD FOREIGN KEY ([Campaign_ID]) REFERENCES [Campaigns] ([Campaign_ID])


ALTER TABLE [Campaigns_Employees] ADD FOREIGN KEY ([Employee_ID]) REFERENCES [Employees] ([Employee_ID])


ALTER TABLE [Campaigns_Employees] ADD FOREIGN KEY ([Campaign_ID]) REFERENCES [Campaigns] ([Campaign_ID])


ALTER TABLE [Campaigns_Influencers] ADD FOREIGN KEY ([Influencer_ID]) REFERENCES [Influencers] ([Influencer_ID])


ALTER TABLE [Campaigns_Influencers] ADD FOREIGN KEY ([Campaign_ID]) REFERENCES [Campaigns] ([Campaign_ID])


ALTER TABLE [Campaigns_Platforms] ADD FOREIGN KEY ([Campaign_ID]) REFERENCES [Campaigns] ([Campaign_ID])


ALTER TABLE [Campaigns_Platforms] ADD FOREIGN KEY ([Platform_ID]) REFERENCES [Platforms] ([Platform_ID])


ALTER TABLE [Campaign_Performance] ADD FOREIGN KEY ([Metric_ID]) REFERENCES [Metrics] ([Metric_ID])


ALTER TABLE [Campaign_Performance] ADD FOREIGN KEY ([Campaign_ID]) REFERENCES [Campaigns] ([Campaign_ID])


ALTER TABLE [Campaign_Expenditure] ADD FOREIGN KEY ([Campaign_ID]) REFERENCES [Campaigns] ([Campaign_ID])


ALTER TABLE [Campaign_Expenditure] ADD FOREIGN KEY ([Platform_ID]) REFERENCES [Platforms] ([Platform_ID])


ALTER TABLE [Content_Category] ADD FOREIGN KEY ([Content_ID]) REFERENCES [Contents] ([Content_ID])


ALTER TABLE [Employee_Department] ADD FOREIGN KEY ([Department]) REFERENCES [Employees] ([Department])

--JOIN Statements for Testing 
--1. Get Campaign Details with Client Information
SELECT c.Campaign_Name, c.Start_Date, c.Budget, cl.Client_Name
FROM Campaigns c
JOIN Clients cl ON c.Client_ID = cl.Client_ID;

--2. Get Employee details for each Campaign
SELECT e.Employee_Name, e.Role, c.Campaign_Name
FROM Campaigns_Employees ce
JOIN Employees e ON ce.Employee_ID = e.Employee_ID
JOIN Campaigns c ON ce.Campaign_ID = c.Campaign_ID;

--3. Get Ad details with Platform and Campaign information
SELECT a.Ad_Name, a.Type, p.Platform_Name, c.Campaign_Name
FROM Advertisements a
JOIN Platforms p ON a.Platform_ID = p.Platform_ID
JOIN Campaigns c ON a.Campaign_ID = c.Campaign_ID;

--4. Get Campaign Performance metrics
SELECT 
    c.Campaign_Name, 
    CASE 
        WHEN m.Metric_ID = '1' THEN m.Impressions
        WHEN m.Metric_ID = '2' THEN m.Clicks
        WHEN m.Metric_ID = '3' THEN m.Engagement
        WHEN m.Metric_ID = '4' THEN m.Conversion_Rate
        ELSE NULL 
    END AS Metric_Value
FROM 
    Campaigns c
JOIN 
    Campaign_Performance cp ON c.Campaign_ID = cp.Campaign_ID
JOIN 
    Metrics m ON cp.Metric_ID = m.Metric_ID;

--5. Get Campaign Expenditure details
SELECT c.Campaign_Name, e.Expenditure_Category, e.Amount
FROM Campaigns c
JOIN Campaign_Expenditure e ON c.Campaign_ID = e.Campaign_ID;
