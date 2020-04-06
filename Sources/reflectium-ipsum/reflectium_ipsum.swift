public class ReflectionGenerator {
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
        "Eu sei que isso não tem a haver com a sua reflexão, mas achei relevante comentar, tente se prevenir para as zooms, ao menos ter uma aparência minimamente apresentável.",
        "Percebo a imanência do querer em si.",
        "Perceba a petulância do cavalo, Ivair.",
        "Parece bom.",
        "Ih, rapaz. Não sei não, hein?",
        "Bem legal isso ai, mas já parou pra pensar que uma parábola perebenta é uma perébola?",
        "Gostaria de ver isso aplicado, já pensou em criar um medium para compartilhar o conhecimento com o resto da turma?",
        "Foda né...",
        "Sim",
        "Acima de tudo, é fundamental ressaltar que a consolidação das estruturas deve passar por modificações independentemente das suas atribuições.",
        "A prática cotidiana prova que a hegemonia do ambiente auxilia a preparação e a composição do fluxo de informações.",
        "Por outro lado, a colaboração auxilia a preparação e a composição das diretrizes de desenvolvimento para o futuro.",
        "Eu tenho pra mim que vocês tudo são envolvido com droga.",
        "É fácil perceber a sua enorme evoluçãozinha, continue assim!",
        "Percebemos, cada vez mais, que a revolução das práticas diárias possibilita uma melhor visão global do processo de comunicação como um todo.",
        "Desta maneira, a percepção das dificuldades pode nos levar a considerar a reestruturação processual da qual fazemos parte.",
        "Eu acredito que seja por essas linhas mesmo.",
        "Todas estas questões, devidamente ponderadas, levantam dúvidas sobre as etapas executadas.",
        "vejo que há muitas mudanças no seu jeito de ficar sempre o mesmo, continue assim.",
        "Gostaria de enfatizar que a constante divulgação das informações auxilia a nossa preparação.",
        "O cuidado em identificar pontos críticos no novo modelo estrutural aqui preconizado é uma das consequências das condições inegavelmente apropriadas.",
        "Podemos já vislumbrar o modo pelo qual o aumento do diálogo entre os alunos e professores agrega valor ao estabelecimento dos relacionamentos.",
        "A nível organizacional, o entendimento das metas propostas cumpre um papel essencial na formulação dos conhecimentos estratégicos para atingir a excelência.",
        "Tem certeza que esta reflexão não foi gerada automaticamente?",
        "Cuidado, você esqueceu novamente de entregar no formato certo.",
        "O cuidado em não consumir cilindros de folhas de tabaco de corte fino enroladas numa mortalha durante as atividades vigentes",
        "Não obstante, o consenso sobre a necessidade de qualificação maximiza as possibilidades por conta dos métodos utilizados na avaliação de resultados.",
        "Observe que há um equivoco em comentar tais aspectos.",
        "Ótimo! Vou começar a cobrar outros formatos, hein?",
        "Excelente ideia! Coerente com as atividades da semana passada.",
        "Muito bem! Trabalhe em diminuir as distrações.",
        "Que bom! Tem unido essas tarefas com os seus objetivos?",
        "Bom começo para a reflexão, mas preciso que pense um pouco mais sobre sua rotina diária. Tente refletir sobre o que pode melhorar amanhã, como poderia ajudar meus colegas com o conhecimento atual. Assim poderemos discorrer mais sobre os aspectos estudados e os formatos adotados para sua rotina.",
        "Excelente. Se puder, continue assim. Se não der, não tem problema, pois haverá dias em que o progresso parece pequeno (e não é) ou que foi realmente pequeno. O importante é a resiliência.",
        "É isso mesmo. Faça escolhas e aprenda com elas. Sem se julgar. Só aprendendo mesmo.",
        "Show de bola, mal posso esperar pra ver o que você vai conseguir fazer com isso.",
        "Não me lembro se já tivemos essa discussão, mas acredito que sim, tá complicado isso, não me lembro quando foi a ultima vez que eu tomei banho ou tirei o pijama.",
        "Ótimo! Não se esqueá de manter contato com a turma, nem que seja pra jogar conversa fora, ou jogar algo mesmo, e a propósito, se forem jogar, por favor, me chamem.",
        "Pera, hoje não é terça-feira? rapaz...",
        "Tente ver como os colegas estão resolvendo esse problema ai que você falou na sua reflexão, eu não faço ideia.",
        "Boa sorte com isso, se precisar de mim estarei jogando Animal Crossing.",
        "Preciso refletir mais sobre isso, qualquer novidade, me avise."
    ]
    
    private static let OK_RESPONSES: [String] = ["Ok", "OK", "Okay", "👍"]
    
    /// Generates a generic and random response for a reflection.
    /// - Returns: A random String response for a student reflection
    public static func generatiumReflectium() -> String {
        let magicNumber = Int.random(in: 1...100)
        
        if magicNumber <= ReflectionGenerator.CHANCE_OK_RESPONSE {
            return ReflectionGenerator.OK_RESPONSES.randomElement()!
        } else {
            return ReflectionGenerator.PRHASES.randomElement()!
        }
    }
}
