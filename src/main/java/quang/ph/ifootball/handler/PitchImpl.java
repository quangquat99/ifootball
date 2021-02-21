package quang.ph.ifootball.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import quang.ph.ifootball.entity.Pitch;
import quang.ph.ifootball.repository.PitchRepository;

@Repository
@Transactional
public class PitchImpl {

	@Autowired
	PitchRepository repository;

	public List<Pitch> findAll() {
		try {
			return repository.findAll();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
			return null;
		}

	}

	public Pitch findById(Long id) {
		try {
			Pitch pitch = repository.findById(id).get();
			return pitch;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
			return null;
		}
	}

	public void save(Pitch pitch) {
		try {
			repository.save(pitch);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}

	public void delete(Pitch pitch) {
		try {
			repository.delete(pitch);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}
}
