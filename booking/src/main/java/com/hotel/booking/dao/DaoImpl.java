package com.hotel.booking.dao;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.hotel.booking.dto.Hotel;
import com.hotel.booking.dto.HotelRating;
import com.hotel.booking.dto.User;
import com.hotel.booking.util.JpaUtil;

//implementation class of dao interface to provide implementation for abstract methods
@Repository
public class DaoImpl implements Dao{

	EntityManagerFactory entityManagerFactory=JpaUtil.getEntityManagerFactory();

	@Override
	public boolean registerUser(User user) {
		boolean status=false;
		EntityManager entityManager =entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		try
		{
			entityManager.persist(user);
			entityManager.getTransaction().commit();
			status= true;
		}catch (Exception e) {
			e.printStackTrace();
			entityManager.getTransaction().rollback();
		}

		entityManager.close();
		return status;
	}

	@Override
	public User userLogin(User user) {

		EntityManager entityManager=entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		String hql="from User us where us.userName=:name and us.password=:pass and us.isActive='0'";
		Query query=entityManager.createQuery(hql);
		query.setParameter("name",user.getUserName() );
		query.setParameter("pass", user.getPassword());

		List  allUsers=null;
		User dto=null;
		try {
			allUsers = query.getResultList();
			for (Object object : allUsers) {
				if(object!=null)
				{
					dto=(User)object;
					if(dto !=null)
					{
						if(dto.getIsActive()==0)
							return dto;
					}			
				}
			}
		}
		catch (Exception e) {
			e.printStackTrace();
			entityManager.getTransaction().rollback();
		}
		entityManager.close();
		return dto=null;
	}

	@Override
	public boolean updateUser(User user) {
		EntityManager entityManager=entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		try {

			String hql="update User user set user.password=:pass,user.mobileNo=:mno,user.phone=:ph,user.email=:em,user.address=:add where "
					+ "user.userName=:uname and user.isActive='0'";

			Query query=entityManager.createQuery(hql);
			query.setParameter("pass", user.getPassword());
			query.setParameter("mno", user.getMobileNo());
			query.setParameter("ph", user.getPhone());
			query.setParameter("em", user.getEmail());
			query.setParameter("add", user.getAddress());
			query.setParameter("uname", user.getUserName());

			int count=query.executeUpdate();
			if(count>0)
			{
				entityManager.getTransaction().commit();
				return true;
			}
			else
			{
				return false;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
			entityManager.getTransaction().rollback();
		}
		entityManager.close();
		return false;
	}

	@Override
	public boolean addHotel(Hotel hotel)  {
		boolean status=false;
		
		EntityManager entityManager =entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		try
		{
			entityManager.persist(hotel);
			entityManager.getTransaction().commit();
			status= true;
		}catch (Exception e) {
			e.printStackTrace();
			entityManager.getTransaction().rollback();
		}
		entityManager.close();
		return status;

	}

	@Override
	public boolean updateHotel(Hotel hotel) {
		boolean status=false;
		EntityManager entityManager=entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		try {
			String hql="update Hotel hotel set hotel.city=:city,hotel.address=:add,hotel.resturant=:resc,"
					+ "hotel.averageRatePerNight=:avg,hotel.phoneNo=:pn1,hotel.wifi=:wif,hotel.meals=:mea,hotel.email=:em,hotel.airConditonal=:ac where hotel.hotelName=:name and "
					+ "hotel.isActive='0'";

			Query query=entityManager.createQuery(hql);
			query.setParameter("city", hotel.getCity());
			query.setParameter("add", hotel.getAddress());
			query.setParameter("resc", hotel.getResturant());
			query.setParameter("avg", hotel.getAverageRatePerNight());
			query.setParameter("pn1", hotel.getPhoneNo());
			query.setParameter("wif", hotel.getWifi());
			query.setParameter("mea", hotel.getMeals());
			query.setParameter("em", hotel.getEmail());
			query.setParameter("ac", hotel.getAirConditonal());
			query.setParameter("name", hotel.getHotelName());
			int count=query.executeUpdate();

			if(count>0)
				status=true;
			else
				status=false;
		}
		catch (Exception e) {
			e.printStackTrace();
			entityManager.getTransaction().rollback();
		}

		entityManager.close();
		return status;
	}

	@Override
	public List<Hotel> getHotelByCity(Date date,String name,int rooms) {
		List<Hotel> hotelsList=null;
		EntityManager entityManager=entityManagerFactory.createEntityManager();
		EntityTransaction transaction=entityManager.getTransaction();
		transaction.begin();
		String hql="SELECT hotels FROM Hotel hotels where hotels.city=:cit and hotels.isActive='0' and hotels.isAvailabilty='yes'";
		Query query=entityManager.createQuery(hql);
		query.setParameter("cit", name);

		try {
			hotelsList = query.getResultList();
			if(hotelsList!=null)
			{
				for(Hotel hotel:hotelsList)
				{
					if( hotel.getNoOfRooms()>=rooms&& name.equalsIgnoreCase(hotel.getCity())
							&& hotel.getIsActive()==0)
					{
						transaction.commit();
						return hotelsList;
					}
				}
			}
		}
		catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
		}
		entityManager.close();
		return hotelsList=null;
	}

