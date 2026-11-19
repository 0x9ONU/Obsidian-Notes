```ad-question
Compelling demonstration of personal creativity is a very important factor in our selection process. We are more interested in what makes your personal contributions stand out and in the creativity you employed. If you need to describe work done by others or as a group to provide context, please make clear attribution of what was done by you versus by others. Include not only your practical, but especially your intellectual contribution to any idea or direction you pursued.    
  
*In addition to responding to the items below, please also submit the abstracts or cover pages of your most significant scientific publications/reports on the Supplemental & Other Information page of this application.

Project 1:  
First, provide a brief overview of your research project for a non-specialist, technical audience. Second, describe **YOUR** direct and individual contribution to this research that exemplifies your creativity and independent thinking.
```

# Outline

- Discuss machine learning project
- Outline the main issue regarding malicious traffic on SDNs
- Go into issues regarding classical machine learning classifiers
	- Training with all malicious data will lead to overfitting and bad results
- Explain how the data was split and data reduction techniques were applied
- multiple machine learning models applied in parallel, one for each major attack type
- Can be run in real time
- Contributed:
	- Wrote both papers independently with little oversight from my research advisors
	- The novel method of applying the feature reduction and putting the models in parallel

# Essay

During my first year of my undergraduate studies, I had an opportunity very few researchers my age get a chance at. It was an opportunity to begin my career as a researcher. The Evan’s Student Research Fellowship is an exclusive opportunity provided to the top 1% of engineering students at the college. With it, a student is funded for a whole summer of research on a project determined by their assigned research advisors. 

I was very hesitant to apply at first as questions spiraled my thought: “Am I too young to take this position?”, “There has to be better candidates right?”, “Won’t I miss my family and friends back home?” Pushing past doubts with the help of my close peers, I wrote up a proposal and submitted my application anyways. To my surprise, I was offered an interview with my potential research advisors. I went through the interview process and would be chosen over the finalists to become their next research student.

From there, we spent no time on getting started on the project. The project itself had three primary components: networking, cybersecurity, and machine learning. Networks, which are the primary way computer systems communicate with each other, are often targets by malicious attacks. These attacks range from as simple as disrupting someone’s connection to as catastrophic as getting access to a whole computer without consent. Because of this, the field of cybersecurity is born, where researchers find ways to prevent, detect, and protect users from these attacks. Even though there are many methods, they can all suffer from attacks that have just been released, also known as day 0 attacks. These attacks can fly under the radar as no previous fingerprint would be known to be able to differentiate the attacks from normal network traffic. This is where machine learning comes in. Not to be confused with the artificial intelligence (AI) models seen in the media today, machine learning uses mathematical models to predict an outcome based on a set of inputs and training data. The main goal of this project is to train machine learning models that detect these network attacks in a real-time environment.

However, once we started applying the methodology, we quickly ran into a few issues. Firstly, we decided to use all the data we had to train these models. This had problems as the model would do really well on test data, but would fail to work properly when applied to new real-time data. This is known as overfitting and is a major problem with machine learning in general. Additionally, the original model only gave a binary solution: either there was an attack in the network, or there was not. This would be too granular as the detection should be able to specify what attack is happening so proper reactionary measures can be taken to stop the adversary. 

After a lot of brainstorming, the “eureka” moment happened. I was thinking about how in nature, organisms evolve from a more general form into a specialized form due to natural selection and other environmental pressures. The most famous example being Darwin’s finches. It was found that, even though these birds came from a single ancestor, each finch had a significantly different beak depending on their food source [1]. What if like biology, my machine learning models could be designed to focus on one specific job and work together like an ecosystem.

From there, I did not hesitate to get to work. I create one model for each type of attack and would train each model only with its respective attack data. This would affect the models two fold: 1) the models were no longer overfitting because they had better and more concise data, and 2) each model would output their own prediction, meaning that multiple attacks could be simultaneously detected with a single input. This ultimately solved both issues with a single solution. I would then implement this idea, train each of the models, and then test them against real-time data. The results were impressive enough to go into my first two research papers, which were finalized by the end of my sophomore fall semester [2-3].

The lessons I learned from this project were bountiful. Taking inspiration from other fields, especially nature, is a powerful way to spark innovative engineering and design. Furthermore,  it made it abundantly clear that growth happens at the edges of our comfort zones. Much like how species adapts to their niches, it is critical to embrace unexpected opportunities presented to us. Without these moments, our greatest breakthroughs would be left to extinction. 

## Resources

[1] J. Gould, "Remarks on a Group of Ground Finches from Mr. Darwin's Collection, with Characters of New Species," *Proceedings of the Zoological Society of London*, pt. 5, pp. 4–7, 1837.
[2] E. Berei, A. Oun, and M. A. Khan, "Enhancing Cybersecurity: A Pipeline Approach for Efficient Machine Learning Intrusion Detection," in _2023 IEEE 14th Annual Ubiquitous Computing, Electronics & Mobile Communication Conference (UEMCON)_, New York, NY, USA, 2023, pp. 495-501. doi: 10.1109/UEMCON59035.2023.10316023.
[3] E. Berei, M. A. Khan, and A. Oun, "Machine Learning Algorithms for DoS and DDoS Cyberattacks Detection in Real-Time Environment," in _2024 IEEE 21st Consumer Communications & Networking Conference (CCNC)_, Las Vegas, NV, USA, 2024, pp. 1048–1049. doi: 10.1109/CCNC51664.2024.10454755.