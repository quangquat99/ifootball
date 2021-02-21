package quang.ph.ifootball.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import quang.ph.ifootball.entity.PitchBooking;
import quang.ph.ifootball.repository.PitchBookRepository;

@Repository
@Transactional
public class PitchBookingImpl {
	
	@Autowired
	PitchBookRepository repository;

	public List<PitchBooking> findAll() {
		try {
			return repository.findAll();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
			return null;
		}

	}

	/*
	public PitchBooking findById(Long id) {
		try {
			PitchBooking pitchBooking = repository.findById(id).get();
			return pitchBooking;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
			return null;
		}
	}
	*/

	public void save(PitchBooking pitchBooking) {
		try {
			repository.save(pitchBooking);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}

	public void delete(PitchBooking pitchBooking) {
		try {
			repository.delete(pitchBooking);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}
}