	@Override
	public boolean deleteUser(String name, String password) {
		boolean status=false;
		EntityManager entityManager=entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		String hql="update User user set user.isActive=1 where user.userName=:name and user.password=:pass and user.isActive='0'";
		Query query=entityManager.createQuery(hql);

		query.setParameter("name",name );
		query.setParameter("pass", password);

		try {
			int count = query.executeUpdate();
			if(count>0)
				status=true;
		}
		catch (Exception e) {
			e.printStackTrace();
			entityManager.getTransaction().rollback();
		}
		finally {
			entityManager.close();
		}
		return status;
	}

	@Override
	public boolean deleteHotel(String hotelName) {
		boolean status=false;
		EntityManager entityManager=entityManagerFactory.createEntityManager();
		EntityTransaction transaction=entityManager.getTransaction();
		transaction.begin();
		try {
			String hql="update Hotel hotel set hotel.isActive=1,hotel.isAvailabilty='no' where hotel.hotelName=:name and hotel.isActive='0'";
			Query query=entityManager.createQuery(hql);

			query.setParameter("name",hotelName );

			int count=query.executeUpdate();
			if(count>0)
				return status=true;
		}
		catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
		}
		entityManager.close();
		return status;
	}

	@Override
	public boolean addRating(HotelRating hotelRating) {
		boolean status=false;
		EntityManager entityManager =entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		try
		{
			entityManager.persist(hotelRating);
			entityManager.getTransaction().commit();
			status= true;
		}catch (Exception e) {
			e.printStackTrace();
			entityManager.getTransaction().rollback();
		}
		entityManager.close();
		return status;
	}

	@Override
	public List<Hotel> getHotelByFilter(Hotel hotel) {
		List<Hotel> hotelsList=null;
		EntityManager entityManager=entityManagerFactory.createEntityManager();
		EntityTransaction transaction=entityManager.getTransaction();
		transaction.begin();
		String hql="SELECT hotels FROM Hotel hotels where hotels.city=:cit and hotels.isActive='0' and hotels.isAvailabilty='yes' and "
				+ "hotels.wifi=:wif and hotels.resturant=:res and hotels.meals=:mea and hotels.airConditonal=:ac ";
		Query query=entityManager.createQuery(hql);
		query.setParameter("cit",hotel.getCity());
		query.setParameter("wif",hotel.getWifi());
		query.setParameter("res",hotel.getResturant());
		query.setParameter("mea",hotel.getMeals());
		query.setParameter("ac",hotel.getAirConditonal());

		try {
			hotelsList = query.getResultList();
			if(hotelsList!=null)
			{
				for(Hotel hotels:hotelsList)
				{
					if( hotels.getNoOfRooms()>=hotel.getNoOfRooms())
					{
						transaction.commit();
						return hotelsList;
					}
				}
			}
		}
		catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
		}
		entityManager.close();
		return hotelsList;
	}
}


