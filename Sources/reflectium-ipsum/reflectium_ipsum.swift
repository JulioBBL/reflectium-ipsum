class ReflectionGenerator {
    /// Represents the percentile chance of a "ok" response.
    static var CHANCE_OK_RESPONSE: Int = 10
    
    private static let PRHASES: [String] = [
        "Excelente! Continue assim.",
        "Normal encontrar dificuldades no meio do caminho, mas podemos sempre ajustar o planejamento nestes casos.",
        "Não se preocupe, você pode ajustar a entrega para amanhã pensando nisso.",
        "Achei que seu desempenho hoje deixou um pouco a desejar, o que acha de melhorar o planejamento para amanhã?",
        "Muito bem! Mas vamos tentar novos formatos?",
        "Busque fazer entregáveis de diferentes tipos.",
        "Tente dividir horários específicos para cada atividade do dia.",
        "A reflexão pode ser mais livre, sem seguir necessariamente as perguntas.",
        "Pense em realizar o planejamento junto com a reflexão, pode ajudar.",
        "Use estas informações para ajudar no planejamento da próxima semana.",
        "Leve isso em consideração quando for fazer os próximos planejamentos.",
        "Tem sempre um próximo dia.",
        "Não é necessário, mas é altamente recomendado.",
        "Muito bom saber disso, que amanhã continue assim.",
        "Ótimo! Que amanhã tenha mais disso ai que você falou!",
        "Aham... acontece isso de vez em quando.",
        "É sempre importante ter em mente o escopo do projeto que você está planejando atacar, pra evitar situações como essa, mas infelizmente essa habilidade é adquirida com o tempo.",
        "Parabéns pela publicação no Medium. Está muito bom. Bati \(Int.random(in: 2...50)) palmas pra você.",
        "Dias ruins acontecem, tente interagir mais com os colegas, mesmo fora dos horários da Academy pra manter o relacionamento.",
        "Acho que esse é um problema que vários nós estamos enfrentando, é realmente muito difícil de contornar, já eu, desde o começo da quarentena, tomei banho apenas 2 vezes e só tirei o pijama pra ir pegar a pizza na portaria ontem.",
        "Eu sei que isso não tem a haver com a sua reflexão, mas achei relevante comentar, tente se prevenir para as zooms, ao menos ter uma aparência minimamente apresentável."
    ]
    
    private static let OK_RESPONSES: [String] = ["Ok", "OK", "Okay", "👍"]
    
    public static func generatiumReflectium() -> String {
        let magicNumber = Int.random(in: 1...100)
        
        if magicNumber <= ReflectionGenerator.CHANCE_OK_RESPONSE {
            return ReflectionGenerator.OK_RESPONSES.randomElement()!
        } else {
            return ReflectionGenerator.PRHASES.randomElement()!
        }
    }
}
