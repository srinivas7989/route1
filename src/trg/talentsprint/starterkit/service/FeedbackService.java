package trg.talentsprint.starterkit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import trg.talentsprint.starterkit.model.Feedback;
import trg.talentsprint.starterkit.repository.FeedbackRepository;

@Service
public class FeedbackService {
	
	@Autowired
	private FeedbackRepository fdbkrep;
		
	public Feedback savefdbk(Feedback feedback) {
		return fdbkrep.save(feedback);
	}
}
