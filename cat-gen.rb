FIRST_WORD_POOL = {
    'baby' => [],
    'butt' => [],
    'chub' => [],
    'fat' => ['tie'],
    'fluffy' => [],
    'fuzz' => [],
    'muffin' => [],
    'nugg' => ['ie'],
    'potato' => [],
    'purr' => [],
    'shit' => ['tle'],
    'sweet' => [],
    'tub' => ['bie'],
    'turd' => ['le'],
    'turtle' => [],
    'vom' => ['mie'],
    'whisker' => []
}

SECOND_WORD_POOL = [
    'brain',
    'bucket',
    'bun',
    'butt',
    'cat',
    'cheeks',
    'face',
    'head',
    'hole',
    'kin',
    'man',
    'nug',
    'nugget'
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

    second_word += 's' if coin_toss and !second_word.end_with?('s')

    return second_word
end

def coin_toss
    return rand(0..1) == 1
end