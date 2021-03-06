package data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import entities.Income;

@Transactional
@Repository
public class IncomeDAOImpl implements IncomeDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Income setIncome(Income income) {
		Income newIncome = em.find(Income.class, income.getId());
		newIncome.setName(income.getName());
		newIncome.setDate(income.getDate());
		newIncome.setAmount(income.getAmount());
		
		return newIncome;
	}

	@Override
	public Income getIncome(Income income) {
		return em.find(Income.class, income.getId());
	}
	
	@Override
	public Income addIncome(Income income) {
		em.persist(income);
		em.flush();
		return income;
	}

}
