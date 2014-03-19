WORDS = %w(
    boys boy girl girls kissed kiss kissing one waking
    woken wake woke vegas thinking you us thought think
    mannequin hot cold warm cool freezing tepid afford
    rich poor lost breathing breath breathe breathtaking
    fingerprints pink purple teenage teenager dream dreaming
    dreamer dreamy teen teens last first day night morning
    evening afternoon peacock firework circle drain square
    away extraterrestrial ET living live pearl hummingbird
    heart heartbeat movies movie kitty purry roar legendary
    lovers love loving loved legend legends birthday birth
    walking air floating unconditionally dark horse light
    pony cottoncandy fairy tale international smile ghost
    moment momentary minute rainbow grace wish lover
    graceless tacky little cute adorable turquoise clouds
    )

WORDS.each do |word|
    Word.create!(text: word)
end

EXCUSES = ["I'm one of the boys", "I kissed a girl", "I woke up in Vegas", "Thinking of you", "You're a mannequin", "You're so gay", "You're hot then you're cold", "Can you afford me?", "I'm lost", "It's self inflicted", "I'm still breathing", "Your fingerprints", "I am a teenage dream", "Last Friday night", "I am a California girl", "You're a firework", "Show me your peacock", "You're circling the drain", "You're the one that got away", "You're an alien", "I'm an alien", "Who are you living for?", "Who am I living for?", "You're a pearl", "I'm a pearl", "You give me that hummingbird heartbeat", "It's not like the movies"]

EXCUSES.each do |excuse|
  Sentence.create!(text: excuse, excuse: true)
end