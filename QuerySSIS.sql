-câu lệnh lọc dữ liệu
ISNULL( [observedProperty] ) || ISNULL( [resultUom] ) || ISNULL( [_Year]) || ISNULL( [resultMeanValue]) || ISNULL( [water_name]) || ISNULL( [Country_name]) || ISNULL( [PopulationDensity]) || ISNULL( [TouristMean]) || ISNULL( [food_organic_waste]) || ISNULL( [glass]) || ISNULL( [metal]) || ISNULL( [other]) || ISNULL( [paper_cardboard]) || ISNULL( [plastic]) || ISNULL( [composition_rubber_leather]) || ISNULL( [wood]) || ISNULL( [yard_garden_green_waste]) || ISNULL( [waste_treatment_recycling])		
--câu lệnh kiểm soát sql
delete from Dim_Country; delete from Dim_Water; delete from Dim_Date;delete from Fact
--câu lệnh khóa ngoại
ALTER TABLE FACT ADD CONSTRAINT FK_FACT_COUNTRY FOREIGN KEY (COUNTRY_NAME) REFERENCES DIM_COUNTRY(COUNTRY_NAME);
ALTER TABLE FACT ADD CONSTRAINT FK_FACT_WATER  FOREIGN KEY (WATER_NAME) REFERENCES DIM_WATER(WATER_NAME);
ALTER TABLE FACT ADD CONSTRAINT FK_FACT_DATE FOREIGN KEY (_YEAR) REFERENCES DIM_DATE(_YEAR);

Câu lệnh xoá khoá ngoại
ALTER TABLE Water_Clean.dbo.FACT ADD CONSTRAINT FK_FACT_COUNTRY FOREIGN KEY (Country_name) REFERENCES DIM_COUNTRY(Country_name);

ALTER TABLE Water_Clean.dbo.FACT ADD CONSTRAINT FK_FACT_WATER  FOREIGN KEY (water_name) REFERENCES DIM_WATER(water_name);

ALTER TABLE Water_Clean.dbo.FACT ADD CONSTRAINT FK_FACT_DATE FOREIGN KEY (_Year) REFERENCES DIM_DATE(_Year);
alter table Water_Clean.dbo.FACT drop constraint [FK_FACT_COUNTRY];
alter table Water_Clean.dbo.FACT drop constraint [FK_FACT_DATE];
alter table Water_Clean.dbo.FACT drop constraint [FK_FACT_WATER];

ISNULL( [observedProperty] ) || ISNULL( [resultUom] ) || ISNULL( [Year]) || ISNULL( [resultMeanValue]) || ISNULL( [water_name]) || ISNULL( [Country_name]) || ISNULL( [PopulationDensity]) || ISNULL( [TouristMean_1990_2020]) || ISNULL( [composition_food_organic_waste_percent]) || ISNULL( [composition_glass_percent]) || ISNULL( [composition_metal_percent]) || ISNULL( [composition_other_percent]) || ISNULL( [composition_paper_cardboard_percent]) || ISNULL( [composition_plastic_percent]) || ISNULL( [composition_rubber_leather_percent]) || ISNULL( [composition_wood_percent]) || ISNULL( [composition_yard_garden_green_waste_percent]) || ISNULL( [waste_treatment_recycling_percent])
