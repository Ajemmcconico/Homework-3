CREATE TABLE Aircraft
(
	AircraftType varchar(50),
	AircraftConfig varchar(50),
	AircraftGroup varchar(50),
	CONSTRAINT Aircraft_pkey PRIMARY KEY (AircraftType)
);
CREATE TABLE Carrier
(
	Carrier varchar(50),
	CarrierName varchar(50),
	CarrierGroup varchar(50),
	CarrierGroupNew varchar(50),
	CarrierEntity varchar(50),
	AircraftType varchar(50),
	CONSTRAINT Carrier_pkey PRIMARY KEY (Carrier)
);
CREATE TABLE State
(
	WAC varchar(50),
	StateFIPS varchar(50),
	StateAbr varchar(50),
	StateName varchar(50),
	CONSTRAINT State_pkey PRIMARY KEY (WAC)
);
CREATE TABLE City
(
	CityMarketID varchar(50),
	City varchar(50),
	CityName varchar(50),
	WAC varchar(50),
	CONSTRAINT City_pkey PRIMARY KEY (CityMarketID)
);
CREATE TABLE Airport
(
	AirportID varchar(50),
	AirportSeqID varchar(50),
	CityMarketID varchar(50),
	CONSTRAINT Airport_pkey PRIMARY KEY (AirportID)
);
CREATE TABLE Distance
(
	Distance varchar(50),
	DistanceGroup varchar(50),
	CONSTRAINT Distance_pkey PRIMARY KEY (Distance)
);
CREATE TABLE Airline
(
	AirportID varchar(50),
	Carrier varchar(50),
	OriginAirportID varchar(50),
	DestAirportID varchar(50),
	DeparturesScheduled varchar(50),
	DeparturesPerformed varchar(50),
	Payload varchar(50),
	Seats varchar(50),
	Passengers varchar(50),
	Freight varchar(50),
	Mail varchar(50),
	Distance varchar(50),
	RampToRamp varchar(50),
	AirTime varchar(50),
	Class varchar(50),
	CONTRAINT Airline-pkey PRIMARY KEY (AirportID)
);
CREATE TABLE AviationCarrier
(
	Carrier varchar(50),
	CarrierEntity varchar(50),
	CarrierName varchar(50),
	CarrierGroup varchar(50),
	CarrierGroupNew varchar(50),
	CONSTRAINT AviationCarrier_pkey (Carrier)
);
CREATE TABLE AviationSupport
(
	AirlineID varchar(50),
	Carrier varchar(50),
	WAC varchar(50),
	Region varchar(50),
	StartDateSource varchar(50),
	ThruDateSource varchar(50),
	CONSTRAINT AviationSupport_pkey (AirlineID)
);