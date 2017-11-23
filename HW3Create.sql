CREATE TABLE Aircraft
(
	AircraftType character varying(50),
	AircraftConfig character varying(50),
	AircraftGroup character varying(50),
	CONSTRAINT Aircraft_pkey PRIMARY KEY (AircraftType)
);
CREATE TABLE Carrier
(
	Carrier character varying(50),
	CarrierName character varying(50),
	CarrierGroup character varying(50),
	CarrierGroupNew character varying(50),
	CarrierEntity character varying(50),
	AircraftType character varying(50),
	CONSTRAINT Carrier_pkey PRIMARY KEY (Carrier)
);
CREATE TABLE State
(
	WAC character varying(50),
	StateFIPS character varying(50),
	StateAbr character varying(50),
	StateName character varying(50),
	CONSTRAINT State_pkey PRIMARY KEY (WAC)
);
CREATE TABLE City
(
	CityMarketID character varying(50),
	City character varying(50),
	CityName character varying(50),
	WAC character varying(50),
	CONSTRAINT City_pkey PRIMARY KEY (CityMarketID)
);
CREATE TABLE Airport
(
	AirportID character varying(50),
	AirportSeqID character varying(50),
	CityMarketID character varying(50),
	CONSTRAINT Airport_pkey PRIMARY KEY (AirportID)
);
CREATE TABLE Distance
(
	Distance character varying(50),
	DistanceGroup character varying(50),
	CONSTRAINT Distance_pkey PRIMARY KEY (Distance)
);
CREATE TABLE Airline
(
	AirportID character varying(50),
	Carrier character varying(50),
	OriginAirportID character varying(50),
	DestAirportID character varying(50),
	DeparturesScheduled character varying(50),
	DeparturesPerformed character varying(50),
	Payload character varying(50),
	Seats character varying(50),
	Passengers character varying(50),
	Freight character varying(50),
	Mail character varying(50),
	Distance character varying(50),
	RampToRamp character varying(50),
	AirTime character varying(50),
	Class character varying(50),
	CONTRAINT Airline-pkey PRIMARY KEY (AirportID)
);
CREATE TABLE AviationCarrier
(
	Carrier character varying(50),
	CarrierEntity character varying(50),
	CarrierName character varying(50),
	CarrierGroup character varying(50),
	CarrierGroupNew character varying(50),
	CONSTRAINT AviationCarrier_pkey (Carrier)
);
CREATE TABLE AviationSupport
(
	AirlineID character varying(50),
	Carrier character varying(50),
	WAC character varying(50),
	Region character varying(50),
	StartDateSource character varying(50),
	ThruDateSource character varying(50),
	CONSTRAINT AviationSupport_pkey (AirlineID)
);