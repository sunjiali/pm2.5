import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.test.hibernateutil.HibernateSessionFactory;
import com.test.model.Aqi;
import com.test.model.City;
import com.test.model.Station;


public class Test {
//	public static void main(String[] args) {
//		Session session = HibernateSessionFactory.getSession();
//		Transaction txt = session.beginTransaction();
//		Station station=(Station) session.get(Station.class, "1258A");
//		Set<Aqi> aqis=station.getAqis();
//		List list=new ArrayList<Aqi>(aqis);
////		Iterator<Aqi> aq=aqis.iterator();
////		while(aq.hasNext()){
////			Aqi aqi = aq.next();
////			System.out.println(aqi.getStation());
////			System.out.println(aqi.getPrimaryPollutant());
////			System.out.println(aqi.getAqi());
////		}
////		System.out.println(station.getArea());
////		System.out.println(station.getPositionName());
//		System.out.println(list);
//		txt.commit();
//		session.close();
//	}
	public static void main(String[] args) {
		Session session = HibernateSessionFactory.getSession();
		Transaction txt = session.beginTransaction();
		City city = (City)session.get(City.class, "北京");
		Set<Station> stations = city.getStations();
		List<Station> list= new ArrayList<Station>(stations);
//		Iterator<Station> sta=stations.iterator();
//		while(sta.hasNext()){
//			Station station = sta.next();
//			System.out.println(station.getArea());
//			System.out.println(station.getPositionName());
//			System.out.println(station.getAqis());
//		}
		System.out.println(list);
		txt.commit();
		session.close();
	}
//		Session session = HibernateSessionFactory.getSession();
//		Transaction txt = session.beginTransaction();
//		Station station = (Station)session.get(Station.class, "1001A");
//		Set<Aqi> aqis = station.getAqis();
//		List<Aqi> list =new ArrayList<Aqi>(aqis);
////		Iterator<Aqi> aqi=aqis.iterator();
//		
//		while(aqi.hasNext()){
//			Aqi aq = aqi.next();
//			aq.getId();
//			System.out.println(station.getArea());
//			System.out.println(station.getStationCode());
//			System.out.println(station.getPositionName());
//			System.out.println(station.getAqis());
//			System.out.println(aq.getTimePoint());
//			System.out.println(aq.getAqi());
//			System.out.println(aq.getId());
////		}
//		System.out.println(list);
//		txt.commit();
//		session.close();
//	
//	}

}
