# ecamisas
ecommerce com Spring MVC e várias funcionalidades para trabalhar fazer cadastro de produtos e solicitações dos clientes e manipulação de imagens

## Objetivo
Mostrar a utilização do Spring MVC junto com o JSP (Java Server Pages) para criar um ecommerce 🛒 que permite o cadastro, listagem e pesquisa 
de produtos e solicitações dos clientes e a manipulação de imagens dos produtos de forma simples.

### Tecnologias/Ferramentas Utilizadas
Java, JSP, MYSQL, Hibernate e Eclipse entre outras

### Execução do projeto

Depois de fazer o clone do projeto com o comando ```git clone https://github.com/Atanes/ecamisas```, no Eclipse, clicar no menu FILE e depois em Open Projects from File System..., na tela que aparece na sequencia selecionar a pasta do projeto e depois clicar em Finish para carregar o projeto.

![image](https://user-images.githubusercontent.com/18126923/176019533-ded3f095-221b-481a-abd6-34c158b87642.png)

![image](https://user-images.githubusercontent.com/18126923/176019353-2f0d0543-48a4-4c44-9297-55183892e2bc.png)

Após carregar o projeto no Eclipse clicar com o botão direito em cima do nome do projeto e no menu Maven selecionar Update Projects para baixar as bibliotecas do projeto e deixa-las disponiveis na sua máquina.
![image](https://user-images.githubusercontent.com/18126923/176020592-b85cfafa-97f7-463b-8289-5c456c31e9eb.png)

Depois de criar o seu banco de dados local, alterar as informações relativas a conexão no método LocalContainerEntityManagerFactoryBean da classe JPAConfiguration.java conforme abaixo:

![image](https://user-images.githubusercontent.com/18126923/176021273-919c83d8-3c50-424b-b75f-706f5a3a73f3.png)

```java
@Bean
    public LocalContainerEntityManagerFactoryBean entityManagerFactory() {
        LocalContainerEntityManagerFactoryBean factoryBean = new LocalContainerEntityManagerFactoryBean();

        JpaVendorAdapter jpaVendorAdapter = new HibernateJpaVendorAdapter();

        factoryBean.setJpaVendorAdapter(jpaVendorAdapter );

        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setUsername("SeuUsuario");
        dataSource.setPassword("SuaSenha");
        dataSource.setUrl("jdbc:mysql://localhost:3306/seubancodedados?useTimezone=true&serverTimezone=UTC");
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");

        factoryBean.setDataSource(dataSource);

        Properties props = new Properties();
        props.setProperty("hibernate.dialect" , "org.hibernate.dialect.MySQL5Dialect");
        props.setProperty("hibernate.show_sql", "true");
        props.setProperty("hibernate.hbm2ddl.auto", "update");

        factoryBean.setJpaProperties(props);

        factoryBean.setPackagesToScan("org.sitecamisas.modelos");

        return factoryBean;

    }
```

Após essas configurações você precisar de um servidor WEB configurado no seu Eclipse para rodar o projeto, se ainda não tiver configurado o servidor no Eclipse na hora de executar o projeto ele vai pedir paar que você faça isso indicando o caminho.
Para executar o projeto é só clicar com o botão direito sobre o nome do projeto e selecionar Run As... e depois Run On Server conforme imagem abaixo:

![image](https://user-images.githubusercontent.com/18126923/176022368-aa66a7da-2d6c-47a6-9ded-357c797cecf5.png)

### Observação importante 
A partir dos anos 2018 as aplicações Web começaram a seguir um padrão diferente com a separação em camadas (front-end e back-end) para
poder atender uma demanda crescente de novas exigencias técnicas e permitir um desenvolvimento mais rápido e organizado, como isso algumas
tecnologias como o Java Server Pages (JSP) perderam sua maior qualidade que era a integração direta como os códigos Java para a criação de páginas
WEB dinamicas e com isso deixaram de ser tão populares na comunidade de desenvolvimento.

Mas esse projeto trás uma boa referencia de como usar o JSP e integra-lo com o Spring MVC para aplicações mais dinamicas 😊
