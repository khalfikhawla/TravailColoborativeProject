package SendEmail;

import java.sql.*;
public class GetData {
	public static void main(String args[]){  
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/TravailColoborativeProject","root","");  
		//	==========================================================================
			Statement stmt=con.createStatement();  
			ResultSet rs=stmt.executeQuery("select *  from SessForm where idSess ='" + 1 + "' ");  
			String  date_Debut =null , date_Fin =null , date_LimiteInscription =null, type =null , lieu =null, adresse =null,description =null,sujet =null,programme =null;
			int capacite = 0;
			double prix = 0.;
			while(rs.next()) {
				date_Debut = rs.getString(2);
				date_Fin = rs.getString(3);
				date_LimiteInscription = rs.getString(4);
				capacite = rs.getInt(3);
				type = rs.getString(6);
				lieu = rs.getString(7);
				adresse = rs.getString(8);
				prix = rs.getDouble(10);
				description = rs.getString(11);
				sujet = rs.getString(12);
				programme = rs.getString(13);
				
			} 
			//	==========================================================================  
			for(int i= 1 ; i<=4;i++) {
				//Statement statement=con.createStatement();  
				ResultSet resultSet=stmt.executeQuery("select *  from abonnes where idAbonne ='" + i + "' ");  
				String  NomAbonne = null , PrenomAbonne = null , AdresseAbonne= null , EmailAbonne = null;
				int TelAbonne = 0; 
				while(resultSet.next()) {
					NomAbonne = resultSet.getString(2);
					PrenomAbonne = resultSet.getString(3);
					AdresseAbonne = resultSet.getString(4);
					TelAbonne = resultSet.getInt(5);
					EmailAbonne = resultSet.getString(6);
					
				} 
				
                 String Text=null;
                 Text = " Evenement newsLetter \n "
                  		+ "Madame/monsieur  :  "+ PrenomAbonne +" "+NomAbonne +"\n"
 						+ "Sujet " + sujet +"\n"
                 		+ "Date debut Evenement: " + date_Debut +"\n"
                 		+ "Date Fin Evenement: " + date_Fin +"\n"
                 		+ "Date Limite  Inscription: " + date_LimiteInscription +"\n"
 						+ "Descriptiopn : "  +description +"\n"
 						+ "Programme : " + programme +"\n"
 						+ "Prix : " + prix +"\n"
 						+ "Capcite : " +capacite+"\n"
 						+ "Adressé : " +adresse+"\n"
 						+"Merci d'être venu ";
                 		
				//System.out.println(Email);
				//----------------------------------------------
				String  host="smtp.gmail.com",
						from= "hamzakouki33@gmail.com",
						login= "hamzakouki33@gmail.com",
						pwd= "****************",
						to=EmailAbonne,
						TextEmail=Text ;

				SendE_mail object = new SendE_mail();
				object.sendMsgMethod(host, from, login, pwd, to,TextEmail); 
			}
			con.close(); 
			}catch(Exception e){ System.out.println(e);}  
			}  
}
