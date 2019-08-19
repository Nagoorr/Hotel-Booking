package com.hotel.booking.util;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JpaUtil
{

	private JpaUtil()
	{

	}

	final private static EntityManagerFactory emf=getEMF();

	private static EntityManagerFactory getEMF()
	{

		EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("myPersistenceUnit");
		return entityManagerFactory;
	}

	public static EntityManagerFactory getEntityManagerFactory()
	{

		return emf;

	}
}
