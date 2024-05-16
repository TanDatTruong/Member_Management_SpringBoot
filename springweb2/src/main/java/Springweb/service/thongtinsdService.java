package Springweb.service;

import Springweb.entity.thongtinsd;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;

public interface thongtinsdService {

    public Optional<thongtinsd> findById(Integer id);

    public Iterable<thongtinsd> findAll();

    public boolean existsById(Integer id);

    public long count();

    public void deleteById(Integer id);

    public void delete(thongtinsd entity);

    public void deleteAll();
    
    public thongtinsd findByMaTBvsMaTV(int maTB, int maTV ,LocalDateTime  tgdatcho);
//    public List<thongtinsd> searchTTSD(int keyword);
    
    public List<thongtinsd> findByMaTB(int maTB);
    
    public List<thongtinsd> findByMaTB1(int maTB);
    
    public List<thongtinsd> findByMaTVAndTGDatchoIsNotNull(int maTV);
    
    public LocalDateTime GetTGDatchoByMaTBvsMaTV(int maTB,int maTV);
    
    public thongtinsd findByMaTBAndMaTvAndTGDatchoIsNull(int maTB, int maTV);
    
    public List<LocalDateTime> findTGDatchoByMaTB(int maTB);
    
    public List<thongtinsd> getListsd(int matv);
    
    public List <thongtinsd> getListdangmuon(int matv);
    
    public List <thongtinsd> getListdamuon(int matv);
}
