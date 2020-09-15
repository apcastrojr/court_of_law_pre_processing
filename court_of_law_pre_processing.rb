class CourtOfLawPreProcessing

  def begin(judge_text)
     return ActionView::Base.full_sanitizer.sanitize(preprocessamento(judge_text)).to_s
  end

  def preprocessamento(texto_sentenca)
     return normalization(fonetiza(stopwords(stemming(limpeza_texto(texto_sentenca)))))
  end

  private

  def stemming(texto)
     novo_texto = texto
     ['tenho','tens','tem','temos','tendes','têm','tinha','tinhas','tinhamos','tínheis','tinham','tive','tiveste','teve','tivemos','tivestes','tiveram','tivera','tiveras','tivéramos','tivéreis','tiveram','terei','terás','terá','teremos','tereis','terão','teria','terias','teríamos','teríeis','teriam','tenha','tenhas','tenhamos','tenhais','tenham','tivesse','tivesses','tivéssemos','tivésseis','tivessem','tiver','tiveres','tiver','tivemos','tiverdes','tiverem','tendo'].map do |token|
        #novo_texto = novo_texto.gsub(" #{token} ",' ter ')
        novo_texto = novo_texto.gsub(" #{token} ",' ')
     end
     ['devo','deves','deve','devemos','deveis','devem','devia','devias','devíamos','devíeis','deviam','devi','deveste','deveu','devemos','devestes','deveram','devera','devêramos','devêreis','deveram','deverei','deverás','deverá','deveremos','devereis','deverão','deveria','deverias','deveríamos','deveríeis','deveriam','deva','devamos','devais','devam','devesse','devesses','devesse','devêssemos','devêsseis','devessem','dever','deveres','devermos','deverdes','deverem','devendo'].map do |token|
        #novo_texto = novo_texto.gsub(" #{token} ",' dever ')
        novo_texto = novo_texto.gsub(" #{token} ",' ')
     end
     ['estou','estás','está','estamos','estais','estão','estava','estavas','estávamos','estáveis','estavam','estive','estiveste','esteve','estivemos','estivestes','estiveram','estivera','estiveras','estivera','estivéramos','estivéreis','estiveram','estarei','estarás','estará','estaremos','estareis','estarão','estaria','estarias','estaríamos','estaríeis','estariam','esteja','estejas','estejamos','estejais','estejam','estivesse','estivesses','estivéssemos','estivésseis','estivessem','estiver','estiveres','estivermos','estiverdes','estiverem','estando'].map do |token|
        #novo_texto = novo_texto.gsub(" #{token} ",' estar ')
        novo_texto = novo_texto.gsub(" #{token} ",' ')
     end
     ['sou','és','é','somos','sois','são','era','eras','éramos','éreis','eram','fui','foste','foi','fomos','fostes','foram','fora','foras','fôramos','fôreis','foram','serei','serás','será','seremos','sereis','serão','seria','serias','seríamos','seríeis','seriam','seja','sejas','sejamos','sejais','sejam','fosse','fosses','fôssemos','fôsseis','fossem','tor','fores','formos','fordes','forem','sendo'].map do |token|
        #novo_texto = novo_texto.gsub(" #{token} ",' ser ')
        novo_texto = novo_texto.gsub(" #{token} ",' ')
     end

     ['digo','dizes','diz','dizemos','dizeis','dizem','dizia','dizias','dizíamos','dizíeis','diziam','disse','disseste','dissemos','dissestes','disseram','dissera','disseras','disséramos','disséreis','disseram','direi','dirás','dirá','diremos','direis','dirão','diria','dirias','diríamos','diríeis','diriam','dissesse','dissesses','disséssemos','dissessem','disser','disseres','dissermos','disserdes','disserem'].map do |token|
        #novo_texto = novo_texto.gsub(" #{token} ",' dizer ')
        novo_texto = novo_texto.gsub(" #{token} ",' ')
     end

     novo_texto = novo_texto.gsub(' juros ',' juro ')
     novo_texto = novo_texto.gsub(' multas ',' multa ')
     novo_texto = novo_texto.gsub(' valores ',' valor ')
     novo_texto = novo_texto.gsub(' contratos ',' contrato ')
     novo_texto = novo_texto.gsub(' contratual ',' contrato ')
     novo_texto = novo_texto.gsub(' contratuais ',' contrato ')
     novo_texto = novo_texto.gsub(' embargos ',' embargo ')
     novo_texto = novo_texto.gsub(' crédito ',' credito ')
     novo_texto = novo_texto.gsub(' créditos ',' credito ')
     novo_texto = novo_texto.gsub(' creditos ',' credito ')
     novo_texto = novo_texto.gsub(' bens ',' bem ')
     novo_texto = novo_texto.gsub(' filhos ',' filho ')
     novo_texto = novo_texto.gsub(' alimento ',' alimentos ')
     novo_texto = novo_texto.gsub(' divórcio ',' divorcio ')
     novo_texto = novo_texto.gsub(' divórcios ',' divorcio ')
     novo_texto = novo_texto.gsub(' divorcios ',' divorcio ')
     novo_texto = novo_texto.gsub(' prazos ',' prazo ')
     novo_texto = novo_texto.gsub(' acordos ',' acordo ')
     novo_texto = novo_texto.gsub(' taxas ',' taxa ')
     novo_texto = novo_texto.gsub(' pagamentos ',' pagamento ')
     novo_texto = novo_texto.gsub(' cobranças ',' cobrança ')
     novo_texto = novo_texto.gsub(' capitalizações ',' capitalização ')
     novo_texto = novo_texto.gsub(' revisionais ',' revisional ')
     novo_texto = novo_texto.gsub(' consignatórias ',' revisional ')
     novo_texto = novo_texto.gsub(' consignatória ',' revisional ')
     novo_texto = novo_texto.gsub(' consignatorias ',' revisional ')
     novo_texto = novo_texto.gsub(' consignatoria ',' revisional ')
     novo_texto = novo_texto.gsub(' esbulhos ',' esbulho ')
     novo_texto = novo_texto.gsub(' área ',' area ')
     novo_texto = novo_texto.gsub(' áreas ',' area ')
     novo_texto = novo_texto.gsub(' areas ',' area ')
     novo_texto = novo_texto.gsub(' benefícios ',' beneficio ')
     novo_texto = novo_texto.gsub(' benefício ',' beneficio ')
     novo_texto = novo_texto.gsub(' beneficios ',' beneficio ')
     novo_texto = novo_texto.gsub(' rurais ',' rural ')
     novo_texto = novo_texto.gsub(' aposentadorias ',' aposentadoria ')
     novo_texto = novo_texto.gsub(' idades ',' idade ')
     novo_texto = novo_texto.gsub(' segurados ',' segurado ')
     novo_texto = novo_texto.gsub(' provas ',' prova ')
     novo_texto = novo_texto.gsub(' federais ',' federal ')
     novo_texto = novo_texto.gsub(' sociais ',' social ')

     return novo_texto
  end

  def fonetiza(texto)
     novo_texto = texto

     ['farmácia','drogaria'].map do |token|
        novo_texto = novo_texto.gsub(" #{token} ",' farmácia ')
     end

     ['mercado','supermercado','mercearia','hipermercado','atacadão','carrefour'].map do |token|
        novo_texto = novo_texto.gsub(" #{token} ",' supermercado ')
     end

     ['jogo futebol','jogar futebol','campeonato futebol','partida futebol','jogar pelada','bater baba','estadio futebol','serra dourada','estádio futebol','antonio accioly','antônio accioly','estadio haile pinheiro','estadio hailé pinheiro'].map do |token|
        novo_texto = novo_texto.gsub(" #{token} ",' jogo futebol ')
     end

     return novo_texto
  end

  def stopwords(texto)
     novo_texto = texto

     #artigos, preposições, pronomes, numeral
     ['a','à','às','as','à','ás','jamais','agora','ainda','alguém','algum','alguma''algumas','alguns','ampla','amplas','amplo','amplos','ante','antes','ao','aos','após','aquela','aquelas','aquele','aqueles','aquilo','as','até','através','cada','coisa','coisas','com','como','contra','contudo','da','daquele','daqueles','das','de','dela','delas','dele','deles','depois','desse modo','deste modo','dessa','dessas','desse','desses','desta forma','desta','destas','deste','deste','destes','disto','dito','do','dos','e','é','e','ela','elas','ele','eles','em','enquanto','entre','essa','essas','esse','esses','esta','estas','este','estes','eu','feita','feitas','feito','feitos','for','grande','grandes','isso','isto','já','la','la','lá','lhe','lhes','lo','mas','me','mesma','mesmas','mesmo','mesmos','meu','meus','minha','minhas','muita','muitas','muito','muitos','na','não','nas','nem','nenhum','nessa','nessas','nesta','nestas','ninguém','no','nos','nós','nossa','nossas','nosso','nossos','num','numa','nunca','o','os','ou','outra','outras','outro','outros','outrossim','para','pela','pelas','pelo','pelos','pequena','pequenas','pequeno','pequenos','per','perante','pois','porque','pouca','poucas','pouco','poucos','primeiro','primeiros','própria','próprias','próprio','próprios','quais','qual','quando','quanto','quantos','que','quem','são','se','seja','sejam','sem','sempre','seu','seus','si','sido','só','sob','sobre','sua','suas','talvez','também','tampouco','te','teu','teus','ti','tido','toda','todas','todavia','todo','todos','tu','tua','tuas','tudo','última','últimas','último','últimos','um','uma','umas','uns','vez','vos','vós','dois','duas','três','treis','demais','além','alem','mais','assim sendo','assim','ja','nestes termos','nestes','qualquer','respectiva','respectivo','respectivas','respectivos','por'].map do |token|
        novo_texto = novo_texto.gsub(" #{token} ",' ')
     end

     #termos jurídicos comuns
     ['artigo','artigos','art','parágrafo','paragrafo','paragrafos','parágrafos','inciso','incisos','tipificacao legal','tipificacao','natureza','naturezas','classe','classes','assunto','assuntos','movimento','movimentos','lei federal','leis federais','lei complementar','leis complementares','lei','leis','codigo defesa consumidor','código defesa consumidor','codigo civil brasileiro','código civil brasileiro','codigo processo civil legislacao','código processo civil legislacao','codigo processo civil','código processo civil','codigo civil','código civil','codigo processo penal','código processo penal','codigo penal','código penal','cpp','cpc','cdc','súmula','súmulas','sumula','sumulas','ministerio publico','ministério público','requer','requerente','requerido','exequente','executado','promovente','promovido','reclamado','reclamante','certidao','certidão','especificação','especificacao','especie','especies','processo','ação','acão','acao','ré','autor','autora','grifei','grifo','data vênia','data venia','smj','fls','defensoria publica','defensoria pública','n','autos','caso','direito','parte','inicial','réu','reu','julgado','juiz','justiça','termos','requerida','decisão','audiência','processual','medida','juízo','rel','fato','julgamento','instrumento','medida','pena','mérito','embargo','autores','vista','tjgo','exposto','tribunal','sentença','face','pedido','pedidos','tutela','tutelas','agravo','agravos'].map do |token|
        novo_texto = novo_texto.gsub(" #{token} ",' ')
     end

     return novo_texto
  end

  def limpeza_texto(texto)
     novo_texto = texto.downcase

     novo_texto = novo_texto.gsub('.','').gsub(',','').gsub('!',' ').gsub(':',' ').gsub(';',' ').gsub('?',' ').gsub('\"',' ').gsub('\'',' ').gsub('(',' ').gsub(')',' ').gsub('-','').gsub('r$',' ').gsub('$',' ').gsub('|',' ').gsub(' / ','').gsub('*',' ').gsub('§',' ').gsub('=',' ').gsub('nº','').gsub('{','').gsub('}','').gsub(/[.',`”;<>_\/{}"]/,'')

     novo_texto = novo_texto.gsub('style@page','').gsub('style','').gsub('70px','').gsub('\"span ','').gsub('p&ampnbsp','').gsub(' p ','').gsub('\"lineheight"','').gsub('textindent','').gsub('justify','').gsub('150%','').gsub(' /p ','').gsub('100px','').gsub('\"fontsize','').gsub('marginleft','').gsub('70px','').gsub('&ampnbsp','').gsub('\"fontfamily','').gsub('80px','').gsub('30px','').gsub('100%','').gsub('marginright','').gsub(' margin ','').gsub('\"textalign','').gsub('\"fontfamily','').gsub('','').gsub(' times ','').gsub(' br ','').gsub(' span ','').gsub('lineheight','').gsub('fontsize','').gsub('fontfamily','').gsub('textalign','').gsub(' p ','').gsub('2016p','').gsub('3cm','').gsub('4cm','').gsub('p&ampnbsp','').gsub(' new ','').gsub('romanspan','').gsub('&ampnbsp','')

     return novo_texto
  end

  def normalization(texto)
     novo_texto = texto.downcase

     novo_texto = novo_texto.gsub('ç','c')
     novo_texto = novo_texto.gsub('á','a')
     novo_texto = novo_texto.gsub('à','a')
     novo_texto = novo_texto.gsub('ã','a')
     novo_texto = novo_texto.gsub('ô','o')

     return novo_texto
  end

end
