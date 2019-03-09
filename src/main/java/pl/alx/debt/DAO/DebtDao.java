package pl.alx.debt.DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.alx.debt.model.Debt;


public interface DebtDao extends JpaRepository<Debt, Integer> {


}
