# exemplo_datasnap_simples
Exemplo simples de um servidor DataSnap Stand Alone



Este projeto exemplifica um servidor DataSnap simples estilo RESTful.

Foi desenvolvido no formato _stand alone_ para simplificar o entendimento.



É composto por três módulos:

- `Main.pas` - Interface GUI
- `Rules.pas` - Data Module com os componentes de servidão DataSnap
- `ServerMethodsExample` - Classe remota de exemplo  

---

## Montagem do servidor DataSnap RESTful

![Paleta DataSnap](./assets/paleta.PNG)



Da paleta `Datasnap Server` utilizamos os seguintes componentes:



- `TDSServer`: 
- `TDSHTTPService`:
- `TDSAuthenticationManager`:
- `TDSServerClass`:

---

## Consumindo o servidor pelo Postman



### Verbo GET



![](./assets/exemplo_get.PNG)





### Verbo POST



