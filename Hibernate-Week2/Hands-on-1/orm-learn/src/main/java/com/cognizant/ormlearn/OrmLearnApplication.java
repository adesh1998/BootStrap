package com.cognizant.ormlearn;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

import com.cognizant.ormlearn.model.Country;
import com.cognizant.ormlearn.service.CountryService;
import com.cognizant.ormlearn.service.exception.CountryNotFoundException;

@SpringBootApplication
public class OrmLearnApplication {
	private static final Logger LOGGER = LoggerFactory.getLogger(OrmLearnApplication.class);
	 private static CountryService countryService;
	public static void main(String[] args) {
		ApplicationContext context = SpringApplication.run(OrmLearnApplication.class, args);
        countryService = context.getBean(CountryService.class);

        testGetAllCountries();
        getAllCountriesTest();
        testAddCountry();
        testUpdateCountry();
        testDelete();
	    
	   
	    
	}
    private static void testDelete() {
		// TODO Auto-generated method stub
    	
    	countryService.deleteCountry("BM");
		
	}
	private static void testUpdateCountry() {
		// TODO Auto-generated method stub
    	
		countryService.updateCountry("BM");
       
		
	}
	private static void testAddCountry() {
    	
    	Country country=new Country() ;
    	country.setCode("BM");
    	country.setName("Baramati");
    	countryService.addCountry(country);
    	Country country1 = null;
    	LOGGER.info("Start");
    	try {
			country1=countryService.findCountryByCode("BM");
		} catch (CountryNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	 LOGGER.debug("Country:{}", country1);
         LOGGER.info("End");
		// TODO Auto-generated method stub
		
	}
	private static void testGetAllCountries() {
        LOGGER.info("Start");
        List<Country> countries = countryService.getAllCountries();
        LOGGER.debug("countries={}", countries);
        LOGGER.info("End");
    }
    
    private static void getAllCountriesTest() {
        LOGGER.info("Start");
        Country country = null;
		try {
			country = countryService.findCountryByCode("IN");
		} catch (CountryNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        LOGGER.debug("Country:{}", country);
        LOGGER.info("End");
    }




}
