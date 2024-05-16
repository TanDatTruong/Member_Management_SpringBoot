package Springweb.repository;

import Springweb.entity.thongtinsd;
import java.sql.Timestamp;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface thongtinsdRepository extends CrudRepository<thongtinsd, Integer> {
//    @Query("SELECT t FROM thietbi t WHERE t.TenTB LIKE %:keyword%")
//    List<thongtinsd> searchTTSD(String keyword);

//    @Query("SELECT s FROM thongtinsd s JOIN thietbi t ON s.MaTB = t.MaTB WHERE s.MaTB = :maTB")
//    List<thongtinsd> searchTTSD(int maTB);
    
    @Query("SELECT s FROM thongtinsd s WHERE s.MaTB = :maTB AND (s.TGMuon IS NOT NULL AND s.TGTra IS NULL)")
    List<thongtinsd> findByMaTB(int maTB);
    
    @Query("SELECT s FROM thongtinsd s WHERE s.MaTB = :maTB AND MaTV =:maTV AND s.TGDatcho =:tgdatcho")
    thongtinsd findByMaTBvsMaTV(int maTB , int maTV, LocalDateTime  tgdatcho);
    
    @Query("SELECT s FROM thongtinsd s WHERE s.MaTB = :maTB AND s.TGDatcho IS NOT NULL AND s.TGMuon IS NULL AND s.TGTra IS NULL")
    List<thongtinsd> findByMaTB1(int maTB);
    
    @Query("SELECT s FROM thongtinsd s WHERE s.MaTB = :maTB AND s.MaTV = :maTV AND s.TGDatcho IS NULL")
    thongtinsd findByMaTBAndMaTvAndTGDatchoIsNull(int maTB, int maTV);
    
    @Query("SELECT s.TGDatcho FROM thongtinsd s WHERE s.MaTB =:maTB AND s.MaTV =:matv")
    LocalDateTime GetTGDatchoByMaTBvsMaTV(int maTB,int matv);
    
    @Query("SELECT s FROM thongtinsd s WHERE s.MaTV = :maTV AND s.TGDatcho IS NOT NULL")
    List<thongtinsd> findByMaTVAndTGDatchoIsNotNull(int maTV);
    
    @Query("SELECT s.TGDatcho FROM thongtinsd s WHERE s.MaTB = :maTB AND s.TGDatcho IS NOT NULL")
    List<LocalDateTime> findTGDatchoByMaTB(int maTB);
    
    
    
    @Query("SELECT s FROM thongtinsd s  WHERE s.TGDatcho is not NULL AND s.TGMuon is NULL  and s.MaTV=?1 ")
    List<thongtinsd> getListsd(int matv);
    
     @Query("SELECT s FROM thongtinsd s  WHERE s.TGMuon is not NULL AND s.TGTra is NULL and s.MaTV=?1 ")
    List<thongtinsd> getListdangmuon(int matv);
    
    
     @Query("SELECT s FROM thongtinsd s  WHERE s.TGMuon is not NULL AND s.TGTra is not NULL  and s.MaTV=?1 ")
    List<thongtinsd> getListdamuon(int matv);
    
    
//    @Query("SELECT s FROM thongtinsd s WHERE s.MaTB = :maTB AND s.TGMuon >= :startTime")
//    List<thongtinsd> findByMaTB(int maTB, Timestamp startTime); 
//    List<thongtinsd> findByMaTB(int maTB, Timestamp startTime);
 
}
