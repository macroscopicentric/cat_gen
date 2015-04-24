FIRST_WORD_POOL = {
    'shit' => ['tle'],
    'turd' => ['le'],
    'butt' => [],
    'nugg' => ['ie'],
    'muffin' => [],
    'potato' => [],
    'fat' => ['tie'],
    'vom' => ['mie'],
    'whisker' => [],
    'purr' => []
}

SECOND_WORD_POOL = [
    'kin',
    'butt',
    'cat',
    'brain',
    'face',
    'bucket',
    'hole',
    'nug',
    'bun',
    'man'
]

def build_name
    nickname = first_word
    nickname += second_word if rand(0..4) != 0
    return nickname
end

def first_word
    first_word = FIRST_WORD_POOL.keys.sample
    first_word_suffixes = FIRST_WORD_POOL[first_word]

    if !first_word_suffixes.empty? and coin_toss
        first_word += first_word_suffixes.sample
    end

    return first_word
end

def second_word
    second_word = SECOND_WORD_POOL.sample
    second_word += 's' if coin_toss

    return second_word
end

def coin_toss
    return rand(0..1) == 1
end