IF NOT EXISTS(SELECT * FROM sys.databases WHERE name='dtb_corporativo')
BEGIN
CREATE DATABASE [dtb_corporativo]
END;
GO

USE [dtb_corporativo];
GO

CREATE TYPE dbo.coduser FROM char NOT NULL;
GO

CREATE TYPE dbo.data FROM datetime(23,3);
GO

CREATE TYPE dbo.indicador FROM char;
GO

CREATE TYPE dbo.numero FROM int(10);
GO

CREATE TYPE dbo.porcentagem FROM float(53) NOT NULL;
GO

CREATE TYPE dbo.quantidade FROM float(53);
GO

CREATE TYPE dbo.valor FROM float(53);
GO

CREATE  TABLE dtb_corporativo.dbo.AcertoPis ( 
	num_cnpj_cpf         nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	nom_entid            nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	num_rg               nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	num_inscr_inss       nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	num_inscr_pis        nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	[Inscr Munic]        float      NULL,
	[NIT / PIS]          nvarchar(255) COLLATE Latin1_General_BIN     NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.CartaoAzul ( 
	Cliente              nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	[Valor Limite]       money      NULL,
	Concessionária       nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	[Ger Negócios]       nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	Celular              nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	Validade             datetime      NULL,
	F7                   datetime      NULL,
	Logradouro           nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	Número               nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	Complemento          nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	Bairro               nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	Cidade               nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	UF                   nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	CEP                  nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	DDD                  float      NULL,
	Fone                 nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	Celular1             nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	[Compl tel]          nvarchar(255) COLLATE Latin1_General_BIN     NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.Contri ( 
	[CPF / CNPJ]         nvarchar(20) COLLATE Latin1_General_BIN     NULL,
	[Nome / Razão Social] nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	Endereço             nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	Complemento          nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	Municip              nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	CEP                  nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	Bairro               nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	Telefone             nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	Cidade               nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	UF                   nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	[Inscr Munic]        float      NULL,
	[NIT / PIS]          bigint      NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.EWCDICON ( 
	FCCPFCGC             varchar(14) COLLATE Latin1_General_BIN     NOT NULL,
	FCNOME               varchar(60) COLLATE Latin1_General_BIN     NULL,
	FCFISJUR             varchar(1) COLLATE Latin1_General_BIN     NULL,
	FCENDER              varchar(80) COLLATE Latin1_General_BIN     NULL,
	FCCMUNI              varchar(8) COLLATE Latin1_General_BIN     NULL,
	FCCEP                varchar(8) COLLATE Latin1_General_BIN     NULL,
	FCBAIRRO             varchar(20) COLLATE Latin1_General_BIN     NULL,
	FCFONE               varchar(12) COLLATE Latin1_General_BIN     NULL,
	FDDTNASC             datetime      NULL,
	FCCIDADE             varchar(30) COLLATE Latin1_General_BIN     NULL,
	FCUF                 varchar(2) COLLATE Latin1_General_BIN     NULL,
	FCSIGLA              varchar(3) COLLATE Latin1_General_BIN     NULL,
	FCINSCRM             varchar(20) COLLATE Latin1_General_BIN     NULL,
	FCINSCRE             varchar(20) COLLATE Latin1_General_BIN     NULL,
	FCFRIFES             varchar(1) COLLATE Latin1_General_BIN     NULL,
	FCNROFRI             varchar(2) COLLATE Latin1_General_BIN     NULL,
	FCINSCINSS           varchar(11) COLLATE Latin1_General_BIN     NULL,
	FCESTRANG            varchar(1) COLLATE Latin1_General_BIN     NULL,
	FCCBO                varchar(6) COLLATE Latin1_General_BIN     NULL,
	FCCODCAT             varchar(2) COLLATE Latin1_General_BIN     NULL,
	FCDEPCC              varchar(1) COLLATE Latin1_General_BIN     NULL,
	FCCODPOR             varchar(3) COLLATE Latin1_General_BIN     NULL,
	FCCODAGEN            varchar(8) COLLATE Latin1_General_BIN     NULL,
	FCNOMEAG             varchar(30) COLLATE Latin1_General_BIN     NULL,
	FCCCORR              varchar(12) COLLATE Latin1_General_BIN     NULL,
	FCINSCRITO           varchar(1) COLLATE Latin1_General_BIN     NULL,
	FCINCOMP             varchar(1) COLLATE Latin1_General_BIN     NULL,
	FDDTINCL             datetime      NULL,
	FDDTULTA             datetime      NULL,
	FCNROIMP             varchar(9) COLLATE Latin1_General_BIN     NULL,
	FCNROREG             varchar(8) COLLATE Latin1_General_BIN     NULL,
	FCRETPCS             varchar(1) COLLATE Latin1_General_BIN     NULL,
	FCSTATCTB            varchar(1) COLLATE Latin1_General_BIN     NULL,
	FCNRO                varchar(8) COLLATE Latin1_General_BIN     NULL,
	FCCOMPLE             varchar(20) COLLATE Latin1_General_BIN     NULL,
	FCCODLGR             varchar(10) COLLATE Latin1_General_BIN     NULL,
	FCISENTOIE           varchar(1) COLLATE Latin1_General_BIN     NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.Plan1 ( 
	grupo                nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	conta                float      NULL,
	concess              nvarchar(255) COLLATE Latin1_General_BIN     NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.[_SchemaVersions] ( 
	Id                   int    IDENTITY  NOT NULL,
	ScriptName           nvarchar(255) COLLATE Latin1_General_BIN     NOT NULL,
	Applied              datetime      NOT NULL,
	CONSTRAINT PK__SchemaVersions_Id PRIMARY KEY  CLUSTERED ( Id  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.acessos_concessionarios ( 
	cod_fabri            float      NULL,
	num_cnpj_cpf         varchar(18) COLLATE Latin1_General_BIN     NULL,
	nom_conce            varchar(55) COLLATE Latin1_General_BIN     NULL,
	cod_login            varchar(8) COLLATE Latin1_General_BIN     NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.carga_luciana ( 
	cod_model_bem        nchar(10) COLLATE Latin1_General_BIN     NULL,
	cod_estru_objet      int      NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.carga_luciana_alterados ( 
	cod_model_bem        varchar(10) COLLATE Latin1_General_BIN     NOT NULL,
	des_model_bem        varchar(50) COLLATE Latin1_General_BIN     NULL,
	cod_estru_objet      int      NULL,
	cod_estru_objet_novo int      NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.dtproperties ( 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.experior_targets ( 
	Table_Name           nvarchar(50) COLLATE Latin1_General_BIN     NULL,
	Type                 nvarchar(50) COLLATE Latin1_General_BIN     NULL,
	Parent_Column_Name   nvarchar(50) COLLATE Latin1_General_BIN     NULL,
	Column_Name          nvarchar(50) COLLATE Latin1_General_BIN     NULL,
	Data_Type            nvarchar(50) COLLATE Latin1_General_BIN     NULL,
	Domain               nvarchar(50) COLLATE Latin1_General_BIN     NULL,
	Algorithm            nvarchar(50) COLLATE Latin1_General_BIN     NULL,
	Is_Masked            nvarchar(50) COLLATE Latin1_General_BIN     NULL,
	ID_Method            nvarchar(50) COLLATE Latin1_General_BIN     NULL,
	Row_Type             nvarchar(50) COLLATE Latin1_General_BIN     NULL,
	Date_Format          nvarchar(50) COLLATE Latin1_General_BIN     NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.portes ( 
	cod_fabri            float      NULL,
	num_cnpj_cpf         nvarchar(14) COLLATE Latin1_General_BIN     NULL,
	nom_entid            nvarchar(60) COLLATE Latin1_General_BIN     NULL,
	Cidade               nvarchar(30) COLLATE Latin1_General_BIN     NULL,
	[Status]             nvarchar(30) COLLATE Latin1_General_BIN     NULL,
	cod_porte_fabri      nvarchar(1) COLLATE Latin1_General_BIN     NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.systranschemas ( 
	tabid                int      NOT NULL,
	startlsn             binary(10)      NOT NULL,
	endlsn               binary(10)      NOT NULL,
	typeid               int  DEFAULT 52    NOT NULL,
	CONSTRAINT uncsystranschemas UNIQUE ( startlsn  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_agendamento ( 
	num_agend            int      NOT NULL,
	num_entid_funci      int      NOT NULL,
	num_entid_outra      int      NULL,
	nom_grupo            varchar(60) COLLATE Latin1_General_BIN     NULL,
	num_relat_visit      int      NULL,
	dat_refer            datetime      NOT NULL,
	des_taref            varchar(8000) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             char(8) COLLATE Latin1_General_BIN     NOT NULL
 );
GO

CREATE  NONCLUSTERED INDEX inx_keyac_agend ON dtb_corporativo.dbo.tbl_agendamento ( dat_refer  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_agendamento_anexo ( 
	num_anexo            int      NOT NULL,
	num_agend            int      NOT NULL,
	nom_anexo            varchar(255) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             char(8) COLLATE Latin1_General_BIN     NOT NULL
 );
GO
--O código SQL fornecido parece ser um script de criação de objetos de banco de dados para o SQL Server. Vamos descrever o que cada parte do script faz em Português:

1. Verificação e criação do banco de dados:
O script começa verificando se o banco de dados chamado "dtb_corporativo" já existe. Se não existir, ele cria o banco de dados.

2. Definição de tipos de dados personalizados:
Em seguida, o script cria vários tipos de dados personalizados usando o comando "CREATE TYPE". Esses tipos de dados personalizados incluem "coduser", "data", "indicador", "numero", "porcentagem", "quantidade" e "valor". Esses tipos podem ser usados posteriormente para definir colunas de tabelas com tipos de dados específicos.

3. Criação de tabelas:
O script continua criando várias tabelas no banco de dados "dtb_corporativo.dbo". Cada tabela tem colunas com diferentes tipos de dados, como "nvarchar", "float", "datetime", "int", entre outros. As tabelas criadas são:
   - "AcertoPis"
   - "CartaoAzul"
   - "Contri"
   - "EWCDICON"
   - "Plan1"
   - "_SchemaVersions"
   - "acessos_concessionarios"
   - "carga_luciana"
   - "carga_luciana_alterados"
   - "dtproperties"
   - "experior_targets"
   - "portes"
   - "systranschemas"
   - "tbl_agendamento"
   - "tbl_agendamento_anexo"

4. Criação de índice:
Após a criação da tabela "tbl_agendamento", um índice não agrupado chamado "inx_keyac_agend" é criado na coluna "dat_refer" para otimização de consultas.

O script é um conjunto de comandos SQL que, quando executado, criará o banco de dados "dtb_corporativo" e várias tabelas, cada uma com suas respectivas colunas e tipos de dados personalizados. Essas tabelas podem ser usadas para armazenar dados relacionados ao negócio especificado, como informações de acertos de PIS, cartões azuis, contribuintes, entre outros, conforme definido nas colunas de cada tabela.

CREATE  TABLE dtb_corporativo.dbo.tbl_agendamento_cliente ( 
	num_entid_clien      int      NOT NULL,
	num_agend            int      NOT NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             char(8) COLLATE Latin1_General_BIN     NOT NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_agendamento_link ( 
	num_link             int      NOT NULL,
	num_agend            int      NOT NULL,
	nom_link             varchar(255) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             char(8) COLLATE Latin1_General_BIN     NOT NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_aplicacoes_autorizadas ( 
	cod_aplicacao        int    IDENTITY  NOT NULL,
	nome                 varchar(100) COLLATE Latin1_General_BIN     NOT NULL,
	consumer_key         varchar(100) COLLATE Latin1_General_BIN     NOT NULL,
	secret_key           varchar(150) COLLATE Latin1_General_BIN     NOT NULL,
	cod_user             dbo.coduser      NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NULL,
	dat_final_valid_consu date      NOT NULL,
	CONSTRAINT pk_aplicacoes_autorizadas PRIMARY KEY  CLUSTERED ( cod_aplicacao  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_applications_links ( 
	cod_appli            dbo.numero      NOT NULL,
	des_separ            varchar(max) COLLATE Latin1_General_BIN     NULL,
	des_links            varchar(max) COLLATE Latin1_General_BIN     NULL,
	des_titul            varchar(max) COLLATE Latin1_General_BIN     NOT NULL,
	ind_inter            dbo.indicador      NOT NULL,
	ind_intra            dbo.indicador      NOT NULL,
	ind_extra            dbo.indicador      NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_atividade ( 
	cod_ativi            int      NOT NULL,
	des_ativi            varchar(100) COLLATE Latin1_General_BIN     NOT NULL,
	cod_ativi_super      int      NULL,
	tip_ativi            char(1) COLLATE Latin1_General_BIN DEFAULT 'F'    NOT NULL,
	cod_indic_high_light char(3) COLLATE Latin1_General_BIN     NULL,
	ind_fundo_fgi        char(1) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	cod_indus            int      NULL,
	CONSTRAINT prk_tbl_atividade PRIMARY KEY  CLUSTERED ( cod_ativi  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX inx_cod_ativi_super ON dtb_corporativo.dbo.tbl_atividade ( cod_ativi_super  asc );
GO

CREATE  NONCLUSTERED INDEX inx_des_ativi ON dtb_corporativo.dbo.tbl_atividade ( des_ativi  asc );
GO

CREATE  NONCLUSTERED INDEX inx_tip_ativi ON dtb_corporativo.dbo.tbl_atividade ( tip_ativi  asc );
GO

CREATE  NONCLUSTERED INDEX inx_dat_situa_regis ON dtb_corporativo.dbo.tbl_atividade ( dat_situa_regis  asc );
GO

CREATE  NONCLUSTERED INDEX inx_ind_situa_regis ON dtb_corporativo.dbo.tbl_atividade ( ind_situa_regis  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_banco ( 
	num_banco            dbo.numero      NOT NULL,
	nom_banco            varchar(40) COLLATE Latin1_General_BIN     NOT NULL,
	nom_abrev_banco      varchar(15) COLLATE Latin1_General_BIN     NOT NULL,
	ind_banco            dbo.numero      NOT NULL,
	num_banco_dac        dbo.numero      NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK__tbl_banco__24134F1B PRIMARY KEY  CLUSTERED ( num_banco  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  NONCLUSTERED INDEX inx_dat_situa_regis ON dtb_corporativo.dbo.tbl_banco ( dat_situa_regis  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_ind_situa_regis ON dtb_corporativo.dbo.tbl_banco ( ind_situa_regis  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_banco_novo ( 
	num_banco            float      NULL,
	nom_banco            nvarchar(255) COLLATE Latin1_General_BIN     NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_bem_sap ( 
	cod_bem_sap          char(2) COLLATE Latin1_General_BIN     NOT NULL,
	des_bem_sap          varchar(50) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_bem_sap PRIMARY KEY  CLUSTERED ( cod_bem_sap  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_cargo ( 
	cod_cargo            dbo.numero      NOT NULL,
	des_cargo            varchar(30) COLLATE Latin1_General_BIN     NOT NULL,
	cod_nivel_estru      char(3) COLLATE Latin1_General_BIN DEFAULT 71    NULL,
	cod_nivel_geren      char(3) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK__tbl_cargo PRIMARY KEY  CLUSTERED ( cod_cargo  asc ) 
 );
GO

Essas são as declarações de criação de tabelas em uma base de dados do SQL Server. Vou explicar o entendimento do negócio em Português para cada uma delas:

1. Tabela "tbl_agendamento_cliente":
   - Esta tabela armazena informações sobre o agendamento de clientes.
   - Possui as colunas: "num_entid_clien" (número de identificação do cliente), "num_agend" (número de agendamento), "ind_situa_regis" (indicador de situação de registro), "dat_situa_regis" (data da situação de registro) e "cod_user" (código do usuário responsável pelo registro).

2. Tabela "tbl_agendamento_link":
   - Esta tabela armazena informações sobre links relacionados aos agendamentos.
   - Possui as colunas: "num_link" (número do link), "num_agend" (número de agendamento ao qual o link está relacionado), "nom_link" (nome do link), "ind_situa_regis" (indicador de situação de registro), "dat_situa_regis" (data da situação de registro) e "cod_user" (código do usuário responsável pelo registro).

3. Tabela "tbl_aplicacoes_autorizadas":
   - Esta tabela armazena informações sobre aplicações autorizadas.
   - Possui as colunas: "cod_aplicacao" (código da aplicação, com autoincremento), "nome" (nome da aplicação), "consumer_key" (chave do consumidor), "secret_key" (chave secreta), "cod_user" (código do usuário responsável pelo registro), "ind_situa_regis" (indicador de situação de registro), "dat_situa_regis" (data da situação de registro) e "dat_final_valid_consu" (data final de validade do consumo).

4. Tabela "tbl_applications_links":
   - Esta tabela armazena informações sobre links de aplicações.
   - Possui as colunas: "cod_appli" (código da aplicação), "des_separ" (descrição separada), "des_links" (descrição dos links), "des_titul" (descrição do título), "ind_inter" (indicador de interação), "ind_intra" (indicador de intração), "ind_extra" (indicador de extração), "ind_situa_regis" (indicador de situação de registro), "dat_situa_regis" (data da situação de registro) e "cod_user" (código do usuário responsável pelo registro).

5. Tabela "tbl_atividade":
   - Esta tabela armazena informações sobre atividades.
   - Possui as colunas: "cod_ativi" (código da atividade), "des_ativi" (descrição da atividade), "cod_ativi_super" (código da atividade superior, se houver), "tip_ativi" (tipo da atividade), "cod_indic_high_light" (código do indicador de destaque), "ind_fundo_fgi" (indicador de fundo FGI), "ind_situa_regis" (indicador de situação de registro), "dat_situa_regis" (data da situação de registro), "cod_user" (código do usuário responsável pelo registro) e "cod_indus" (código da indústria).

6. Tabela "tbl_banco":
   - Esta tabela armazena informações sobre bancos.
   - Possui as colunas: "num_banco" (número do banco), "nom_banco" (nome do banco), "nom_abrev_banco" (nome abreviado do banco), "ind_banco" (indicador do banco), "num_banco_dac" (número do banco com dígito de autoconferência), "ind_situa_regis" (indicador de situação de registro), "dat_situa_regis" (data da situação de registro) e "cod_user" (código do usuário responsável pelo registro).

7. Tabela "tbl_banco_novo":
   - Esta tabela armazena informações sobre novos bancos.
   - Possui as colunas: "num_banco" (número do banco) e "nom_banco" (nome do banco).

8. Tabela "tbl_bem_sap":
   - Esta tabela armazena informações sobre bens SAP (Sistemas, Aplicações e Produtos em Processamento de Dados).
   - Possui as colunas: "cod_bem_sap" (código do bem SAP), "des_bem_sap" (descrição do bem SAP), "ind_situa_regis" (indicador de situação de registro), "dat_situa_regis" (data da situação de registro) e "cod_user" (código do usuário responsável pelo registro).

9. Tabela "tbl_cargo":
   - Esta tabela armazena informações sobre cargos.
   - Possui as colunas: "cod_cargo" (código do cargo), "des_cargo" (descrição do cargo), "cod_nivel_estru" (código do nível estrutural), "cod_nivel_geren" (código do nível gerencial), "ind_situa_regis" (indicador de situação de registro), "dat_situa_regis" (data da situação de registro) e "cod_user" (código do usuário responsável pelo registro).

Essas tabelas são parte de um banco de dados denominado "dtb_corporativo" e estão sendo criadas no schema "dbo". Elas armazenam informações relacionadas a diferentes entidades do negócio corporativo, permitindo a organização e consulta dos dados de forma estruturada e eficiente.

CREATE  NONCLUSTERED INDEX inx_des_cargo ON dtb_corporativo.dbo.tbl_cargo ( des_cargo  asc );
GO

CREATE  NONCLUSTERED INDEX inx_dat_situa_regis ON dtb_corporativo.dbo.tbl_cargo ( dat_situa_regis  asc );
GO

CREATE  NONCLUSTERED INDEX inx_ind_situa_regis ON dtb_corporativo.dbo.tbl_cargo ( ind_situa_regis  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_centro_custo ( 
	cod_centr_custo      varchar(10) COLLATE Latin1_General_BIN     NOT NULL,
	des_centr_custo      varchar(20) COLLATE Latin1_General_BIN     NOT NULL,
	cod_centr_custo_super dbo.numero      NULL,
	des_local            varchar(20) COLLATE Latin1_General_BIN     NULL,
	des_centr_custo_portu varchar(30) COLLATE Latin1_General_BIN     NULL,
	num_seque_centr_custo int  DEFAULT 0    NULL,
	ind_depar            dbo.indicador      NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	dat_valid_inici      dbo.data      NULL,
	dat_valid_final      dbo.data      NULL,
	num_entid_respo      dbo.numero      NULL,
	CONSTRAINT PK__tbl_centro_custo__25FB978D PRIMARY KEY  CLUSTERED ( cod_centr_custo  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  NONCLUSTERED INDEX inx_cod_centr_custo_super ON dtb_corporativo.dbo.tbl_centro_custo ( cod_centr_custo_super  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_dat_situa_regis ON dtb_corporativo.dbo.tbl_centro_custo ( dat_situa_regis  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_ind_situa_regis ON dtb_corporativo.dbo.tbl_centro_custo ( ind_situa_regis  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_centro_lucro ( 
	cod_centr_lucro      dbo.numero      NOT NULL,
	des_centr_lucro      varchar(50) COLLATE Latin1_General_BIN     NULL,
	dat_valid_inici      dbo.data      NULL,
	dat_valid_final      dbo.data      NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_centro_lucro PRIMARY KEY  CLUSTERED ( cod_centr_lucro  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_cfop_nf ( 
	cod_cfop             int      NOT NULL,
	desc_cfop            varchar(800) COLLATE Latin1_General_BIN     NULL,
	tip_cfop             varchar(3) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK_tbl_cfop_nf PRIMARY KEY  CLUSTERED ( cod_cfop  asc )  WITH (FILLFACTOR = 100)
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_cidades ( 
	cod_cidade           int      NOT NULL,
	nom_cidade           varchar(50) COLLATE Latin1_General_BIN     NOT NULL,
	nom_cidade_abreviado varchar(40) COLLATE Latin1_General_BIN     NOT NULL,
	cod_sigla_estado     varchar(2) COLLATE Latin1_General_BIN     NOT NULL,
	CONSTRAINT PK__tbl_cida__9C8FF54A662AAC8D PRIMARY KEY  CLUSTERED ( cod_cidade  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_classif_delinquency ( 
	cod_class_delin      varchar(8) COLLATE Latin1_General_BIN     NOT NULL,
	des_class_delin      varchar(50) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK__tbl_classif_deli__26EFBBC6 PRIMARY KEY  CLUSTERED ( cod_class_delin  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX inx_dat_situa_regis ON dtb_corporativo.dbo.tbl_classif_delinquency ( dat_situa_regis  asc );
GO

CREATE  NONCLUSTERED INDEX inx_ind_situa_regis ON dtb_corporativo.dbo.tbl_classif_delinquency ( ind_situa_regis  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_classif_gbf ( 
	cod_class_gbf        dbo.numero      NOT NULL,
	des_class_gbf        varchar(60) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK_tbl_classif_gbf PRIMARY KEY  CLUSTERED ( cod_class_gbf  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_cliente_contato ( 
	num_entid            int      NOT NULL,
	num_conta            int      NOT NULL,
	num_tipo_relac       int      NOT NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             char(8) COLLATE Latin1_General_BIN     NOT NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_cnae ( 
	cod_cnae             char(5) COLLATE Latin1_General_BIN     NOT NULL,
	des_cnae             varchar(200) COLLATE Latin1_General_BIN     NOT NULL,
	cod_secao            char(1) COLLATE Latin1_General_BIN     NOT NULL,
	ind_finan            char(1) COLLATE Latin1_General_BIN DEFAULT 'N'    NOT NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             char(8) COLLATE Latin1_General_BIN     NOT NULL,
	CONSTRAINT prk_tbl_cnae PRIMARY KEY  CLUSTERED ( cod_cnae  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX inx_tbl_cnae_cod_secao ON dtb_corporativo.dbo.tbl_cnae ( cod_secao  asc ) WITH (FILLFACTOR = 100);
GO

CREATE  NONCLUSTERED INDEX inx_tbl_cnae_des_cnae ON dtb_corporativo.dbo.tbl_cnae ( des_cnae  asc ) WITH (FILLFACTOR = 100);
GO

CREATE  NONCLUSTERED INDEX inx_tbl_cnae_cod_des_cnae ON dtb_corporativo.dbo.tbl_cnae ( cod_secao  asc, des_cnae  asc ) WITH (FILLFACTOR = 100);
GO

CREATE  NONCLUSTERED INDEX inx_dat_situa_regis ON dtb_corporativo.dbo.tbl_cnae ( dat_situa_regis  asc );
GO

CREATE  NONCLUSTERED INDEX inx_ind_situa_regis ON dtb_corporativo.dbo.tbl_cnae ( ind_situa_regis  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_cnae_20 ( 
	tip_estru_cnae       char(3) COLLATE Latin1_General_BIN     NOT NULL,
	cod_cnae             varchar(7) COLLATE Latin1_General_BIN     NOT NULL,
	des_denom_cnae       varchar(200) COLLATE Latin1_General_BIN     NOT NULL,
	tip_estru_cnae_super char(3) COLLATE Latin1_General_BIN     NOT NULL,
	cod_cnae_super       varchar(7) COLLATE Latin1_General_BIN     NOT NULL,
	ind_finad_bndes      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             dbo.coduser      NOT NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_cnae_fiscal ( 
	tip_estru_cnae       char(3) COLLATE Latin1_General_BIN     NOT NULL,
	cod_cnae             varchar(7) COLLATE Latin1_General_BIN     NOT NULL,
	des_denom_cnae       varchar(200) COLLATE Latin1_General_BIN     NOT NULL,
	tip_estru_cnae_super char(3) COLLATE Latin1_General_BIN     NOT NULL,
	cod_cnae_super       varchar(7) COLLATE Latin1_General_BIN     NOT NULL,
	ind_finad_bndes      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	ind_fundo_fgi        char(1) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_cnae_fiscal PRIMARY KEY  CLUSTERED ( tip_estru_cnae  asc, cod_cnae  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_comunicado ( 
	num_notif            bigint    IDENTITY  NOT NULL,
	data_inicio_pub      date      NOT NULL,
	data_fim_pub         date      NOT NULL,
	ativo                bit      NOT NULL,
	titulo               varchar(150) COLLATE Latin1_General_BIN     NOT NULL,
	conteudo             varchar(2000) COLLATE Latin1_General_BIN     NOT NULL,
	num_conce_tipo       int      NOT NULL,
	tip_sist             varchar(20) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pk_tbl_comunicado_num_notif PRIMARY KEY  CLUSTERED ( num_notif  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_concessionaria_tipo ( 
	num_conce_tipo       int    IDENTITY  NOT NULL,
	cod_conce_tipo       varchar(10) COLLATE Latin1_General_BIN     NULL,
	des_conce_tipo       varchar(100) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK__tbl_conc__203E1BE93DCD1D6D PRIMARY KEY  CLUSTERED ( num_conce_tipo  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_consistencia_ficha_cadastral ( 
	nom_campo            varchar(30) COLLATE Latin1_General_BIN     NOT NULL,
	des_consi            varchar(100) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT inx_consistencia_ficha_cadastral PRIMARY KEY  CLUSTERED ( nom_campo  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX inx_dat_situa_regis ON dtb_corporativo.dbo.tbl_consistencia_ficha_cadastral ( dat_situa_regis  asc );
GO

CREATE  NONCLUSTERED INDEX inx_ind_situa_regis ON dtb_corporativo.dbo.tbl_consistencia_ficha_cadastral ( ind_situa_regis  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_contato ( 
	num_conta            int      NOT NULL,
	nom_conta            varchar(255) COLLATE Latin1_General_BIN     NOT NULL,
	dat_nasci            datetime      NULL,
	des_telef            varchar(20) COLLATE Latin1_General_BIN     NULL,
	num_cpf              varchar(20) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	des_email            varchar(255) COLLATE Latin1_General_BIN     NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             char(8) COLLATE Latin1_General_BIN     NOT NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_controle_certidoes ( 
	cod_contr_certi      int    IDENTITY  NOT NULL,
	num_cnpj_cpf         char(14) COLLATE Latin1_General_BIN     NOT NULL,
	num_armz_arq         int      NULL,
	tip_certi            varchar(15) COLLATE Latin1_General_BIN     NOT NULL,
	dat_emiss            dbo.data      NULL,
	dat_valid            dbo.data      NULL,
	dat_solic            dbo.data  DEFAULT getdate()    NOT NULL,
	des_xml_retor        varchar(max) COLLATE Latin1_General_BIN     NULL,
	des_envio            varchar(max) COLLATE Latin1_General_BIN     NULL,
	tip_emiss            varchar(3) COLLATE Latin1_General_BIN     NOT NULL,
	cod_user_envio       dbo.coduser      NULL,
	cod_user_aprov       dbo.coduser      NULL,
	cod_aprov            char(1) COLLATE Latin1_General_BIN     NULL,
	cod_situa_certi      char(1) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NULL,
	cod_user             dbo.coduser      NULL,
	cod_centr_custo      varchar(10) COLLATE Latin1_General_BIN     NULL,
	CONSTRAINT pki_controle_certidoes PRIMARY KEY  CLUSTERED ( cod_contr_certi  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  NONCLUSTERED INDEX ix_controle_certidoes_num_cnpj_cpf ON dtb_corporativo.dbo.tbl_controle_certidoes ( num_cnpj_cpf  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_controle_certidoes_20210422 ( 
	cod_contr_certi      int    IDENTITY  NOT NULL,
	num_cnpj_cpf         char(14) COLLATE Latin1_General_BIN     NOT NULL,
	num_armz_arq         int      NULL,
	tip_certi            varchar(15) COLLATE Latin1_General_BIN     NOT NULL,
	tip_emiss            varchar(3) COLLATE Latin1_General_BIN     NOT NULL,
	cod_aprov            char(1) COLLATE Latin1_General_BIN     NULL,
	cod_situa_certi      char(1) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_controle_consulta ( 
	cod_contr_consu      int    IDENTITY  NOT NULL,
	des_envio            varchar(50) COLLATE Latin1_General_BIN     NOT NULL,
	cod_tip_consu        int      NOT NULL,
	des_retorno          varchar(500) COLLATE Latin1_General_BIN     NULL,
	resp_assinatura      varchar(300) COLLATE Latin1_General_BIN     NULL,
	cod_centr_custo      varchar(10) COLLATE Latin1_General_BIN     NULL,
	cod_user             dbo.coduser      NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NULL,
	CONSTRAINT pk_controle_certidoes PRIMARY KEY  CLUSTERED ( cod_contr_consu  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_controle_ficha_cadastral ( 
	nom_banco_dados      varchar(20) COLLATE Latin1_General_BIN     NOT NULL,
	nom_tabel            varchar(40) COLLATE Latin1_General_BIN     NOT NULL,
	nom_campo            varchar(40) COLLATE Latin1_General_BIN     NOT NULL,
	tip_ficha            char(3) COLLATE Latin1_General_BIN     NOT NULL,
	nom_alias_campo      varchar(80) COLLATE Latin1_General_BIN     NULL,
	nom_contr_pagin      varchar(100) COLLATE Latin1_General_BIN     NULL,
	nom_campo_db         varchar(50) COLLATE Latin1_General_BIN     NULL,
	nom_tabel_db         varchar(50) COLLATE Latin1_General_BIN     NULL,
	tip_ender            char(2) COLLATE Latin1_General_BIN     NULL,
	tip_conju            varchar(10) COLLATE Latin1_General_BIN     NULL,
	des_dica_campo       varchar(100) COLLATE Latin1_General_BIN     NULL,
	ind_permi_branc      char(1) COLLATE Latin1_General_BIN     NULL,
	ind_consi_branc      char(1) COLLATE Latin1_General_BIN     NULL,
	ind_campo_lista      dbo.indicador      NULL,
	ind_habil_campo      char(1) COLLATE Latin1_General_BIN     NULL,
	ind_regis_alter      char(1) COLLATE Latin1_General_BIN     NULL,
	ind_score            dbo.indicador      NOT NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT inx_controle_ficha_cadastral PRIMARY KEY  CLUSTERED ( nom_banco_dados  asc, nom_tabel  asc, nom_campo  asc, tip_ficha  asc ) 
 );
GO

Entendimento do negócio:

O script representa uma série de comandos SQL para criar tabelas e índices em um banco de dados chamado "dtb_corporativo". Vou explicar o significado de cada parte:

1. Criação de Índices:
   São criados índices não agrupados em três colunas da tabela "dtb_corporativo.dbo.tbl_cargo":
   - "inx_des_cargo" é um índice não agrupado na coluna "des_cargo".
   - "inx_dat_situa_regis" é um índice não agrupado na coluna "dat_situa_regis".
   - "inx_ind_situa_regis" é um índice não agrupado na coluna "ind_situa_regis".

2. Criação da Tabela "dtb_corporativo.dbo.tbl_centro_custo":
   É criada uma tabela chamada "tbl_centro_custo" com diversas colunas como "cod_centr_custo", "des_centr_custo", "cod_centr_custo_super", "des_local", etc. Essa tabela armazena informações sobre centros de custo de uma empresa.

3. Criação de Índices na Tabela "dtb_corporativo.dbo.tbl_centro_custo":
   São criados três índices não agrupados na tabela "dtb_corporativo.dbo.tbl_centro_custo":
   - "inx_cod_centr_custo_super" é um índice não agrupado na coluna "cod_centr_custo_super".
   - "inx_dat_situa_regis" é um índice não agrupado na coluna "dat_situa_regis".
   - "inx_ind_situa_regis" é um índice não agrupado na coluna "ind_situa_regis".

4. Criação de outras tabelas:
   São criadas várias outras tabelas, como "tbl_centro_lucro", "tbl_cfop_nf", "tbl_cidades", "tbl_classif_delinquency", "tbl_classif_gbf", "tbl_cliente_contato", "tbl_cnae", "tbl_cnae_20", "tbl_cnae_fiscal", "tbl_comunicado", "tbl_concessionaria_tipo", "tbl_consistencia_ficha_cadastral", "tbl_contato", "tbl_controle_certidoes", "tbl_controle_certidoes_20210422", "tbl_controle_consulta" e "tbl_controle_ficha_cadastral".

Essas tabelas têm diversas colunas, cada uma representando diferentes informações específicas do negócio.

No geral, esse script SQL cria tabelas e índices para armazenar dados de uma aplicação corporativa, relacionados a informações como cargos, centros de custo, cidades, certidões, etc. A criação de índices tem o objetivo de melhorar o desempenho das consultas realizadas no banco de dados, tornando as pesquisas mais eficientes.

CREATE  TABLE dtb_corporativo.dbo.tbl_controle_job ( 
	cod_contr_job        dbo.numero      NOT NULL,
	nom_contr_job        varchar(40) COLLATE Latin1_General_BIN     NOT NULL,
	ind_contr_job        varchar(1) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL
 );
GO

CREATE  NONCLUSTERED INDEX IX_THINK_CONTROLE_JOB ON dtb_corporativo.dbo.tbl_controle_job ( nom_contr_job  asc, ind_contr_job  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_controle_subsidio_entidade ( 
	num_seque_subsi      dbo.numero    IDENTITY  NOT NULL,
	num_entid            dbo.numero      NOT NULL,
	cod_cota             varchar(3) COLLATE Latin1_General_BIN     NOT NULL,
	ind_compa            dbo.indicador      NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK__tbl_cont__C844F1F94BADBBC8 PRIMARY KEY  CLUSTERED ( num_seque_subsi  asc, num_entid  asc, cod_cota  asc, ind_situa_regis  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_controle_transacoes ( 
	cod_contr_trans      int    IDENTITY  NOT NULL,
	cod_transacao        int      NULL,
	num_execu            bigint      NULL,
	data                 datetime      NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_correspondencia_cnae ( 
	des_de_para          varchar(30) COLLATE Latin1_General_BIN     NULL,
	cod_cnae_de          varchar(9) COLLATE Latin1_General_BIN     NULL,
	des_denom_cnae_de    varchar(200) COLLATE Latin1_General_BIN     NULL,
	cod_cnae_para        varchar(9) COLLATE Latin1_General_BIN     NULL,
	des_denom_cnae_para  varchar(200) COLLATE Latin1_General_BIN     NULL,
	des_obser            varchar(200) COLLATE Latin1_General_BIN     NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_credenciamento_produto_bndes ( 
	cod_produ_crede      int    IDENTITY  NOT NULL,
	tip_regis            dbo.numero      NULL,
	num_seque_arqui      dbo.numero      NULL,
	cod_cgc_fabric       numeric(15,0)      NOT NULL,
	cod_finame_bem       dbo.numero      NOT NULL,
	tip_siste            varchar(10) COLLATE Latin1_General_BIN     NOT NULL,
	tip_linha_finan      varchar(20) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK_tbl_credenciamento_produto_bndes PRIMARY KEY  CLUSTERED ( cod_produ_crede  asc )  WITH (FILLFACTOR = 100)
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_detalhe_bem_process ( 
	num_entid_bem_procss int    IDENTITY  NOT NULL,
	cod_model_bem        varchar(10) COLLATE Latin1_General_BIN     NOT NULL,
	cod_marca_bem        char(3) COLLATE Latin1_General_BIN     NULL,
	des_marca_bem        varchar(50) COLLATE Latin1_General_BIN     NULL,
	tip_combu_bem        char(2) COLLATE Latin1_General_BIN     NOT NULL,
	num_ano_bem          varchar(7) COLLATE Latin1_General_BIN     NOT NULL,
	des_model_bem        varchar(50) COLLATE Latin1_General_BIN     NULL,
	val_bem              float      NULL,
	cod_estru_objet      int      NULL,
	cod_tipo_veicu       varchar(4) COLLATE Latin1_General_BIN     NULL,
	bem_processado       varchar(1) COLLATE Latin1_General_BIN     NOT NULL,
	erro_desc            varchar(500) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             char(8) COLLATE Latin1_General_BIN     NOT NULL,
	leitura_finalizada   char(1) COLLATE Latin1_General_BIN     NULL,
	email_enviado        char(1) COLLATE Latin1_General_BIN     NULL,
	CONSTRAINT PK__tbl_deta__701EA5E38E4DA61F PRIMARY KEY  CLUSTERED ( num_entid_bem_procss  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX inx_detalhe_bem_process_model_bem_ano_bem_processado ON dtb_corporativo.dbo.tbl_detalhe_bem_process ( cod_model_bem  asc, num_ano_bem  asc, bem_processado  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_email_entidade ( 
	id                   int    IDENTITY  NOT NULL,
	num_entid            dbo.numero      NULL,
	email                varchar(60) COLLATE Latin1_General_BIN     NULL,
	tipo_email           int      NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      datetime      NULL,
	cod_user             dbo.coduser      NULL
 );
GO

CREATE  NONCLUSTERED INDEX inx_email_entidade_entid_email ON dtb_corporativo.dbo.tbl_email_entidade ( num_entid  asc, tipo_email  asc ) INCLUDE ([email]) WITH (FILLFACTOR = 98);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_email_templates ( 
	id                   int    IDENTITY  NOT NULL,
	nom_template         nvarchar(100) COLLATE Latin1_General_BIN     NULL,
	cam_template         nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK_tbl_email_templates PRIMARY KEY  CLUSTERED ( id  asc )  WITH (FILLFACTOR = 100)
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_email_validado ( 
	des_email            varchar(60) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	CONSTRAINT PK__tbl_emai__E676BA56303431A9 PRIMARY KEY  CLUSTERED ( des_email  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_empresa_sap ( 
	num_empre_sap        dbo.numero      NOT NULL,
	nom_empre_sap        varchar(100) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_empresa_sap PRIMARY KEY  CLUSTERED ( num_empre_sap  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_endereco_teste ( 
	num_entid            dbo.numero      NOT NULL,
	num_seque_ender      dbo.numero      NOT NULL,
	tip_ender            char(2) COLLATE Latin1_General_BIN     NOT NULL,
	ind_estat            dbo.indicador      NOT NULL,
	cod_tipo_logra       varchar(15) COLLATE Latin1_General_BIN     NULL,
	des_logra            varchar(60) COLLATE Latin1_General_BIN     NOT NULL,
	num_logra            varchar(10) COLLATE Latin1_General_BIN     NULL,
	des_compl_logra      varchar(30) COLLATE Latin1_General_BIN     NULL,
	des_bairr            varchar(30) COLLATE Latin1_General_BIN     NULL,
	nom_cidad            varchar(30) COLLATE Latin1_General_BIN     NULL,
	cod_sigla_estad      char(2) COLLATE Latin1_General_BIN     NULL,
	num_cep              char(8) COLLATE Latin1_General_BIN     NOT NULL,
	num_ddd_telef        int      NULL,
	des_telef            varchar(20) COLLATE Latin1_General_BIN     NULL,
	des_ramal_telef      varchar(10) COLLATE Latin1_General_BIN     NULL,
	num_ddd_fax          int      NULL,
	des_fax              varchar(20) COLLATE Latin1_General_BIN     NULL,
	des_ramal_fax        varchar(10) COLLATE Latin1_General_BIN     NULL,
	num_ddd_celul        int      NULL,
	des_celul            varchar(20) COLLATE Latin1_General_BIN     NULL,
	des_obser_telef      varchar(100) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_entidade_alteracao_cnae_20 ( 
	num_entid            dbo.numero      NOT NULL,
	num_cnpj_cpf         char(14) COLLATE Latin1_General_BIN     NOT NULL,
	ind_cnpj_cpf         dbo.indicador      NOT NULL,
	num_cnpj_raiz        char(8) COLLATE Latin1_General_BIN     NULL,
	nom_entid            varchar(60) COLLATE Latin1_General_BIN     NOT NULL,
	nom_usual            varchar(60) COLLATE Latin1_General_BIN     NULL,
	nom_grupo            varchar(60) COLLATE Latin1_General_BIN     NULL,
	num_entid_lider_grupo dbo.numero      NULL,
	nom_contt_inter      varchar(60) COLLATE Latin1_General_BIN     NULL,
	num_ddd_telef_inter  int      NULL,
	des_telef_contt_inter varchar(20) COLLATE Latin1_General_BIN     NULL,
	nom_contt_decis      varchar(60) COLLATE Latin1_General_BIN     NULL,
	num_ddd_telef_decis  int      NULL,
	des_telef_contt_decis varchar(20) COLLATE Latin1_General_BIN     NULL,
	cod_ativi            int      NULL,
	tip_estru_cnae       char(3) COLLATE Latin1_General_BIN     NULL,
	cod_cnae             varchar(7) COLLATE Latin1_General_BIN     NULL,
	des_ativi_econo      varchar(60) COLLATE Latin1_General_BIN     NULL,
	tip_capit            char(1) COLLATE Latin1_General_BIN     NULL,
	dat_cadas            dbo.data      NOT NULL,
	dat_atual            dbo.data      NOT NULL,
	ind_entid_ativo      dbo.indicador      NOT NULL,
	des_email            varchar(60) COLLATE Latin1_General_BIN     NULL,
	num_regio            dbo.numero      NULL,
	qtd_veicu_total      dbo.numero      NULL,
	qtd_veicu_propr      dbo.numero      NULL,
	qtd_veicu_agreg      dbo.numero      NULL,
	cod_login            dbo.coduser      NULL,
	ind_ultim_siste_atual char(3) COLLATE Latin1_General_BIN     NOT NULL,
	cod_login_extra      varchar(30) COLLATE Latin1_General_BIN     NULL,
	tip_segme            char(3) COLLATE Latin1_General_BIN     NOT NULL,
	tip_relac_gover      char(2) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_entidade_alteracao_cnae_20_5_posicoes ( 
	num_entid            dbo.numero      NOT NULL,
	num_cnpj_cpf         char(14) COLLATE Latin1_General_BIN     NOT NULL,
	ind_cnpj_cpf         dbo.indicador      NOT NULL,
	num_cnpj_raiz        char(8) COLLATE Latin1_General_BIN     NULL,
	nom_entid            varchar(60) COLLATE Latin1_General_BIN     NOT NULL,
	nom_usual            varchar(60) COLLATE Latin1_General_BIN     NULL,
	nom_grupo            varchar(60) COLLATE Latin1_General_BIN     NULL,
	num_entid_lider_grupo dbo.numero      NULL,
	nom_contt_inter      varchar(60) COLLATE Latin1_General_BIN     NULL,
	num_ddd_telef_inter  int      NULL,
	des_telef_contt_inter varchar(20) COLLATE Latin1_General_BIN     NULL,
	nom_contt_decis      varchar(60) COLLATE Latin1_General_BIN     NULL,
	num_ddd_telef_decis  int      NULL,
	des_telef_contt_decis varchar(20) COLLATE Latin1_General_BIN     NULL,
	cod_ativi            int      NULL,
	tip_estru_cnae       char(3) COLLATE Latin1_General_BIN     NULL,
	cod_cnae             varchar(7) COLLATE Latin1_General_BIN     NULL,
	des_ativi_econo      varchar(60) COLLATE Latin1_General_BIN     NULL,
	tip_capit            char(1) COLLATE Latin1_General_BIN     NULL,
	dat_cadas            dbo.data      NOT NULL,
	dat_atual            dbo.data      NOT NULL,
	ind_entid_ativo      dbo.indicador      NOT NULL,
	des_email            varchar(60) COLLATE Latin1_General_BIN     NULL,
	num_regio            dbo.numero      NULL,
	qtd_veicu_total      dbo.numero      NULL,
	qtd_veicu_propr      dbo.numero      NULL,
	qtd_veicu_agreg      dbo.numero      NULL,
	cod_login            dbo.coduser      NULL,
	ind_ultim_siste_atual char(3) COLLATE Latin1_General_BIN     NOT NULL,
	cod_login_extra      varchar(30) COLLATE Latin1_General_BIN     NULL,
	tip_segme            char(3) COLLATE Latin1_General_BIN     NOT NULL,
	tip_relac_gover      char(2) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_entidade_cnae_secundario ( 
	id_entid_cnae_secu   int    IDENTITY  NOT NULL,
	num_entid            int      NOT NULL,
	cnpj                 varchar(14) COLLATE Latin1_General_BIN     NOT NULL,
	num_cnae             varchar(20) COLLATE Latin1_General_BIN     NOT NULL,
	nom_descr_cnae       varchar(200) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	cod_user             char(8) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	CONSTRAINT PK_tbl_entidade_cnae_secundario PRIMARY KEY  CLUSTERED ( id_entid_cnae_secu  asc )  WITH (FILLFACTOR = 100)
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_entidade_nova ( 
	num_entid            int      NOT NULL,
	num_cnpj_cpf         char(14) COLLATE Latin1_General_BIN     NOT NULL,
	ind_cnpj_cpf         char(1) COLLATE Latin1_General_BIN     NOT NULL,
	num_cnpj_raiz        char(8) COLLATE Latin1_General_BIN     NULL,
	nom_entid            varchar(60) COLLATE Latin1_General_BIN     NOT NULL,
	nom_usual            varchar(60) COLLATE Latin1_General_BIN     NULL,
	nom_grupo            varchar(60) COLLATE Latin1_General_BIN     NULL,
	num_entid_lider_grupo int      NULL,
	nom_contt_inter      varchar(60) COLLATE Latin1_General_BIN     NULL,
	num_ddd_telef_inter  int      NULL,
	des_telef_contt_inter varchar(20) COLLATE Latin1_General_BIN     NULL,
	nom_contt_decis      varchar(60) COLLATE Latin1_General_BIN     NULL,
	num_ddd_telef_decis  int      NULL,
	des_telef_contt_decis varchar(20) COLLATE Latin1_General_BIN     NULL,
	cod_ativi            int      NULL,
	cod_cnae             char(5) COLLATE Latin1_General_BIN     NULL,
	des_ativi_econo      varchar(60) COLLATE Latin1_General_BIN     NULL,
	tip_capit            char(1) COLLATE Latin1_General_BIN     NULL,
	dat_cadas            datetime      NOT NULL,
	dat_atual            datetime      NOT NULL,
	ind_entid_ativo      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	des_email            varchar(60) COLLATE Latin1_General_BIN     NULL,
	num_regio            int      NULL,
	qtd_veicu_total      int      NULL,
	qtd_veicu_propr      int      NULL,
	qtd_veicu_agreg      int      NULL,
	cod_login            char(8) COLLATE Latin1_General_BIN     NULL,
	ind_ultim_siste_atual char(3) COLLATE Latin1_General_BIN     NOT NULL,
	cod_login_extra      varchar(30) COLLATE Latin1_General_BIN     NULL,
	tip_segme            char(3) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             char(8) COLLATE Latin1_General_BIN     NOT NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_entidade_outra ( 
	num_entid_outra      int      NOT NULL,
	nom_entid_outra      varchar(255) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             char(8) COLLATE Latin1_General_BIN     NOT NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_entidade_outra_contato ( 
	num_entid_outra      int      NOT NULL,
	num_conta            int      NOT NULL,
	num_tipo_relac       int      NOT NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             char(8) COLLATE Latin1_General_BIN     NOT NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_escala_bacen ( 
	val_escal1_bacen     float      NULL,
	val_escal2_bacen     float      NULL,
	des_escal_bacen      varchar(3) COLLATE Latin1_General_BIN     NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_estado ( 
	cod_sigla_estad      char(2) COLLATE Latin1_General_BIN     NOT NULL,
	nom_estad            varchar(30) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_estado PRIMARY KEY  CLUSTERED ( cod_sigla_estad  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_estado_bem_sap ( 
	tip_novo_usado       char(1) COLLATE Latin1_General_BIN     NOT NULL,
	des_novo_usado       varchar(20) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_estado_bem_sap PRIMARY KEY  CLUSTERED ( tip_novo_usado  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_estrutura_objeto_financiamento ( 
	cod_estru_objet      int      NOT NULL,
	tip_enqua_objet      varchar(20) COLLATE Latin1_General_BIN     NOT NULL,
	tip_objet_finan      varchar(20) COLLATE Latin1_General_BIN     NOT NULL,
	des_detal_objet_finan varchar(20) COLLATE Latin1_General_BIN     NULL,
	cod_class_credi      char(3) COLLATE Latin1_General_BIN     NULL,
	num_prior_class_credi int      NULL,
	qtd_vida_util        float      NOT NULL,
	qtd_vida_util_acele  float      NOT NULL,
	cod_class_delin      varchar(8) COLLATE Latin1_General_BIN     NULL,
	cod_class_delin_portf varchar(8) COLLATE Latin1_General_BIN     NULL,
	tip_veicu            char(1) COLLATE Latin1_General_BIN     NULL,
	ind_optan_adian      dbo.indicador      NOT NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	ind_bem_finan        dbo.indicador      NULL,
	cod_bem_sap          char(2) COLLATE Latin1_General_BIN     NULL,
	CONSTRAINT pki_estrutura_objeto_financiamento PRIMARY KEY  CLUSTERED ( cod_estru_objet  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX aki_cod_class_credi ON dtb_corporativo.dbo.tbl_estrutura_objeto_financiamento ( cod_class_credi  asc );
GO

CREATE  NONCLUSTERED INDEX fki_cod_class_delin ON dtb_corporativo.dbo.tbl_estrutura_objeto_financiamento ( cod_class_delin  asc );
GO

CREATE  NONCLUSTERED INDEX fki_cod_class_delin_portf ON dtb_corporativo.dbo.tbl_estrutura_objeto_financiamento ( cod_class_delin_portf  asc );
GO

CREATE  NONCLUSTERED INDEX fki_tip_veicu ON dtb_corporativo.dbo.tbl_estrutura_objeto_financiamento ( tip_veicu  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_excecao_case360 ( 
	cod_excec            bigint    IDENTITY  NOT NULL,
	des_chave            varchar(15) COLLATE Latin1_General_BIN     NOT NULL,
	dat_inclu            dbo.data      NOT NULL,
	des_motiv            varchar(max) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT prk_excecao_case PRIMARY KEY  CLUSTERED ( cod_excec  asc ) ,
	CONSTRAINT uc_chave_ativa UNIQUE ( des_chave  asc, ind_situa_regis  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_fabrica_chassi ( 
	num_seque            dbo.numero    IDENTITY  NOT NULL,
	num_seque_arqui      dbo.numero      NULL,
	des_chassi           nvarchar(17) COLLATE Latin1_General_BIN     NULL,
	tipo_mercado         nvarchar(3) COLLATE Latin1_General_BIN     NULL,
	dat_faturamento      dbo.data      NULL,
	des_cor_mb           nvarchar(4) COLLATE Latin1_General_BIN     NULL,
	des_baumuster        nvarchar(21) COLLATE Latin1_General_BIN     NULL,
	ano_fabricacao       dbo.numero      NULL,
	conta_concessionario nvarchar(8) COLLATE Latin1_General_BIN     NULL,
	conta_interventor    nvarchar(8) COLLATE Latin1_General_BIN     NULL,
	num_nota_fiscal      nvarchar(8) COLLATE Latin1_General_BIN     NULL,
	documento_proprietario nvarchar(14) COLLATE Latin1_General_BIN     NULL,
	nome_proprietario    nvarchar(44) COLLATE Latin1_General_BIN     NULL,
	endereco_proprietario nvarchar(44) COLLATE Latin1_General_BIN     NULL,
	bairro_proprietario  nvarchar(23) COLLATE Latin1_General_BIN     NULL,
	cidade_proprietario  nvarchar(23) COLLATE Latin1_General_BIN     NULL,
	estado_pais_proprietario nvarchar(17) COLLATE Latin1_General_BIN     NULL,
	uf_proprietario      nvarchar(2) COLLATE Latin1_General_BIN     NULL,
	cep_proprietario     dbo.numero      NULL,
	telefone_proprietario nvarchar(31) COLLATE Latin1_General_BIN     NULL,
	fz                   nvarchar(6) COLLATE Latin1_General_BIN     NULL,
	segmento             nvarchar(21) COLLATE Latin1_General_BIN     NULL,
	nome_abreviado       nvarchar(21) COLLATE Latin1_General_BIN     NULL,
	descricao_modelo     nvarchar(21) COLLATE Latin1_General_BIN     NULL,
	hora_fatura          nvarchar(6) COLLATE Latin1_General_BIN     NULL,
	data_fatura          dbo.data      NULL,
	data_saida_linha     dbo.data      NULL,
	regiao_venda         nvarchar(40) COLLATE Latin1_General_BIN     NULL,
	num_fatura_expo      nvarchar(6) COLLATE Latin1_General_BIN     NULL,
	tipo_fatura          nvarchar(1) COLLATE Latin1_General_BIN     NULL,
	uf_pais              nvarchar(3) COLLATE Latin1_General_BIN     NULL,
	classe_conta         nvarchar(1) COLLATE Latin1_General_BIN     NULL,
	atividade            nvarchar(1) COLLATE Latin1_General_BIN     NULL,
	tipo_cliente         nvarchar(2) COLLATE Latin1_General_BIN     NULL,
	codigo_regiao        nvarchar(1) COLLATE Latin1_General_BIN     NULL,
	codigo_arrendatario  nvarchar(8) COLLATE Latin1_General_BIN     NULL,
	documento_arrendatario nvarchar(14) COLLATE Latin1_General_BIN     NULL,
	nome_arrendatario    nvarchar(44) COLLATE Latin1_General_BIN     NULL,
	endereco_arrendatario nvarchar(44) COLLATE Latin1_General_BIN     NULL,
	bairro_arrendatario  nvarchar(23) COLLATE Latin1_General_BIN     NULL,
	cidade_arrendatario  nvarchar(23) COLLATE Latin1_General_BIN     NULL,
	cep_arrendatario     nvarchar(10) COLLATE Latin1_General_BIN     NULL,
	codigo_pais_arrendatario nvarchar(3) COLLATE Latin1_General_BIN     NULL,
	classe_arrendatario  nvarchar(1) COLLATE Latin1_General_BIN     NULL,
	atividade_arrendatario nvarchar(1) COLLATE Latin1_General_BIN     NULL,
	tipo_fornecedor_arrendatario nvarchar(2) COLLATE Latin1_General_BIN     NULL,
	nome_uf_arrendatario nvarchar(17) COLLATE Latin1_General_BIN     NULL,
	uf_arrendatario      nvarchar(4) COLLATE Latin1_General_BIN     NULL,
	regiao_arrendatario  nvarchar(1) COLLATE Latin1_General_BIN     NULL,
	fone_arrendatario    nvarchar(31) COLLATE Latin1_General_BIN     NULL,
	data_cped            dbo.data      NULL,
	codigo_rastreador    nvarchar(21) COLLATE Latin1_General_BIN     NULL,
	codigo_padrao_motor_euro3 nvarchar(21) COLLATE Latin1_General_BIN     NULL,
	codigo_padrao_motor_euro5 nvarchar(21) COLLATE Latin1_General_BIN     NULL,
	ano_modelo           nvarchar(4) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK_tbl_fabrica_chassi PRIMARY KEY  CLUSTERED ( num_seque  asc )  WITH (FILLFACTOR = 100)
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_floorplan_paginas ( 
	num_seque_pagin      int    IDENTITY  NOT NULL,
	nom_pagin            varchar(20) COLLATE Latin1_General_BIN     NULL,
	des_pagin            varchar(50) COLLATE Latin1_General_BIN     NULL,
	des_pagin_url        varchar(50) COLLATE Latin1_General_BIN     NULL,
	val_pagin_ordem      int      NULL,
	tip_pagin            varchar(3) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NULL,
	cod_user             dbo.coduser      NULL,
	CONSTRAINT PK_tbl_floorplan_paginas PRIMARY KEY  CLUSTERED ( num_seque_pagin  asc ) 
 );
GO

O script fornecido contém uma série de comandos SQL que criam tabelas e índices em um banco de dados chamado "dtb_corporativo" no SQL Server. Vou fornecer uma descrição geral do que cada tabela representa em termos de negócio:

1. Tabela `tbl_controle_job`:
   - Representa o controle de trabalhos/atividades relacionados a algum tipo de processo ou fluxo de trabalho no sistema corporativo.
   - Armazena informações sobre o código do trabalho, nome do trabalho, indicador de controle do trabalho, indicador de situação de registro, data da situação do registro e código do usuário.

2. Tabela `tbl_controle_subsidio_entidade`:
   - Armazena informações sobre controle de subsídios de entidades.
   - Inclui um número sequencial de subsídio, número da entidade associada ao subsídio, código da cota, indicador de competência, indicador de situação de registro, data da situação do registro e código do usuário.

3. Tabela `tbl_controle_transacoes`:
   - Registra informações sobre transações específicas em um sistema corporativo.
   - Contém o código da transação, número da execução, data e hora da transação.

4. Tabela `tbl_correspondencia_cnae`:
   - Armazena informações sobre correspondências de códigos CNAE (Classificação Nacional de Atividades Econômicas).
   - Registra códigos CNAE de origem e destino juntamente com suas descrições e observações.

5. Tabela `tbl_credenciamento_produto_bndes`:
   - Mantém informações sobre o credenciamento de produtos junto ao BNDES (Banco Nacional de Desenvolvimento Econômico e Social).
   - Contém detalhes sobre os produtos credenciados, incluindo códigos de classificação, indicadores de situação de registro e data da situação do registro.

6. Tabela `tbl_detalhe_bem_process`:
   - Armazena detalhes sobre um processo de bem específico.
   - Registra informações sobre o modelo, marca, combustível, ano, valor do bem, indicador de situação de registro, data da situação do registro, código do usuário e outros detalhes relacionados ao processo.

7. Tabela `tbl_email_entidade`:
   - Mantém os endereços de e-mail associados a uma entidade específica.
   - Inclui o número da entidade, endereço de e-mail, tipo de e-mail, indicador de situação de registro e data da situação do registro.

8. Tabela `tbl_email_templates`:
   - Armazena modelos de e-mails que podem ser utilizados pelo sistema.
   - Contém detalhes sobre o nome do modelo, caminho do modelo, indicador de situação de registro e data da situação do registro.

9. Tabela `tbl_email_validado`:
   - Registra endereços de e-mail válidos.
   - Contém endereços de e-mail e data de validação.

10. Tabela `tbl_empresa_sap`:
    - Armazena informações sobre empresas no sistema SAP.
    - Contém detalhes sobre o número da empresa SAP, nome da empresa, indicador de situação de registro e data da situação do registro.

Essas são apenas algumas das tabelas presentes no script, e cada tabela serve a um propósito específico no contexto do banco de dados "dtb_corporativo". As chaves primárias e índices não únicos também são definidos para otimizar o desempenho das consultas.

CREATE  TABLE dtb_corporativo.dbo.tbl_floorplan_paginas_roles ( 
	num_seque_roles      int    IDENTITY  NOT NULL,
	num_seque_pagin      int      NOT NULL,
	nom_roles            varchar(50) COLLATE Latin1_General_BIN     NULL,
	des_roles            varchar(200) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NULL,
	cod_user             dbo.coduser      NULL,
	CONSTRAINT PK_tbl_floorplan_paginas_roles PRIMARY KEY  CLUSTERED ( num_seque_roles  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_fornecedor ( 
	num_entid            dbo.numero      NOT NULL,
	tip_forne            char(3) COLLATE Latin1_General_BIN     NOT NULL,
	num_banco_1          dbo.numero      NULL,
	num_agenc_1          varchar(10) COLLATE Latin1_General_BIN     NULL,
	num_conta_corre_1    varchar(15) COLLATE Latin1_General_BIN     NULL,
	num_banco_2          dbo.numero      NULL,
	num_agenc_2          varchar(10) COLLATE Latin1_General_BIN     NULL,
	num_conta_corre_2    varchar(15) COLLATE Latin1_General_BIN     NULL,
	num_banco_3          dbo.numero      NULL,
	num_agenc_3          varchar(10) COLLATE Latin1_General_BIN     NULL,
	num_conta_corre_3    varchar(15) COLLATE Latin1_General_BIN     NULL,
	ind_autor_pagam_leasi dbo.indicador  DEFAULT 'N'    NULL,
	ind_autor_pagam_banco dbo.indicador  DEFAULT 'N'    NULL,
	ind_autor_pagam_servi dbo.indicador  DEFAULT 'N'    NULL,
	ind_autor_desco_leasi dbo.indicador  DEFAULT 'N'    NULL,
	ind_autor_desco_banco dbo.indicador  DEFAULT 'N'    NULL,
	ind_autor_desco_servi dbo.indicador  DEFAULT 'N'    NULL,
	num_entid_relac      dbo.numero      NULL,
	num_seque_conta_princ int      NOT NULL,
	num_susep            dbo.numero      NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	num_forne_pagam_sap  varchar(10) COLLATE Latin1_General_BIN     NULL,
	num_forne_receb_sap  varchar(10) COLLATE Latin1_General_BIN     NULL,
	tip_segur            varchar(3) COLLATE Latin1_General_BIN     NULL,
	num_apoli            dbo.numero      NULL,
	CONSTRAINT PK__tbl_fornecedor__2F8501C7 PRIMARY KEY  CLUSTERED ( num_entid  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  NONCLUSTERED INDEX inx_forne ON dtb_corporativo.dbo.tbl_fornecedor ( tip_forne  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_autor_pagam ON dtb_corporativo.dbo.tbl_fornecedor ( ind_autor_pagam_leasi  asc, ind_autor_pagam_banco  asc, ind_autor_pagam_servi  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_banco ON dtb_corporativo.dbo.tbl_fornecedor ( num_banco_1  asc, num_banco_2  asc, num_banco_3  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_entid_tip_forne ON dtb_corporativo.dbo.tbl_fornecedor ( num_entid  asc, tip_forne  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_dat_situa_regis ON dtb_corporativo.dbo.tbl_fornecedor ( dat_situa_regis  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_ind_situa_regis ON dtb_corporativo.dbo.tbl_fornecedor ( ind_situa_regis  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX IX_THINK_fornecedor ON dtb_corporativo.dbo.tbl_fornecedor ( num_banco_2  asc, num_conta_corre_2  asc, num_forne_pagam_sap  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX IX_THINK_fornecedor_I ON dtb_corporativo.dbo.tbl_fornecedor ( num_banco_1  asc, num_conta_corre_1  asc, num_forne_pagam_sap  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX DBA_IntegraSAP ON dtb_corporativo.dbo.tbl_fornecedor ( num_banco_3  asc, num_conta_corre_3  asc, num_forne_pagam_sap  asc, num_forne_receb_sap  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX DBA_integraSAP2 ON dtb_corporativo.dbo.tbl_fornecedor ( num_forne_pagam_sap  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_fornecedor_entid_relac ON dtb_corporativo.dbo.tbl_fornecedor ( num_entid_relac  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_fornecedor_compl_conce ( 
	num_entid            dbo.numero      NOT NULL,
	tip_conce            char(2) COLLATE Latin1_General_BIN     NOT NULL,
	tip_veicu            varchar(3) COLLATE Latin1_General_BIN     NOT NULL,
	cod_fabri            int      NOT NULL,
	nom_fabri            varchar(40) COLLATE Latin1_General_BIN     NOT NULL,
	cod_disof            int      NULL,
	ind_porte            char(1) COLLATE Latin1_General_BIN     NOT NULL,
	ind_porte_fabri      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK__tbl_concessionaria PRIMARY KEY  CLUSTERED ( num_entid  asc, tip_conce  asc, tip_veicu  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX inx_disof ON dtb_corporativo.dbo.tbl_fornecedor_compl_conce ( cod_disof  asc, cod_fabri  asc );
GO

CREATE  NONCLUSTERED INDEX inx_cod_fabri ON dtb_corporativo.dbo.tbl_fornecedor_compl_conce ( cod_fabri  asc );
GO

CREATE  NONCLUSTERED INDEX inx_dat_situa_regis ON dtb_corporativo.dbo.tbl_fornecedor_compl_conce ( dat_situa_regis  asc );
GO

CREATE  NONCLUSTERED INDEX inx_ind_situa_regis ON dtb_corporativo.dbo.tbl_fornecedor_compl_conce ( ind_situa_regis  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_gabarito_configuracao_molicar ( 
	tip_gabar_molic      char(3) COLLATE Latin1_General_BIN     NOT NULL,
	num_gabar_molic      dbo.numero      NOT NULL,
	des_gabar_molic      varchar(40) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_gabarito_configuracao_molicar PRIMARY KEY  CLUSTERED ( tip_gabar_molic  asc, num_gabar_molic  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_grupo_gerente ( 
	nom_grupo            varchar(60) COLLATE Latin1_General_BIN     NOT NULL,
	num_entid            int      NOT NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             char(8) COLLATE Latin1_General_BIN     NOT NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_historico_consulta_seguro ( 
	ind_histo            int    IDENTITY  NOT NULL,
	num_entid_segur      int      NULL,
	num_entid_segra      int      NULL,
	val_total_segur      float      NULL,
	val_limit_maxim_segur_clien float      NULL,
	dat_consu            datetime      NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_historico_mystock ( 
	cod_user             varchar(50) COLLATE Latin1_General_BIN     NOT NULL,
	num_entid_conce      int      NULL,
	num_produ            int      NULL,
	nom_pagin            varchar(50) COLLATE Latin1_General_BIN     NOT NULL,
	des_histo            varchar(500) COLLATE Latin1_General_BIN     NOT NULL,
	dat_histo            datetime      NOT NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_integ_user_corp_tcm ( 
	id                   bigint    IDENTITY  NOT NULL,
	cod_login            varchar(20) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	num_entid_conce      bigint      NULL,
	tip_aplic            varchar(10) COLLATE Latin1_General_BIN     NULL,
	CONSTRAINT pk_tbl_integ_user_corp_tcm PRIMARY KEY  CLUSTERED ( id  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_interface_controle ( 
	cod_inter_ctrle      bigint    IDENTITY  NOT NULL,
	dat_proce            dbo.data      NOT NULL,
	dat_envio            dbo.data      NULL,
	dat_retor            dbo.data      NULL,
	tip_proce            char(1) COLLATE Latin1_General_BIN     NOT NULL,
	ind_acao             dbo.indicador      NOT NULL,
	ind_statu_proce      dbo.indicador      NOT NULL,
	nom_arqui_saida      varchar(50) COLLATE Latin1_General_BIN     NULL,
	des_xml              xml      NULL,
	qtd_tenta_envio      int      NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT prk_interfacd_controle PRIMARY KEY  CLUSTERED ( cod_inter_ctrle  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  NONCLUSTERED INDEX ik_tbl_interface_controle_nom_arqui_saida ON dtb_corporativo.dbo.tbl_interface_controle ( nom_arqui_saida  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_interface_controle_inter_ctrle_envio ON dtb_corporativo.dbo.tbl_interface_controle ( cod_inter_ctrle  asc, dat_envio  asc ) INCLUDE ([ind_acao],  [ind_statu_proce],  [qtd_tenta_envio]) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX ik_ind_statu_proce_dat_envio ON dtb_corporativo.dbo.tbl_interface_controle ( ind_statu_proce  asc, dat_envio  asc, qtd_tenta_envio  asc ) INCLUDE ([cod_inter_ctrle],  [ind_acao]) WITH (FILLFACTOR = 98);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_interface_controle_dados_exlcusao ( 
	cod_inter_ctrle_dados bigint    IDENTITY  NOT NULL,
	des_chave            varchar(max) COLLATE Latin1_General_BIN     NOT NULL,
	cod_inter_modul      int      NULL,
	cod_inter_ctrle      bigint      NULL,
	ind_statu_proce      dbo.indicador      NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_interface_controle_dependencia ( 
	cod_inter_ctrle      bigint      NOT NULL,
	cod_inter_ctrle_depen bigint      NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT prk_interfacd_controle_dependencia PRIMARY KEY  CLUSTERED ( cod_inter_ctrle  asc, cod_inter_ctrle_depen  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_interface_controle_execucao ( 
	ind_statu_proce      dbo.indicador      NOT NULL,
	dat_ini_exec         dbo.data      NULL,
	dat_fim_exec         dbo.data      NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_interface_fabrica_chassi ( 
	num_seque            dbo.numero    IDENTITY  NOT NULL,
	tip_regis            dbo.numero      NULL,
	num_seque_arqui      dbo.numero      NULL,
	cod_statu_regis      char(4) COLLATE Latin1_General_BIN     NOT NULL,
	des_chassi           nvarchar(17) COLLATE Latin1_General_BIN     NULL,
	des_linha            varchar(max) COLLATE Latin1_General_BIN     NULL,
	tipo_mercado         nvarchar(3) COLLATE Latin1_General_BIN     NULL,
	dat_faturamento      dbo.data      NULL,
	des_cor_mb           nvarchar(4) COLLATE Latin1_General_BIN     NULL,
	des_baumuster        nvarchar(21) COLLATE Latin1_General_BIN     NULL,
	ano_fabricacao       dbo.numero      NULL,
	conta_concessionario nvarchar(8) COLLATE Latin1_General_BIN     NULL,
	conta_interventor    nvarchar(8) COLLATE Latin1_General_BIN     NULL,
	num_nota_fiscal      nvarchar(8) COLLATE Latin1_General_BIN     NULL,
	documento_proprietario nvarchar(14) COLLATE Latin1_General_BIN     NULL,
	nome_proprietario    nvarchar(44) COLLATE Latin1_General_BIN     NULL,
	endereco_proprietario nvarchar(44) COLLATE Latin1_General_BIN     NULL,
	bairro_proprietario  nvarchar(23) COLLATE Latin1_General_BIN     NULL,
	cidade_proprietario  nvarchar(23) COLLATE Latin1_General_BIN     NULL,
	estado_pais_proprietario nvarchar(17) COLLATE Latin1_General_BIN     NULL,
	uf_proprietario      nvarchar(4) COLLATE Latin1_General_BIN     NULL,
	cep_proprietario     dbo.numero      NULL,
	telefone_proprietario nvarchar(31) COLLATE Latin1_General_BIN     NULL,
	fz                   nvarchar(6) COLLATE Latin1_General_BIN     NULL,
	segmento             nvarchar(21) COLLATE Latin1_General_BIN     NULL,
	nome_abreviado       nvarchar(21) COLLATE Latin1_General_BIN     NULL,
	descricao_modelo     nvarchar(21) COLLATE Latin1_General_BIN     NULL,
	hora_fatura          nvarchar(6) COLLATE Latin1_General_BIN     NULL,
	data_fatura          dbo.data      NULL,
	data_saida_linha     dbo.data      NULL,
	regiao_venda         nvarchar(40) COLLATE Latin1_General_BIN     NULL,
	num_fatura_expo      nvarchar(6) COLLATE Latin1_General_BIN     NULL,
	tipo_fatura          nvarchar(1) COLLATE Latin1_General_BIN     NULL,
	uf_pais              nvarchar(3) COLLATE Latin1_General_BIN     NULL,
	classe_conta         nvarchar(1) COLLATE Latin1_General_BIN     NULL,
	atividade            nvarchar(1) COLLATE Latin1_General_BIN     NULL,
	tipo_cliente         nvarchar(2) COLLATE Latin1_General_BIN     NULL,
	codigo_regiao        nvarchar(1) COLLATE Latin1_General_BIN     NULL,
	codigo_arrendatario  nvarchar(8) COLLATE Latin1_General_BIN     NULL,
	documento_arrendatario nvarchar(14) COLLATE Latin1_General_BIN     NULL,
	nome_arrendatario    nvarchar(44) COLLATE Latin1_General_BIN     NULL,
	endereco_arrendatario nvarchar(44) COLLATE Latin1_General_BIN     NULL,
	bairro_arrendatario  nvarchar(23) COLLATE Latin1_General_BIN     NULL,
	cidade_arrendatario  nvarchar(23) COLLATE Latin1_General_BIN     NULL,
	cep_arrendatario     nvarchar(10) COLLATE Latin1_General_BIN     NULL,
	codigo_pais_arrendatario nvarchar(3) COLLATE Latin1_General_BIN     NULL,
	classe_arrendatario  nvarchar(1) COLLATE Latin1_General_BIN     NULL,
	atividade_arrendatario nvarchar(1) COLLATE Latin1_General_BIN     NULL,
	tipo_fornecedor_arrendatario nvarchar(2) COLLATE Latin1_General_BIN     NULL,
	nome_uf_arrendatario nvarchar(17) COLLATE Latin1_General_BIN     NULL,
	uf_arrendatario      nvarchar(4) COLLATE Latin1_General_BIN     NULL,
	regiao_arrendatario  nvarchar(1) COLLATE Latin1_General_BIN     NULL,
	fone_arrendatario    nvarchar(31) COLLATE Latin1_General_BIN     NULL,
	data_cped            dbo.data      NULL,
	codigo_rastreador    nvarchar(21) COLLATE Latin1_General_BIN     NULL,
	codigo_padrao_motor_euro3 nvarchar(21) COLLATE Latin1_General_BIN     NULL,
	codigo_padrao_motor_euro5 nvarchar(21) COLLATE Latin1_General_BIN     NULL,
	ano_modelo           nvarchar(4) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK_tbl_interface_fabrica_chassi PRIMARY KEY  CLUSTERED ( num_seque  asc )  WITH (FILLFACTOR = 100)
 );
GO

CREATE  NONCLUSTERED INDEX inx_interface_fabrica_chassi_statu_regis ON dtb_corporativo.dbo.tbl_interface_fabrica_chassi ( cod_statu_regis  asc ) INCLUDE ([num_seque_arqui]);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_interface_sistematica_BNDES ( 
	num_seque            dbo.numero    IDENTITY  NOT NULL,
	tip_regis            dbo.numero      NULL,
	num_seque_arqui      dbo.numero      NULL,
	cgc_fabricante       varchar(14) COLLATE Latin1_General_BIN     NULL,
	cod_produ            varchar(7) COLLATE Latin1_General_BIN     NULL,
	nom_produ            varchar(60) COLLATE Latin1_General_BIN     NULL,
	mol_produ            varchar(45) COLLATE Latin1_General_BIN     NULL,
	dis_autor            varchar(1) COLLATE Latin1_General_BIN     NULL,
	des_obser            varchar(3) COLLATE Latin1_General_BIN     NULL,
	fin                  varchar(3) COLLATE Latin1_General_BIN     NULL,
	agr                  varchar(3) COLLATE Latin1_General_BIN     NULL,
	agr_esp              varchar(3) COLLATE Latin1_General_BIN     NULL,
	proleite             varchar(3) COLLATE Latin1_General_BIN     NULL,
	moderinfra           varchar(3) COLLATE Latin1_General_BIN     NULL,
	implementos          varchar(3) COLLATE Latin1_General_BIN     NULL,
	colheitadeiras       varchar(3) COLLATE Latin1_General_BIN     NULL,
	cafe                 varchar(3) COLLATE Latin1_General_BIN     NULL,
	bndes_caminhoes      varchar(3) COLLATE Latin1_General_BIN     NULL,
	modermaq             varchar(3) COLLATE Latin1_General_BIN     NULL,
	comp                 varchar(3) COLLATE Latin1_General_BIN     NULL,
	vias                 varchar(3) COLLATE Latin1_General_BIN     NULL,
	onibus               varchar(3) COLLATE Latin1_General_BIN     NULL,
	cpntes               varchar(3) COLLATE Latin1_General_BIN     NULL,
	proesc               varchar(3) COLLATE Latin1_General_BIN     NULL,
	camesc               varchar(3) COLLATE Latin1_General_BIN     NULL,
	cereal               varchar(3) COLLATE Latin1_General_BIN     NULL,
	cod_statu_regis      char(4) COLLATE Latin1_General_BIN     NOT NULL,
	des_linha            varchar(max) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK_tbl_interface_sistematica_BNDES PRIMARY KEY  CLUSTERED ( num_seque  asc )  WITH (FILLFACTOR = 100)
 );
GO

CREATE  NONCLUSTERED INDEX inx_num_seque_arqui ON dtb_corporativo.dbo.tbl_interface_sistematica_BNDES ( num_seque_arqui  desc ) WITH (FILLFACTOR = 100);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_levantamento_pecas ( 
	Campo1               nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	Campo2               nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	Campo3               nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	Campo4               nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	Campo5               nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	Campo6               nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	Campo7               nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	Campo8               nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	Campo9               nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	Campo10              nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	Campo11              nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	Campo12              nvarchar(255) COLLATE Latin1_General_BIN     NULL,
	Campo13              float      NULL,
	Campo14              float      NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_log_acao ( 
	Id                   dbo.numero    IDENTITY  NOT NULL,
	Acao                 nvarchar(10) COLLATE Latin1_General_BIN     NOT NULL,
	Motivo               nvarchar(500) COLLATE Latin1_General_BIN     NOT NULL,
	Dat_Situa_Regis      datetime      NOT NULL,
	Cod_User             dbo.coduser      NOT NULL,
	CONSTRAINT PK_tbl_log_acao PRIMARY KEY  CLUSTERED ( Id  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_log_carga_molicar ( 
	cod_model_bem        varchar(10) COLLATE Latin1_General_BIN     NOT NULL,
	tip_combu_bem        char(2) COLLATE Latin1_General_BIN     NOT NULL,
	num_ano_bem          varchar(7) COLLATE Latin1_General_BIN     NOT NULL,
	dat_carga            dbo.data      NOT NULL,
	des_model_bem        varchar(50) COLLATE Latin1_General_BIN     NULL,
	des_model_bem_novo   varchar(50) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_log_carga_molicar PRIMARY KEY  CLUSTERED ( cod_model_bem  asc, tip_combu_bem  asc, num_ano_bem  asc, dat_carga  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_log_seras_contra ( 
	cod_log_seras_contra int    IDENTITY  NOT NULL,
	cod_seras_contra     int      NOT NULL,
	cod_contr            varchar(17) COLLATE Latin1_General_BIN     NOT NULL,
	nm_chassis           varchar(25) COLLATE Latin1_General_BIN     NOT NULL,
	cod_statu_seras_contra int      NOT NULL,
	json_input           varchar(max) COLLATE Latin1_General_BIN     NULL,
	json_output          varchar(max) COLLATE Latin1_General_BIN     NULL,
	servi_retur_code     varchar(150) COLLATE Latin1_General_BIN     NULL,
	data_inser           datetime      NOT NULL,
	data_inser_log       datetime  DEFAULT getdate()    NOT NULL,
	CONSTRAINT PK__tbl_log___C15F23035812930E PRIMARY KEY  CLUSTERED ( cod_log_seras_contra  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_login ( 
	cod_login            char(8) COLLATE Latin1_General_BIN     NOT NULL,
	num_entid            int      NOT NULL,
	num_entid_conce      int      NOT NULL,
	cod_senha            varchar(40) COLLATE Latin1_General_BIN     NOT NULL,
	cod_salt             varchar(10) COLLATE Latin1_General_BIN     NOT NULL,
	num_erro             int      NOT NULL,
	ind_statu            char(1) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      char(18) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      char(18) COLLATE Latin1_General_BIN     NOT NULL,
	cod_user             char(18) COLLATE Latin1_General_BIN     NOT NULL,
	CONSTRAINT prk_tbl_login PRIMARY KEY  CLUSTERED ( cod_login  asc ) ,
	CONSTRAINT inx_pecas_num_entid UNIQUE ( num_entid  asc, num_entid_conce  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX inx_pecas_num_erro ON dtb_corporativo.dbo.tbl_login ( num_erro  asc );
GO

CREATE  NONCLUSTERED INDEX inx_pecas_ind_statu ON dtb_corporativo.dbo.tbl_login ( ind_statu  asc );
GO

CREATE  NONCLUSTERED INDEX inx_pecas_entid ON dtb_corporativo.dbo.tbl_login ( num_entid  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_luciana_non_dc_carteira ( 
	cod_estru_objet      int      NULL,
	tip_enqua_objet      varchar(20) COLLATE Latin1_General_CI_AS COLLATE Latin1_General_CI_AS     NOT NULL,
	tip_objet_finan      varchar(20) COLLATE Latin1_General_CI_AS COLLATE Latin1_General_CI_AS     NOT NULL,
	des_detal_objet_finan varchar(20) COLLATE Latin1_General_CI_AS COLLATE Latin1_General_CI_AS     NOT NULL,
	des_bem              varchar(125) COLLATE Latin1_General_CI_AS COLLATE Latin1_General_CI_AS     NULL,
	des_bem_molic        varchar(50) COLLATE Latin1_General_CI_AS COLLATE Latin1_General_CI_AS     NULL,
	cod_model_bem        varchar(10) COLLATE Latin1_General_CI_AS COLLATE Latin1_General_CI_AS     NULL,
	des_marca_bem        varchar(50) COLLATE Latin1_General_CI_AS COLLATE Latin1_General_CI_AS     NULL,
	cod_estru_objet_novo int      NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_luciana_non_dc_detalhe ( 
	cod_estru_objet      int      NULL,
	cod_model_bem        varchar(10) COLLATE Latin1_General_BIN     NOT NULL,
	des_model_bem        varchar(50) COLLATE Latin1_General_BIN     NULL,
	tip_enqua_objet      varchar(20) COLLATE Latin1_General_BIN     NOT NULL,
	tip_objet_finan      varchar(20) COLLATE Latin1_General_BIN     NOT NULL,
	des_detal_objet_finan varchar(20) COLLATE Latin1_General_BIN     NULL,
	des_marca_bem        varchar(50) COLLATE Latin1_General_BIN     NULL,
	cod_estru_objet_novo int      NULL
 );
GO

Essas são declarações de criação de tabelas e índices em SQL Server, que parecem fazer parte de um banco de dados chamado "dtb_corporativo". Vou tentar explicar o entendimento do negócio em Português:

1. **Tabela "tbl_floorplan_paginas_roles"**: Essa tabela armazena informações sobre roles (funções) associadas a páginas em um sistema chamado "floorplan". Cada role tem um identificador único "num_seque_roles" e está vinculado a uma página através do campo "num_seque_pagin". A tabela também registra o nome da role ("nom_roles"), uma descrição ("des_roles"), o status de registro ("ind_situa_regis"), a data de registro ("dat_situa_regis"), e um código de usuário ("cod_user").

2. **Tabela "tbl_fornecedor"**: Essa tabela mantém informações sobre fornecedores. Cada fornecedor tem um número único de identificação "num_entid" e é classificado por um tipo ("tip_forne"). Além disso, a tabela armazena detalhes de contas bancárias para até 3 bancos diferentes. Existem indicadores para autorização de pagamento e desconto ("ind_autor_pagam_leasi", "ind_autor_pagam_banco", etc.). Também estão presentes informações relacionadas a apólices de seguro ("num_susep", "tip_segur", "num_apoli") e outros dados associados ao fornecedor. O status de registro ("ind_situa_regis") e a data de registro ("dat_situa_regis") são mantidos para controle. Códigos de usuário ("cod_user") também são registrados.

3. **Índices**: Foram criados vários índices para melhorar o desempenho das consultas nessas tabelas. Os índices são criados em diferentes campos das tabelas para facilitar a busca e a recuperação de dados de forma mais eficiente.

4. **Outras Tabelas**: Há várias outras tabelas, como "tbl_fornecedor_compl_conce", "tbl_gabarito_configuracao_molicar", "tbl_historico_consulta_seguro", entre outras. Cada uma delas parece estar relacionada a informações específicas do sistema, com campos e índices adequados para suas respectivas finalidades.

Essas declarações de criação de tabelas e índices são fundamentais para a estruturação do banco de dados e para garantir que as operações de busca e inserção de dados sejam executadas de forma otimizada e com integridade dos dados. A partir dessas tabelas e índices, muitas outras operações podem ser desenvolvidas para suportar as funcionalidades do sistema em questão.

CREATE  TABLE dtb_corporativo.dbo.tbl_luciana_non_dc_detalhe2 ( 
	cod_estru_objet      int      NULL,
	cod_model_bem        varchar(10) COLLATE Latin1_General_BIN     NOT NULL,
	des_model_bem        varchar(50) COLLATE Latin1_General_BIN     NULL,
	tip_enqua_objet      varchar(20) COLLATE Latin1_General_BIN     NOT NULL,
	tip_objet_finan      varchar(20) COLLATE Latin1_General_BIN     NOT NULL,
	des_detal_objet_finan varchar(20) COLLATE Latin1_General_BIN     NULL,
	des_marca_bem        varchar(50) COLLATE Latin1_General_BIN     NULL,
	cod_estru_objet_novo int      NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_marca_bem ( 
	cod_marca_bem        char(3) COLLATE Latin1_General_BIN     NOT NULL,
	des_marca_bem        varchar(50) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK__tbl_marca_bem__2A4129BD PRIMARY KEY  CLUSTERED ( cod_marca_bem  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX inx_des_marca_bem ON dtb_corporativo.dbo.tbl_marca_bem ( des_marca_bem  asc );
GO

CREATE  NONCLUSTERED INDEX inx_dat_situa_regis ON dtb_corporativo.dbo.tbl_marca_bem ( dat_situa_regis  asc );
GO

CREATE  NONCLUSTERED INDEX inx_ind_situa_regis ON dtb_corporativo.dbo.tbl_marca_bem ( ind_situa_regis  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_modulo ( 
	cod_modul            int    IDENTITY  NOT NULL,
	nom_modul            varchar(50) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT prk_modulo PRIMARY KEY  CLUSTERED ( cod_modul  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_motivo_renda ( 
	num_motiv            dbo.numero    IDENTITY  NOT NULL,
	tip_motiv            char(2) COLLATE Latin1_General_BIN     NOT NULL,
	des_motiv_renda      varchar(150) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_num_motiv PRIMARY KEY  CLUSTERED ( num_motiv  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_munic_seras_contra ( 
	cod_munic_seras_contra varchar(4) COLLATE Latin1_General_BIN     NOT NULL,
	munic_seras_contra   varchar(100) COLLATE Latin1_General_BIN     NOT NULL,
	sigla_uf             varchar(2) COLLATE Latin1_General_BIN     NOT NULL,
	envio_seras          bit  DEFAULT 0    NOT NULL,
	CONSTRAINT PK__tbl_muni__909C8382D147AEE2 PRIMARY KEY  CLUSTERED ( cod_munic_seras_contra  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_objeto_financiamento ( 
	cod_objet_finan      char(3) COLLATE Latin1_General_BIN     NOT NULL,
	des_objet_finan      varchar(20) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_objeto_financiamento PRIMARY KEY  CLUSTERED ( cod_objet_finan  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_operation_struc ( 
	num_escal_stru       int      NULL,
	des_escal_stru       varchar(50) COLLATE Latin1_General_BIN     NULL,
	val_perc_stru        float      NULL,
	val_escal_stru1      float      NULL,
	val_escal_stru2      float      NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_overline_entidade_historico ( 
	num_over_entid_histo int    IDENTITY  NOT NULL,
	num_over_entid       int      NULL,
	num_over_propo       int      NULL,
	num_entid            int      NULL,
	cod_cota             varchar(3) COLLATE Latin1_General_BIN     NULL,
	val_limit_aprov      dbo.valor      NULL,
	val_limit_utili      dbo.valor      NULL,
	val_over_line        dbo.valor      NULL,
	des_compa_over_line  dbo.indicador      NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NULL,
	cod_user             dbo.coduser      NOT NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_overline_proposta ( 
	num_over_propo       int    IDENTITY  NOT NULL,
	cod_propo            varchar(15) COLLATE Latin1_General_BIN     NULL,
	dat_valid            date      NULL,
	cod_alcad            int      NULL,
	val_limit_tecni      dbo.valor      NULL,
	tip_categ            varchar(3) COLLATE Latin1_General_BIN     NULL,
	tip_alter            varchar(3) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK__tbl_over__7D5F8668419DAE51 PRIMARY KEY  CLUSTERED ( num_over_propo  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_overline_proposta_historico ( 
	num_over_propo_histo int    IDENTITY  NOT NULL,
	num_over_propo       int      NULL,
	cod_propo            varchar(15) COLLATE Latin1_General_BIN     NULL,
	dat_valid            date      NULL,
	cod_alcad            int      NULL,
	val_limit_tecni      dbo.valor      NULL,
	val_risco_grupo      dbo.valor      NULL,
	tip_categ            varchar(3) COLLATE Latin1_General_BIN     NULL,
	tip_alter            varchar(3) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NULL,
	cod_user             dbo.coduser      NOT NULL
 );
GO

CREATE  NONCLUSTERED INDEX inx_overline_proposta_historico_over_propo ON dtb_corporativo.dbo.tbl_overline_proposta_historico ( num_over_propo  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_param_log ( 
	Id                   dbo.numero    IDENTITY  NOT NULL,
	Ambiente             varchar(20) COLLATE Latin1_General_BIN     NOT NULL,
	TipoAmbiente         varchar(50) COLLATE Latin1_General_BIN     NOT NULL,
	Diretorio            varchar(150) COLLATE Latin1_General_BIN     NOT NULL,
	Ind_Situa_Regis      dbo.indicador      NOT NULL,
	Dat_Situa_Regis      datetime      NOT NULL,
	Cod_User             dbo.coduser      NOT NULL,
	CONSTRAINT PK_tbl_param_log PRIMARY KEY  CLUSTERED ( Id  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_param_proce_molicar ( 
	id_param_proce_molicar int    IDENTITY  NOT NULL,
	des_chave            varchar(100) COLLATE Latin1_General_BIN     NOT NULL,
	des_valor            varchar(max) COLLATE Latin1_General_BIN     NOT NULL,
	des_chave_cod        varchar(100) COLLATE Latin1_General_BIN     NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_param_regis_contr_detran ( 
	id_param_regis_contr_detran int    IDENTITY  NOT NULL,
	des_chave            varchar(100) COLLATE Latin1_General_BIN     NOT NULL,
	des_valor            varchar(max) COLLATE Latin1_General_BIN     NOT NULL,
	des_chave_cod        varchar(100) COLLATE Latin1_General_BIN     NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_parametro_geral ( 
	num_param            dbo.numero      NOT NULL,
	des_param            varchar(60) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pkc_param_geral PRIMARY KEY  CLUSTERED ( num_param  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_parametros_reportviewer ( 
	cod_sessa            varchar(36) COLLATE Latin1_General_BIN     NULL,
	nom_param            varchar(100) COLLATE Latin1_General_BIN     NULL,
	val_param            varchar(200) COLLATE Latin1_General_BIN     NULL,
	dat_situa_regis      datetime      NULL
 );
GO

CREATE  NONCLUSTERED INDEX pki_parametros_reportviewer_sessao ON dtb_corporativo.dbo.tbl_parametros_reportviewer ( cod_sessa  asc ) WITH (FILLFACTOR = 100);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_produto_gerencial ( 
	num_produ_geren      dbo.numero      NOT NULL,
	nom_produ_geren      varchar(60) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_produto_gerencial PRIMARY KEY  CLUSTERED ( num_produ_geren  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_produto_sap ( 
	cod_produ_sap        varchar(5) COLLATE Latin1_General_BIN     NOT NULL,
	num_banco_empre_pagam varchar(5) COLLATE Latin1_General_BIN     NOT NULL,
	nom_produ_sap        varchar(50) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_produto_sap PRIMARY KEY  CLUSTERED ( cod_produ_sap  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_rateio_comissao_concessionaria ( 
	num_entid            dbo.numero      NOT NULL,
	tip_forne            char(3) COLLATE Latin1_General_BIN     NOT NULL,
	tip_cargo            char(3) COLLATE Latin1_General_BIN     NOT NULL,
	pcl_ratei_comis      dbo.porcentagem      NOT NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_rateio_comissao_concessionaria PRIMARY KEY  CLUSTERED ( num_entid  asc, tip_forne  asc, tip_cargo  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX fki_num_entid_fornce_rateio_comissao_concessionaria ON dtb_corporativo.dbo.tbl_rateio_comissao_concessionaria ( num_entid  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_regional ( 
	num_regio            dbo.numero      NOT NULL,
	nom_regio            varchar(30) COLLATE Latin1_General_BIN     NOT NULL,
	cod_sigla_regio      varchar(2) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK__tbl_regional__29CC2871 PRIMARY KEY  CLUSTERED ( num_regio  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX inx_cod_sigla_regio ON dtb_corporativo.dbo.tbl_regional ( cod_sigla_regio  asc );
GO

CREATE  NONCLUSTERED INDEX inx_nom_regio ON dtb_corporativo.dbo.tbl_regional ( nom_regio  asc );
GO

CREATE  NONCLUSTERED INDEX inx_dat_situa_regis ON dtb_corporativo.dbo.tbl_regional ( dat_situa_regis  asc );
GO

CREATE  NONCLUSTERED INDEX inx_ind_situa_regis ON dtb_corporativo.dbo.tbl_regional ( ind_situa_regis  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_regional_centro_lucro ( 
	cod_centr_lucro      dbo.numero      NOT NULL,
	num_regio            dbo.numero      NOT NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_regional_centro_lucro PRIMARY KEY  CLUSTERED ( cod_centr_lucro  asc, num_regio  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_regional_estado ( 
	num_regio            dbo.numero      NOT NULL,
	cod_sigla_estad      char(2) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_regional_estado PRIMARY KEY  CLUSTERED ( num_regio  asc, cod_sigla_estad  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX fki_cod_sigla_estad ON dtb_corporativo.dbo.tbl_regional_estado ( cod_sigla_estad  asc );
GO

CREATE  NONCLUSTERED INDEX fki_num_regio ON dtb_corporativo.dbo.tbl_regional_estado ( num_regio  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_regional_risco_cobra ( 
	num_regio            int      NULL,
	des_regio_cobra      varchar(50) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL
 );
GO

Entendimento do Negócio:

Essas tabelas representam uma base de dados legada (antiga) no SQL Server de um sistema corporativo. A seguir, vou explicar o propósito de cada tabela:

1. Tabela "dtb_corporativo.dbo.tbl_luciana_non_dc_detalhe2":
   - Armazena informações sobre detalhes de objetos não Data Center.
   - Contém campos como código da estrutura do objeto, código do modelo do bem, descrição do modelo do bem, tipo de enquadramento do objeto, tipo de objeto financeiro, descrição detalhada do objeto financeiro, descrição da marca do bem e código da nova estrutura do objeto.

2. Tabela "dtb_corporativo.dbo.tbl_marca_bem":
   - Armazena informações sobre marcas de bens.
   - Contém campos como código da marca do bem, descrição da marca do bem, indicador de situação de registro, data de situação de registro e código do usuário.

3. Tabela "dtb_corporativo.dbo.tbl_modulo":
   - Armazena informações sobre módulos.
   - Contém campos como código do módulo, nome do módulo, indicador de situação de registro, data de situação de registro e código do usuário.

4. Tabela "dtb_corporativo.dbo.tbl_motivo_renda":
   - Armazena informações sobre motivos de renda.
   - Contém campos como número do motivo, tipo de motivo, descrição do motivo de renda, indicador de situação de registro, data de situação de registro e código do usuário.

5. Tabela "dtb_corporativo.dbo.tbl_munic_seras_contra":
   - Armazena informações sobre municípios serasa/contratados.
   - Contém campos como código do município serasa/contratado, município serasa/contratado, sigla da unidade federativa, indicador de envio serasa e contrato.

6. Tabela "dtb_corporativo.dbo.tbl_objeto_financiamento":
   - Armazena informações sobre objetos de financiamento.
   - Contém campos como código do objeto de financiamento, descrição do objeto de financiamento, indicador de situação de registro, data de situação de registro e código do usuário.

7. Tabela "dtb_corporativo.dbo.tbl_operation_struc":
   - Armazena informações sobre estrutura de operações.
   - Contém campos como número da estrutura de operação, descrição da estrutura de operação, valor percentual da estrutura, valor da primeira estrutura e valor da segunda estrutura.

8. Tabela "dtb_corporativo.dbo.tbl_overline_entidade_historico":
   - Armazena informações históricas sobre limite de overline para entidades.
   - Contém campos como número do histórico do limite de overline, número do overline da entidade, número da proposta overline, número da entidade, código da cota, valor do limite de aprovação, valor do limite de utilização, valor do overline, descrição da empresa do overline, indicador de situação de registro, data de situação de registro e código do usuário.

9. Tabela "dtb_corporativo.dbo.tbl_overline_proposta":
   - Armazena informações sobre limites de overline para propostas.
   - Contém campos como número do overline da proposta, código da proposta, data de validade, código do alçado, valor do limite técnico, tipo de categoria, tipo de alteração, indicador de situação de registro, data de situação de registro e código do usuário.

10. Tabela "dtb_corporativo.dbo.tbl_overline_proposta_historico":
    - Armazena informações históricas sobre limites de overline para propostas.
    - Contém campos como número do histórico do overline da proposta, número do overline da proposta, código da proposta, data de validade, código do alçado, valor do limite técnico, valor do risco do grupo, tipo de categoria, tipo de alteração, indicador de situação de registro, data de situação de registro e código do usuário.

11. Tabela "dtb_corporativo.dbo.tbl_param_log":
    - Armazena informações de parâmetros de log.
    - Contém campos como ID, ambiente, tipo de ambiente, diretório, indicador de situação de registro, data de situação de registro e código do usuário.

Essas são apenas algumas das tabelas presentes na base de dados. Elas armazenam informações relacionadas a diversos aspectos do sistema corporativo, como objetos, módulos, marcas, motivos de renda, parâmetros, entre outros. Cada tabela representa uma entidade específica e seus campos correspondem aos atributos dessa entidade.

CREATE  TABLE dtb_corporativo.dbo.tbl_registro_acesso ( 
	tip_aplic            char(3) COLLATE Latin1_General_BIN     NOT NULL,
	cod_login            dbo.coduser      NOT NULL,
	dat_regis_acess      dbo.data      NOT NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_registro_acesso PRIMARY KEY  CLUSTERED ( tip_aplic  asc, cod_login  asc, dat_regis_acess  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_registro_acesso_appsales ( 
	num_regis_acess      dbo.numero    IDENTITY  NOT NULL,
	dat_regis_acess      dbo.data      NOT NULL,
	cod_login            dbo.coduser      NOT NULL,
	nom_login            varchar(50) COLLATE Latin1_General_BIN     NOT NULL,
	des_regis_acess      varchar(100) COLLATE Latin1_General_BIN     NOT NULL,
	CONSTRAINT PK_tbl_registro_acesso_appsales PRIMARY KEY  CLUSTERED ( num_regis_acess  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_relac_estrutura_objeto_financiamento_segur ( 
	cod_estru_objet      dbo.numero      NOT NULL,
	cod_categ            dbo.numero      NULL,
	cod_marca            int      NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_relac_estrutura_objeto_financiamento_segur PRIMARY KEY  CLUSTERED ( cod_estru_objet  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_relacao_politica ( 
	cod_natur_jurid      int      NOT NULL,
	tip_grupo_relac      char(2) COLLATE Latin1_General_BIN     NOT NULL,
	CONSTRAINT pki_relacao_politica PRIMARY KEY  CLUSTERED ( cod_natur_jurid  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_relatorio_visita ( 
	num_relat_visit      int      NOT NULL,
	num_entid_funci      int      NOT NULL,
	num_entid_outra      int      NULL,
	nom_grupo            varchar(60) COLLATE Latin1_General_BIN     NULL,
	dat_relat_visit      datetime      NOT NULL,
	des_local            varchar(255) COLLATE Latin1_General_BIN     NOT NULL,
	des_acao             varchar(8000) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             char(8) COLLATE Latin1_General_BIN     NOT NULL
 );
GO

CREATE  NONCLUSTERED INDEX inx_keyac_relat_visit ON dtb_corporativo.dbo.tbl_relatorio_visita ( dat_relat_visit  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_relatorio_visita_anexo ( 
	num_anexo            int      NOT NULL,
	num_relat_visit      int      NOT NULL,
	nom_anexo            varchar(255) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             char(8) COLLATE Latin1_General_BIN     NOT NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_relatorio_visita_cliente ( 
	num_entid_clien      int      NOT NULL,
	num_relat_visit      int      NOT NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             char(8) COLLATE Latin1_General_BIN     NOT NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_relatorio_visita_link ( 
	num_link             int      NOT NULL,
	num_relat_visit      int      NOT NULL,
	nom_link             varchar(255) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             char(8) COLLATE Latin1_General_BIN     NOT NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_sap_vendor_master_data ( 
	num_entid            int      NOT NULL,
	nom_entid            varchar(60) COLLATE Latin1_General_BIN     NOT NULL,
	cod_tipo_logra       varchar(15) COLLATE Latin1_General_BIN     NULL,
	des_logra            varchar(60) COLLATE Latin1_General_BIN     NULL,
	num_logra            varchar(10) COLLATE Latin1_General_BIN     NULL,
	des_compl_logra      varchar(30) COLLATE Latin1_General_BIN     NULL,
	des_bairr            varchar(30) COLLATE Latin1_General_BIN     NULL,
	num_cep              char(8) COLLATE Latin1_General_BIN     NULL,
	nom_cidad            varchar(30) COLLATE Latin1_General_BIN     NULL,
	cod_sigla_estad      char(2) COLLATE Latin1_General_BIN     NULL,
	num_ddd_telef        int      NULL,
	des_telef            varchar(20) COLLATE Latin1_General_BIN     NULL,
	num_ddd_celul        int      NULL,
	des_celul            varchar(20) COLLATE Latin1_General_BIN     NULL,
	num_ddd_fax          int      NULL,
	des_fax              varchar(20) COLLATE Latin1_General_BIN     NULL,
	des_email            varchar(60) COLLATE Latin1_General_BIN     NULL,
	CPF                  char(14) COLLATE Latin1_General_BIN     NOT NULL,
	CNPJ                 char(14) COLLATE Latin1_General_BIN     NOT NULL,
	num_inscr_estad      char(20) COLLATE Latin1_General_BIN     NULL,
	num_inscr_munic      char(20) COLLATE Latin1_General_BIN     NULL,
	num_inscr_pis        bigint      NULL,
	[Bank key 1]         varchar(8000) COLLATE Latin1_General_BIN     NULL,
	[bank account_1]     varchar(15) COLLATE Latin1_General_BIN     NULL,
	[Bank key 2]         varchar(8000) COLLATE Latin1_General_BIN     NULL,
	[bank account_2]     varchar(15) COLLATE Latin1_General_BIN     NULL,
	[Bank key 3]         varchar(8000) COLLATE Latin1_General_BIN     NULL,
	[bank account_3]     varchar(15) COLLATE Latin1_General_BIN     NULL,
	tip_forne            char(3) COLLATE Latin1_General_BIN     NOT NULL,
	ind_cnpj_cpf         char(1) COLLATE Latin1_General_BIN     NULL,
	num_forne_pagam_sap  varchar(10) COLLATE Latin1_General_BIN     NULL,
	num_forne_receb_sap  varchar(10) COLLATE Latin1_General_BIN     NULL,
	dat_cadas            dbo.data      NULL,
	cod_user             varchar(15) COLLATE Latin1_General_BIN     NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_sap_vendor_master_endereco ( 
	num_entid            int      NOT NULL,
	nom_entid            varchar(60) COLLATE Latin1_General_BIN     NOT NULL,
	cod_tipo_logra       varchar(15) COLLATE Latin1_General_BIN     NULL,
	des_logra            varchar(60) COLLATE Latin1_General_BIN     NULL,
	num_logra            varchar(10) COLLATE Latin1_General_BIN     NULL,
	des_compl_logra      varchar(30) COLLATE Latin1_General_BIN     NULL,
	des_bairr            varchar(30) COLLATE Latin1_General_BIN     NULL,
	num_cep              char(8) COLLATE Latin1_General_BIN     NULL,
	nom_cidad            varchar(30) COLLATE Latin1_General_BIN     NULL,
	cod_sigla_estad      char(2) COLLATE Latin1_General_BIN     NULL,
	num_ddd_telef        int      NULL,
	des_telef            varchar(20) COLLATE Latin1_General_BIN     NULL,
	num_ddd_celul        int      NULL,
	des_celul            varchar(20) COLLATE Latin1_General_BIN     NULL,
	num_ddd_fax          int      NULL,
	des_fax              varchar(20) COLLATE Latin1_General_BIN     NULL,
	des_email            varchar(60) COLLATE Latin1_General_BIN     NULL,
	CPF                  char(14) COLLATE Latin1_General_BIN     NOT NULL,
	CNPJ                 char(14) COLLATE Latin1_General_BIN     NOT NULL,
	num_inscr_estad      char(20) COLLATE Latin1_General_BIN     NULL,
	num_inscr_munic      char(20) COLLATE Latin1_General_BIN     NULL,
	num_inscr_pis        bigint      NULL,
	[Bank key 1]         varchar(8000) COLLATE Latin1_General_BIN     NULL,
	[bank account_1]     varchar(15) COLLATE Latin1_General_BIN     NULL,
	[Bank key 2]         varchar(8000) COLLATE Latin1_General_BIN     NULL,
	[bank account_2]     varchar(15) COLLATE Latin1_General_BIN     NULL,
	[Bank key 3]         varchar(8000) COLLATE Latin1_General_BIN     NULL,
	[bank account_3]     varchar(15) COLLATE Latin1_General_BIN     NULL,
	tip_forne            char(3) COLLATE Latin1_General_BIN     NOT NULL,
	num_forne_pagam_sap  varchar(10) COLLATE Latin1_General_BIN     NULL,
	num_forne_receb_sap  varchar(10) COLLATE Latin1_General_BIN     NULL,
	dat_cadas            dbo.data      NULL,
	cod_user             varchar(15) COLLATE Latin1_General_BIN     NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_segmento_sap ( 
	tip_segme            char(3) COLLATE Latin1_General_BIN     NOT NULL,
	tip_segme_sap        char(2) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_segmento_sap PRIMARY KEY  CLUSTERED ( tip_segme  asc, tip_segme_sap  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_setor_atividade_rating ( 
	cod_setor_ativi      char(3) COLLATE Latin1_General_BIN     NOT NULL,
	nom_setor_ativi      varchar(50) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT inx_setor_atividade UNIQUE ( cod_setor_ativi  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_sistema_fabrica ( 
	num_seque_siste_fabri int    IDENTITY  NOT NULL,
	cod_siste            varchar(3) COLLATE Latin1_General_BIN     NOT NULL,
	des_siste            varchar(100) COLLATE Latin1_General_BIN     NOT NULL,
	des_siste_compl      varchar(100) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK__tbl_sist__4941218013B4110E PRIMARY KEY  CLUSTERED ( num_seque_siste_fabri  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_sistema_fabrica_bu ( 
	num_seque_siste_fabri int      NOT NULL,
	des_tipo_bu          varchar(3) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NULL,
	cod_user             dbo.coduser      NOT NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_statu_seras_contra ( 
	cod_statu_seras_contra int    IDENTITY  NOT NULL,
	statu_seras_contra   varchar(50) COLLATE Latin1_General_BIN     NOT NULL,
	CONSTRAINT PK__tbl_stat__2DE2E857A6FB53A7 PRIMARY KEY  CLUSTERED ( cod_statu_seras_contra  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_teste ( 
	num_entid_conce      int      NULL,
	num_conce_fabri      int      NULL,
	num_cnpj_cpf         char(18) COLLATE Latin1_General_BIN     NULL,
	nom_entid            varchar(60) COLLATE Latin1_General_BIN     NULL,
	nom_grupo            varchar(60) COLLATE Latin1_General_BIN     NULL,
	num_mes              int      NULL,
	num_ano              int      NULL,
	qtd_finan_outro_banco_mes int      NULL,
	qtd_finan_banco_mes  int      NULL,
	pcl_penet_banco_mes  float      NULL,
	qtd_ponto_mes        int      NULL,
	qtd_finan_outro_banco_ano int      NULL,
	qtd_finan_banco_ano  int      NULL,
	pcl_penet_banco_ano  float      NULL,
	qtd_pontu_acumu_ano  int      NULL,
	qtd_finan_outro_banco_perio_ano int      NULL,
	qtd_finan_banco_perio_ano int      NULL,
	pcl_penet_banco_perio_ano float      NULL,
	qtd_pontu_acumu_perio_ano int      NULL,
	qtd_finan_outro_banco_grupo_mes int      NULL,
	qtd_finan_banco_grupo_mes int      NULL,
	pcl_penet_banco_grupo_mes float      NULL,
	qtd_ponto_grupo_mes  int      NULL,
	qtd_finan_outro_banco_grupo_ano int      NULL,
	qtd_finan_banco_grupo_ano int      NULL,
	pcl_penet_banco_grupo_ano float      NULL,
	qtd_pontu_acumu_grupo_ano int      NULL,
	qtd_finan_outro_banco_perio_grupo_ano int      NULL,
	qtd_finan_banco_perio_grupo_ano int      NULL,
	pcl_penet_banco_perio_grupo_ano float      NULL,
	qtd_pontu_acumu_perio_grupo_ano int      NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_tipo_bem_star_class ( 
	cod_tipo_bem_star_class dbo.numero    IDENTITY  NOT NULL,
	des_tipo_bem_star_class varchar(255) COLLATE Latin1_General_BIN     NOT NULL,
	obs_tipo_bem_star_class varchar(500) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	dat_ini_valid        dbo.data      NOT NULL,
	dat_final_valid      dbo.data      NULL,
	CONSTRAINT PK__tbl_tipo_bem_sta__76A64E30 PRIMARY KEY  CLUSTERED ( cod_tipo_bem_star_class  asc )  WITH (FILLFACTOR = 100)
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_tipo_documento ( 
	cod_tipo_documento   int      NOT NULL,
	nom_documento        varchar(10) COLLATE Latin1_General_BIN     NOT NULL,
	CONSTRAINT PK__tbl_tipo__D6DCB690D802D8EE PRIMARY KEY  CLUSTERED ( cod_tipo_documento  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_tipo_email_entidade ( 
	tipo_email           int      NOT NULL,
	desc_email           varchar(60) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      nchar(10) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK_tbl_tipo_email_entidade PRIMARY KEY  CLUSTERED ( tipo_email  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_tipo_entidade ( 
	num_tipo_entid       dbo.numero    IDENTITY  NOT NULL,
	des_tipo_entid       varchar(60) COLLATE Latin1_General_BIN     NOT NULL,
	ind_permi_exclu      dbo.indicador      NOT NULL,
	ind_autom_class      dbo.indicador      NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pk_tpentid PRIMARY KEY  CLUSTERED ( num_tipo_entid  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_tipo_entidade_relacionamento ( 
	num_entid            dbo.numero      NOT NULL,
	num_tipo_entid       dbo.numero      NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pk_tpentidrelac PRIMARY KEY  CLUSTERED ( num_entid  asc, num_tipo_entid  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX inx_tpentidrelac ON dtb_corporativo.dbo.tbl_tipo_entidade_relacionamento ( num_tipo_entid  asc ) INCLUDE ([num_entid]);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_tipo_exposicao_politica ( 
	num_tipo_expos       dbo.numero      NOT NULL,
	des_tipo_expos       varchar(200) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_tipo_expos_polit PRIMARY KEY  CLUSTERED ( num_tipo_expos  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_tipo_fornecedor ( 
	tip_forne            char(3) COLLATE Latin1_General_BIN     NOT NULL,
	tip_forne_sap        varchar(10) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_tipo_fornecedor PRIMARY KEY  CLUSTERED ( tip_forne  asc, tip_forne_sap  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_tipo_logra_bndes ( 
	num_tipo_logra_bndes dbo.numero      NOT NULL,
	nom_tipo_logra_bndes varchar(30) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pk_tipo_logra_bndes PRIMARY KEY  CLUSTERED ( num_tipo_logra_bndes  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_tipo_logradouro ( 
	cod_tipo_logra       varchar(15) COLLATE Latin1_General_BIN     NOT NULL,
	ds_tipo_logra        varchar(50) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NULL,
	dat_situa_regis      datetime      NULL,
	cod_user             char(8) COLLATE Latin1_General_BIN     NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_tipo_patrimonio ( 
	num_patri            int      NOT NULL,
	des_patri            varchar(50) COLLATE Latin1_General_BIN     NULL,
	val_patri            decimal(10,2)      NULL,
	CONSTRAINT PK__tbl_tipo__65F773209DCFFAA6 PRIMARY KEY  CLUSTERED ( num_patri  asc ) 
 );
GO

Essas são as tabelas do banco de dados dtb_corporativo no SQL Server. Vou descrever o entendimento do negócio de cada tabela em português:

1. **tbl_registro_acesso**: Armazena registros de acesso a aplicativos. Contém informações sobre o tipo de aplicativo, código de login, data de registro de acesso e outras informações relacionadas ao acesso.

2. **tbl_registro_acesso_appsales**: Essa tabela está relacionada à anterior e possui registros de acesso específicos para o aplicativo "appsales". Contém informações detalhadas sobre o registro de acesso, como número de registro, data de acesso, código de login, nome de login e descrição do acesso.

3. **tbl_relac_estrutura_objeto_financiamento_segur**: Mantém informações sobre a relação entre a estrutura do objeto de financiamento e seguro. Contém códigos de estrutura, categoria, marca e informações de situação e usuário relacionadas.

4. **tbl_relacao_politica**: Armazena informações sobre relações políticas, incluindo código de natureza jurídica e tipo de grupo de relacionamento.

5. **tbl_relatorio_visita**: É usada para registrar relatórios de visitas, contendo número de relatório de visita, número de entidade funcional, número de entidade externa, grupo nome, data do relatório de visita, local, ação, situação do registro e outras informações relevantes.

6. **tbl_relatorio_visita_anexo**: Mantém informações sobre os anexos associados aos relatórios de visita. Contém detalhes sobre o número de anexo, número de relatório de visita, nome do anexo e informações de situação e usuário.

7. **tbl_relatorio_visita_cliente**: Armazena informações sobre clientes associados aos relatórios de visita. Contém números de entidade de cliente, número de relatório de visita e informações de situação e usuário.

8. **tbl_relatorio_visita_link**: Armazena informações sobre links associados aos relatórios de visita. Contém números de link, número de relatório de visita, nome do link e informações de situação e usuário.

9. **tbl_sap_vendor_master_data**: Essa tabela armazena dados mestre de fornecedores do sistema SAP. Inclui informações detalhadas, como nome, endereço, telefone, CPF/CNPJ, números de inscrição e contas bancárias.

10. **tbl_sap_vendor_master_endereco**: Similar à tabela anterior, esta também armazena dados mestre de fornecedores do sistema SAP, mas com informações específicas de endereço.

11. **tbl_segmento_sap**: Contém informações sobre segmentos no sistema SAP, como tipo de segmento, tipo de segmento no SAP e outras informações relacionadas.

12. **tbl_setor_atividade_rating**: Mantém detalhes sobre setores de atividade e rating. Inclui códigos de setor, nome, situação de registro, data de registro e informações de usuário.

13. **tbl_sistema_fabrica**: Armazena informações sobre sistemas de fabricação. Contém número de sequência do sistema de fábrica, código do sistema, descrição do sistema e outras informações relevantes.

14. **tbl_sistema_fabrica_bu**: Está associada à tabela anterior e contém informações sobre unidades de negócios relacionadas a sistemas de fabricação.

15. **tbl_statu_seras_contra**: Mantém detalhes sobre status de séries contratuais, como códigos de status e descrições.

16. **tbl_teste**: Tabela de exemplo ou teste que contém várias colunas com informações sobre entidades, grupos, quantidade de financiamentos, pontos, etc.

17. **tbl_tipo_bem_star_class**: Armazena informações sobre tipos de bens na classificação Star. Inclui códigos de tipo de bem, descrição, observações, situação de registro, data de registro e informações de usuário.

18. **tbl_tipo_documento**: Contém informações sobre tipos de documentos, como código e nome do documento.

19. **tbl_tipo_email_entidade**: Mantém detalhes sobre tipos de e-mail associados a entidades. Inclui código de tipo de e-mail, descrição, situação de registro, data de registro e informações de usuário.

20. **tbl_tipo_entidade**: Armazena informações sobre tipos de entidades, incluindo códigos, descrições, permissão/exclusão automática e informações relacionadas à situação de registro e usuário.

21. **tbl_tipo_entidade_relacionamento**: Relaciona entidades com tipos de entidades e contém informações sobre a situação de registro e o usuário.

22. **tbl_tipo_exposicao_politica**: Contém informações sobre tipos de exposição política, com códigos, descrições, situação de registro, data de registro e informações de usuário.

23. **tbl_tipo_fornecedor**: Mantém detalhes sobre tipos de fornecedores, como códigos, tipos de fornecedores no SAP e informações relacionadas à situação de registro e usuário.

24. **tbl_tipo_logra_bndes**: Armazena informações sobre tipos de logradouro do BNDES, como códigos e descrições.

25. **tbl_tipo_logradouro**: Contém informações sobre tipos de logradouros, com códigos, descrições e informações de situação e usuário.

26. **tbl_tipo_patrimonio**: Armazena informações sobre tipos de patrimônio, com números de patrimônio, descrições e valores.

Essas tabelas formam a base legada ou antiga do banco de dados dtb_corporativo no SQL Server e são utilizadas para armazenar informações relacionadas a diversas entidades, como acesso a aplicativos, relatórios de visitas, fornecedores, tipos de entidades, entre outros.

CREATE  TABLE dtb_corporativo.dbo.tbl_tipo_produto_comerical_linha_bndes ( 
	num_produ_comer      dbo.numero      NOT NULL,
	tip_linha_finan      varchar(20) COLLATE Latin1_General_BIN     NOT NULL,
	cod_progr            dbo.numero      NOT NULL,
	cod_sub_progr        dbo.numero      NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK_tbl_tipo_produto_comerical_linha_bndes PRIMARY KEY  CLUSTERED ( num_produ_comer  asc, tip_linha_finan  asc, cod_progr  asc, cod_sub_progr  asc )  WITH (FILLFACTOR = 100)
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_tipo_relac_contato ( 
	num_tipo_relac       int      NOT NULL,
	nom_tipo_relac       varchar(255) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             char(8) COLLATE Latin1_General_BIN     NOT NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_tipo_veiculo ( 
	tip_veicu            dbo.indicador      NOT NULL,
	des_tipo             varchar(40) COLLATE Latin1_General_BIN     NOT NULL,
	cod_hiera            smallint      NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK__tbl_tipo_veiculo PRIMARY KEY  CLUSTERED ( tip_veicu  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX inx_des_tipo ON dtb_corporativo.dbo.tbl_tipo_veiculo ( des_tipo  asc );
GO

CREATE  NONCLUSTERED INDEX inx_dat_situa_regis ON dtb_corporativo.dbo.tbl_tipo_veiculo ( dat_situa_regis  asc );
GO

CREATE  NONCLUSTERED INDEX inx_ind_situa_regis ON dtb_corporativo.dbo.tbl_tipo_veiculo ( ind_situa_regis  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_tipo_veiculo_fabrica ( 
	cod_tipo_veicu_fabri char(2) COLLATE Latin1_General_BIN     NOT NULL,
	des_tipo_veicu_fabri varchar(30) COLLATE Latin1_General_BIN     NOT NULL,
	cod_estru_objet      dbo.numero      NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	des_tipo_bu          char(3) COLLATE Latin1_General_BIN     NULL,
	des_tipo_bonus       char(10) COLLATE Latin1_General_BIN     NULL,
	des_tipo_bu_fabri    varchar(20) COLLATE Latin1_General_BIN     NULL,
	CONSTRAINT pki_tipo_veiculo_fabrica PRIMARY KEY  CLUSTERED ( cod_tipo_veicu_fabri  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX fki_cod_estru_objet ON dtb_corporativo.dbo.tbl_tipo_veiculo_fabrica ( cod_estru_objet  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_trace_case ( 
	tipo                 varchar(30) COLLATE Latin1_General_BIN     NOT NULL,
	nom_arqui            varchar(50) COLLATE Latin1_General_BIN     NOT NULL,
	des_chave            varchar(max) COLLATE Latin1_General_BIN     NOT NULL,
	dat_proce            dbo.data      NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_uf_regis ( 
	sig_uf               char(2) COLLATE Latin1_General_BIN     NOT NULL,
	nom_link             varchar(300) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	data_situa_regis     datetime      NULL,
	cod_user             char(8) COLLATE Latin1_General_BIN     NOT NULL,
	ind_exige_regis      float      NULL,
	CONSTRAINT PK__tbl_uf_r__EF3F21797614C038 PRIMARY KEY  CLUSTERED ( sig_uf  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_uf_seras_contra ( 
	cod_uf_seras_contra  varchar(2) COLLATE Latin1_General_BIN     NOT NULL,
	uf_seras_contra      varchar(100) COLLATE Latin1_General_BIN     NOT NULL,
	CONSTRAINT PK__tbl_uf_s__2EDC4ED669184EE4 PRIMARY KEY  CLUSTERED ( cod_uf_seras_contra  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_update_gravames ( 
	cod_contr            nvarchar(15) COLLATE Latin1_General_BIN     NULL,
	num_digit_contr      int      NULL,
	num_liber            int      NULL,
	cod_produ            int      NULL,
	cod_imobi            int      NULL,
	chassis              nvarchar(21) COLLATE Latin1_General_BIN     NULL,
	uf                   nvarchar(2) COLLATE Latin1_General_BIN     NULL,
	placa                nvarchar(7) COLLATE Latin1_General_BIN     NULL,
	renavan              nvarchar(11) COLLATE Latin1_General_BIN     NULL,
	ano_fabric           nvarchar(4) COLLATE Latin1_General_BIN     NULL,
	ano_modelo           nvarchar(4) COLLATE Latin1_General_BIN     NULL
 );
GO

CREATE  NONCLUSTERED INDEX inx_update_gravames_contr ON dtb_corporativo.dbo.tbl_update_gravames ( cod_contr  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_validade_parametro_geral ( 
	num_param            dbo.numero      NOT NULL,
	dat_inici_valid      dbo.data      NOT NULL,
	dat_final_valid      dbo.data      NULL,
	des_valor_inici      varchar(200) COLLATE Latin1_General_BIN     NOT NULL,
	des_valor_final      varchar(200) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pkc_valid_param_geral PRIMARY KEY  CLUSTERED ( num_param  asc, dat_inici_valid  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_visao_produto ( 
	cod_visao            char(3) COLLATE Latin1_General_BIN     NOT NULL,
	nom_visao            varchar(20) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_visao_produto_gerencial PRIMARY KEY  CLUSTERED ( cod_visao  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tob_controle_carga_autbank ( 
	num_entid            int      NULL,
	ind_tipo_opera       varchar(1) COLLATE Latin1_General_BIN     NULL,
	ind_situa            varchar(1) COLLATE Latin1_General_BIN DEFAULT 'E'    NULL,
	des_local            varchar(max) COLLATE Latin1_General_BIN     NULL,
	des_erro             varchar(max) COLLATE Latin1_General_BIN     NULL,
	dat_situa_regis      datetime      NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tob_dados_conce_opera ( 
	num_entid_conce      dbo.numero      NULL,
	num_cnpj_conce       varchar(30) COLLATE Latin1_General_BIN     NULL,
	nom_entid_conce      varchar(100) COLLATE Latin1_General_BIN     NULL,
	nom_usual_conce      varchar(100) COLLATE Latin1_General_BIN     NULL,
	tip_cargo            varchar(100) COLLATE Latin1_General_BIN     NULL,
	des_cargo            varchar(100) COLLATE Latin1_General_BIN     NULL,
	num_cpf_opera        varchar(30) COLLATE Latin1_General_BIN     NULL,
	nom_entid_opera      varchar(100) COLLATE Latin1_General_BIN     NULL,
	des_email            varchar(100) COLLATE Latin1_General_BIN     NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tob_enderecos_autbank_backup_20190222 ( 
	CGC_CPF              varchar(15) COLLATE Latin1_General_BIN     NOT NULL,
	SEQUENCIA            varchar(1) COLLATE Latin1_General_BIN     NOT NULL,
	CODENDERECO          varchar(2) COLLATE Latin1_General_BIN     NOT NULL,
	TIPOENDERECO         varchar(12) COLLATE Latin1_General_BIN     NULL,
	ENDERECO             varchar(40) COLLATE Latin1_General_BIN     NOT NULL,
	COMPLEMENTO          varchar(40) COLLATE Latin1_General_BIN     NULL,
	BAIRRO               varchar(20) COLLATE Latin1_General_BIN     NULL,
	CIDADE               varchar(25) COLLATE Latin1_General_BIN     NULL,
	UF                   varchar(2) COLLATE Latin1_General_BIN     NULL,
	CEP                  varchar(8) COLLATE Latin1_General_BIN     NULL,
	TELEFONE             varchar(12) COLLATE Latin1_General_BIN     NULL,
	RAMAL                varchar(4) COLLATE Latin1_General_BIN     NULL,
	FAX                  varchar(12) COLLATE Latin1_General_BIN     NULL,
	CAIXAPOSTAL          varchar(6) COLLATE Latin1_General_BIN     NULL,
	CEPCAIXAPOSTAL       varchar(8) COLLATE Latin1_General_BIN     NULL,
	TELEX                varchar(10) COLLATE Latin1_General_BIN     NULL,
	CORRESPONDENCIA      varchar(3) COLLATE Latin1_General_BIN     NULL,
	FIMENDERECO          varchar(1) COLLATE Latin1_General_BIN     NULL,
	DATAATUALIZACAO      datetime      NULL,
	NOMEUSUARIO          varchar(50) COLLATE Latin1_General_BIN     NULL,
	INDINFORMEREN        varchar(1) COLLATE Latin1_General_BIN     NULL,
	CODPAIS              char(2) COLLATE Latin1_General_BIN     NULL,
	NUMERO               varchar(10) COLLATE Latin1_General_BIN     NULL,
	CODMUNICIPIO         varchar(5) COLLATE Latin1_General_BIN     NULL,
	CELULAR              varchar(12) COLLATE Latin1_General_BIN     NULL,
	TIPORESIDENCIA       varchar(20) COLLATE Latin1_General_BIN     NULL,
	TEMPORESIDENCIA      int      NULL,
	ENDERECO_SEM_NRO     varchar(40) COLLATE Latin1_General_BIN     NULL,
	DDD                  varchar(4) COLLATE Latin1_General_BIN     NULL,
	TELEFONE_SEM_DDD     varchar(12) COLLATE Latin1_General_BIN     NULL,
	METRAGEM             numeric(17,2)      NULL,
	CODLOGRADOURO_BNDES  varchar(2) COLLATE Latin1_General_BIN     NULL,
	LOGRADOURO_BNDES     varchar(55) COLLATE Latin1_General_BIN     NULL,
	DATAINCLUSAO         datetime      NULL,
	USUARIOINCLUSAO      varchar(50) COLLATE Latin1_General_BIN     NULL,
	DDI                  varchar(4) COLLATE Latin1_General_BIN     NULL,
	DDI_CELULAR          varchar(4) COLLATE Latin1_General_BIN     NULL,
	DDD_CELULAR          varchar(4) COLLATE Latin1_General_BIN     NULL,
	DDI_FAX              varchar(4) COLLATE Latin1_General_BIN     NULL,
	DDD_FAX              varchar(4) COLLATE Latin1_General_BIN     NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_assunto_envio_email_sms ( 
	cod_modul            dbo.numero      NOT NULL,
	cod_assun            dbo.numero      NOT NULL,
	des_assun            varchar(2000) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NULL,
	CONSTRAINT pki_assunto_envio_email_sms PRIMARY KEY  CLUSTERED ( cod_modul  asc, cod_assun  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX fki_cod_modul ON dtb_corporativo.dbo.tbl_assunto_envio_email_sms ( cod_modul  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_centro_custo_empresa_sap ( 
	cod_centr_custo      varchar(10) COLLATE Latin1_General_BIN     NOT NULL,
	num_empre_sap        dbo.numero      NOT NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_centro_custo_empresa PRIMARY KEY  CLUSTERED ( cod_centr_custo  asc, num_empre_sap  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_conta_sms ( 
	cod_modul            int      NOT NULL,
	cod_login_sms        varchar(10) COLLATE Latin1_General_BIN     NOT NULL,
	cod_acess_sms        varchar(40) COLLATE Latin1_General_BIN     NOT NULL,
	des_acess_sms        varchar(100) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT prk_conta_sms PRIMARY KEY  CLUSTERED ( cod_modul  asc, cod_login_sms  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX fki_cod_modul ON dtb_corporativo.dbo.tbl_conta_sms ( cod_modul  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_email_template_campos ( 
	id                   int    IDENTITY  NOT NULL,
	id_template          int      NOT NULL,
	nom_campo            nvarchar(50) COLLATE Latin1_General_BIN     NOT NULL,
	val_campo            nvarchar(4000) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK_tbl_email_template_campos PRIMARY KEY  CLUSTERED ( id  asc )  WITH (FILLFACTOR = 100)
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_envio_email_sms ( 
	cod_modul            int      NOT NULL,
	tip_envio            char(3) COLLATE Latin1_General_BIN     NOT NULL,
	num_seque_mensg      dbo.numero    IDENTITY  NOT NULL,
	des_assun            varchar(100) COLLATE Latin1_General_BIN     NULL,
	des_mensg            varchar(max) COLLATE Latin1_General_BIN     NOT NULL,
	des_remet            varchar(100) COLLATE Latin1_General_BIN     NOT NULL,
	des_email_retor      varchar(100) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT prk_envio_email_sms PRIMARY KEY  CLUSTERED ( cod_modul  asc, tip_envio  asc, num_seque_mensg  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  NONCLUSTERED INDEX fki_cod_modul ON dtb_corporativo.dbo.tbl_envio_email_sms ( cod_modul  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_envio_email_sms_seque_mensg ON dtb_corporativo.dbo.tbl_envio_email_sms ( num_seque_mensg  asc ) INCLUDE ([dat_situa_regis]);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_fila_envio_email_sms ( 
	cod_modul            int      NOT NULL,
	tip_envio            char(3) COLLATE Latin1_General_BIN     NOT NULL,
	num_seque_mensg      int      NOT NULL,
	des_desti            varchar(400) COLLATE Latin1_General_BIN     NOT NULL,
	des_desti_copia      varchar(400) COLLATE Latin1_General_BIN     NULL,
	des_desti_copia_ocult varchar(400) COLLATE Latin1_General_BIN     NULL,
	dat_envio            dbo.data      NULL,
	des_tenta_1          varchar(200) COLLATE Latin1_General_BIN     NULL,
	des_tenta_2          varchar(200) COLLATE Latin1_General_BIN     NULL,
	des_tenta_3          varchar(200) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	exc_pasta_anexo      nchar(1) COLLATE Latin1_General_BIN DEFAULT 'S'    NULL,
	CONSTRAINT prk_fila_envio_email_sms PRIMARY KEY  CLUSTERED ( cod_modul  asc, tip_envio  asc, num_seque_mensg  asc, des_desti  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX fki_envio_email_sms ON dtb_corporativo.dbo.tbl_fila_envio_email_sms ( cod_modul  asc, tip_envio  asc, num_seque_mensg  asc );
GO

CREATE  NONCLUSTERED INDEX DBA_envioemail_01 ON dtb_corporativo.dbo.tbl_fila_envio_email_sms ( dat_envio  asc, des_tenta_1  asc, ind_situa_regis  asc ) INCLUDE ([cod_modul],  [tip_envio],  [num_seque_mensg],  [des_desti],  [des_desti_copia],  [des_desti_copia_ocult],  [des_tenta_2],  [des_tenta_3],  [dat_situa_regis],  [exc_pasta_anexo]);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_forne_tipo_segur ( 
	cod_forne_segur      int    IDENTITY  NOT NULL,
	num_entid            dbo.numero      NOT NULL,
	tip_segur            char(3) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_forne_tip_segur PRIMARY KEY  CLUSTERED ( num_entid  asc, tip_segur  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_interface_controle_inclusao ( 
	cod_inter_ctrle_inclu int    IDENTITY  NOT NULL,
	cod_modul            int      NOT NULL,
	chave_modul          varchar(50) COLLATE Latin1_General_BIN     NOT NULL,
	dat_envio            dbo.data      NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NULL,
	CONSTRAINT prk_interface_controle_inclusao PRIMARY KEY  CLUSTERED ( cod_inter_ctrle_inclu  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  NONCLUSTERED INDEX inx_interface_controle_inclusao_chave_modul ON dtb_corporativo.dbo.tbl_interface_controle_inclusao ( chave_modul  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_interface_controle_inconsiste ( 
	cod_inter_ctrle_incon bigint    IDENTITY  NOT NULL,
	cod_inter_ctrle      bigint      NOT NULL,
	cod_modul            int      NOT NULL,
	chave_modul          varchar(50) COLLATE Latin1_General_BIN     NOT NULL,
	nom_arqui_saida      varchar(50) COLLATE Latin1_General_BIN     NULL,
	dat_tenta_envio      dbo.data      NOT NULL,
	des_mensa_tenta_envio varchar(max) COLLATE Latin1_General_BIN     NULL,
	ind_statu_proce      dbo.indicador      NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NULL,
	CONSTRAINT prk_interface_controle_inconsiste PRIMARY KEY  CLUSTERED ( cod_inter_ctrle_incon  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_interface_modulo ( 
	cod_inter_modul      int      NOT NULL,
	cod_modul            int      NULL,
	des_nome_arqui_saida varchar(70) COLLATE Latin1_General_BIN     NULL,
	tip_arqui_saida      varchar(10) COLLATE Latin1_General_BIN     NULL,
	cod_exter_servi      varchar(50) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NULL,
	CONSTRAINT pk_interface_modulo PRIMARY KEY  CLUSTERED ( cod_inter_modul  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_interface_modulo_parametro ( 
	cod_inter_modul      int      NOT NULL,
	num_produ            dbo.numero      NULL,
	des_nome_arqui_saida varchar(70) COLLATE Latin1_General_BIN     NOT NULL,
	tip_arqui_saida      varchar(10) COLLATE Latin1_General_BIN     NOT NULL,
	cod_exter_servi      varchar(50) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NULL,
	CONSTRAINT unq_modul_produ UNIQUE ( cod_inter_modul  asc, num_produ  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_overline_entidade ( 
	num_over_entid       int    IDENTITY  NOT NULL,
	num_over_propo       int      NULL,
	num_entid            int      NULL,
	cod_cota             varchar(3) COLLATE Latin1_General_BIN     NULL,
	val_over_line        dbo.valor      NULL,
	des_compa_over_line  dbo.indicador      NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK__tbl_over__CFA9CDA6456E3F35 PRIMARY KEY  CLUSTERED ( num_over_entid  asc ) 
 );
GO

Essas são as declarações SQL que criam várias tabelas em um banco de dados chamado "dtb_corporativo" no SQL Server. Vou explicar o entendimento do negócio para cada tabela em Português:

1. **tbl_tipo_produto_comerical_linha_bndes**:
   - Esta tabela representa os tipos de produtos comerciais associados à linha BNDES (Banco Nacional de Desenvolvimento Econômico e Social).
   - Cada produto comercial é identificado por um número (num_produ_comer) e está vinculado a uma linha de financiamento (tip_linha_finan), programa (cod_progr) e subprograma (cod_sub_progr).
   - A coluna ind_situa_regis contém um indicador para representar o status do registro, e dat_situa_regis indica a data em que o registro foi atualizado.
   - O cod_user é o código do usuário que realizou a atualização.

2. **tbl_tipo_relac_contato**:
   - Essa tabela armazena os tipos de relacionamento de contato.
   - Cada tipo de relacionamento é identificado por um número (num_tipo_relac) e possui um nome (nom_tipo_relac).
   - A coluna ind_situa_regis é um indicador que representa o status do registro, e dat_situa_regis indica a data da atualização.
   - O cod_user é o código do usuário que realizou a atualização.

3. **tbl_tipo_veiculo**:
   - Essa tabela armazena os tipos de veículos.
   - Cada tipo de veículo é identificado por um indicador (tip_veicu) e possui uma descrição (des_tipo).
   - A coluna cod_hiera contém um número que representa a hierarquia do veículo.
   - A coluna ind_situa_regis é um indicador que representa o status do registro, e dat_situa_regis indica a data da atualização.
   - O cod_user é o código do usuário que realizou a atualização.
   - Existem índices não agrupados para otimizar as consultas nas colunas des_tipo, dat_situa_regis e ind_situa_regis.

4. **tbl_tipo_veiculo_fabrica**:
   - Nessa tabela são armazenados os tipos de veículos de fábrica.
   - Cada tipo de veículo de fábrica é identificado por um código (cod_tipo_veicu_fabri) e possui uma descrição (des_tipo_veicu_fabri).
   - A tabela também contém informações adicionais, como cod_estru_objet, des_tipo_bu, des_tipo_bonus e des_tipo_bu_fabri.
   - A coluna ind_situa_regis é um indicador que representa o status do registro, e dat_situa_regis indica a data da atualização.
   - O cod_user é o código do usuário que realizou a atualização.
   - Há um índice não agrupado para otimizar consultas na coluna cod_estru_objet.

5. **tbl_trace_case**:
   - Essa tabela é utilizada para rastrear casos.
   - Cada caso é identificado por um tipo (tipo) e possui informações como nom_arqui (nome do arquivo), des_chave (chave do caso), dat_proce (data do processo) e cod_user (código do usuário).
   - A coluna ind_situa_regis é um indicador que representa o status do registro, e dat_situa_regis indica a data da atualização.

6. **tbl_uf_regis**:
   - Essa tabela armazena informações sobre as unidades federativas (UF) e seus registros.
   - Cada UF é identificada por sua sigla (sig_uf).
   - A tabela possui informações como nom_link (nome do link), ind_situa_regis (indicador de situação do registro) e data_situa_regis (data da situação do registro).
   - O cod_user é o código do usuário que realizou a atualização.

7. **tbl_uf_seras_contra**:
   - Nesta tabela são armazenadas as UFs que estão contra alguma coisa.
   - Cada UF contra algo é identificada por um código (cod_uf_seras_contra) e possui um nome (uf_seras_contra).
   - A coluna cod_uf_seras_contra é a chave primária da tabela.

8. **tbl_update_gravames**:
   - Essa tabela armazena informações sobre gravames (ônus) que foram atualizados.
   - As informações incluem campos como cod_contr, num_digit_contr, num_liber, cod_produ, cod_imobi, chassis, uf, placa, renavan, ano_fabric e ano_modelo.

9. **tbl_validade_parametro_geral**:
   - Esta tabela é utilizada para armazenar parâmetros gerais com validade.
   - Cada parâmetro é identificado por um número (num_param) e possui valores de início (dat_inici_valid) e, opcionalmente, valores de fim (dat_final_valid).
   - As colunas des_valor_inici e des_valor_final contêm os valores correspondentes para os parâmetros.
   - A coluna ind_situa_regis é um indicador que representa o status do registro, e dat_situa_regis indica a data da atualização.
   - O cod_user é o código do usuário que realizou a atualização.
   - A chave primária da tabela é composta pelo num_param e dat_inici_valid.

10. **tbl_visao_produto**:
    - Essa tabela representa visões (vistas) de produtos gerenciais.
    - Cada visão é identificada por um código (cod_visao) e possui um nome (nom_visao).
    - A coluna ind_situa_regis é um indicador que representa o status do registro, e dat_situa_regis indica a data da atualização.
    - O cod_user é o código do usuário que realizou a atualização.

Essas são as principais informações sobre cada tabela. Cada tabela possui colunas específicas para armazenar dados relevantes ao seu propósito no banco de dados.

CREATE  NONCLUSTERED INDEX inx_overline_entidade_over_propo ON dtb_corporativo.dbo.tbl_overline_entidade ( num_over_propo  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_parametrizacao_email_sms ( 
	cod_modul            dbo.numero      NOT NULL,
	cod_assun            dbo.numero      NOT NULL,
	tip_envio            char(3) COLLATE Latin1_General_BIN     NOT NULL,
	ind_anexo            dbo.indicador      NOT NULL,
	nom_anexo            varchar(50) COLLATE Latin1_General_BIN     NULL,
	des_camin_anexo      varchar(50) COLLATE Latin1_General_BIN     NULL,
	des_regra_desti      varchar(2000) COLLATE Latin1_General_BIN     NOT NULL,
	des_regra_mensg      nvarchar(max) COLLATE Latin1_General_BIN     NULL,
	des_remet            varchar(100) COLLATE Latin1_General_BIN     NOT NULL,
	des_email_retor      varchar(100) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NULL,
	CONSTRAINT pki_parametrizacao_email_sms PRIMARY KEY  CLUSTERED ( cod_modul  asc, cod_assun  asc, tip_envio  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX fki_assun_envio_email_sms ON dtb_corporativo.dbo.tbl_parametrizacao_email_sms ( cod_modul  asc, cod_assun  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_pontuacao_star_class ( 
	num_pontu_star       dbo.numero    IDENTITY  NOT NULL,
	pcl_faixa_inici      dbo.porcentagem      NOT NULL,
	pcl_faixa_final      dbo.porcentagem      NOT NULL,
	qtd_ponto            dbo.quantidade      NOT NULL,
	dat_valid_inici      dbo.data      NOT NULL,
	dat_valid_final      dbo.data      NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	cod_tipo_bem_star_class dbo.numero      NULL,
	CONSTRAINT pki_pontuacao_star_class PRIMARY KEY  CLUSTERED ( num_pontu_star  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_produto ( 
	num_produ            dbo.numero      NOT NULL,
	nom_produ            varchar(60) COLLATE Latin1_General_BIN     NOT NULL,
	nom_abrev_produ      varchar(10) COLLATE Latin1_General_BIN     NOT NULL,
	ind_debit_autom      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	num_produ_geren      dbo.numero      NOT NULL,
	num_entid_empre      dbo.numero      NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	cod_produ_sap        varchar(5) COLLATE Latin1_General_BIN     NULL,
	CONSTRAINT PK__tbl_produto__28D80438 PRIMARY KEY  CLUSTERED ( num_produ  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX inx_nom_abrev_produ ON dtb_corporativo.dbo.tbl_produto ( nom_abrev_produ  asc );
GO

CREATE  NONCLUSTERED INDEX inx_dat_situa_regis ON dtb_corporativo.dbo.tbl_produto ( dat_situa_regis  asc );
GO

CREATE  NONCLUSTERED INDEX inx_ind_situa_regis ON dtb_corporativo.dbo.tbl_produto ( ind_situa_regis  asc );
GO

CREATE  NONCLUSTERED INDEX fki_num_produ_geren ON dtb_corporativo.dbo.tbl_produto ( num_produ_geren  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_referencia_tipo_logradouro_bndes ( 
	cod_tipo_logra       varchar(15) COLLATE Latin1_General_BIN     NOT NULL,
	num_tipo_logra_bndes dbo.numero      NOT NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pk_refer_tipo_logra_bndes PRIMARY KEY  CLUSTERED ( cod_tipo_logra  asc, num_tipo_logra_bndes  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_relac_produto_estrutura_objeto ( 
	cod_estru_objet      dbo.numero      NOT NULL,
	num_produ            dbo.numero      NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_relac_produto_estrutura_objeto PRIMARY KEY  CLUSTERED ( cod_estru_objet  asc, num_produ  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX fki_cod_estru_objet ON dtb_corporativo.dbo.tbl_relac_produto_estrutura_objeto ( cod_estru_objet  asc );
GO

CREATE  NONCLUSTERED INDEX fki_num_produ ON dtb_corporativo.dbo.tbl_relac_produto_estrutura_objeto ( num_produ  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_seguro_bem_star_class ( 
	cod_seguro_bem_star_class dbo.numero    IDENTITY  NOT NULL,
	cod_tipo_bem_star_class dbo.numero      NOT NULL,
	qtd_seguro_eq_financiamento dbo.numero      NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK__tbl_seguro_bem_s__7982BADB PRIMARY KEY  CLUSTERED ( cod_seguro_bem_star_class  asc )  WITH (FILLFACTOR = 100)
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_seras_contra ( 
	cod_seras_contra     int    IDENTITY  NOT NULL,
	cod_contr            varchar(17) COLLATE Latin1_General_BIN     NOT NULL,
	nm_chassis           varchar(25) COLLATE Latin1_General_BIN     NOT NULL,
	cod_statu_seras_contra int      NOT NULL,
	json_input           varchar(max) COLLATE Latin1_General_BIN     NULL,
	json_output          varchar(max) COLLATE Latin1_General_BIN     NULL,
	servi_retur_code     varchar(150) COLLATE Latin1_General_BIN     NULL,
	data_inser           datetime  DEFAULT getdate()    NOT NULL,
	CONSTRAINT PK__tbl_sera__1C980833B672E14F PRIMARY KEY  CLUSTERED ( cod_seras_contra  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_tipo_bem ( 
	cod_bem              dbo.numero      NOT NULL,
	des_bem              varchar(50) COLLATE Latin1_General_BIN     NOT NULL,
	des_grupo            varchar(10) COLLATE Latin1_General_BIN     NOT NULL,
	des_categ            varchar(10) COLLATE Latin1_General_BIN     NOT NULL,
	des_subca            varchar(10) COLLATE Latin1_General_BIN     NOT NULL,
	des_item             varchar(10) COLLATE Latin1_General_BIN     NOT NULL,
	des_subit            varchar(10) COLLATE Latin1_General_BIN     NOT NULL,
	des_marca            varchar(15) COLLATE Latin1_General_BIN     NULL,
	des_model            varchar(15) COLLATE Latin1_General_BIN     NULL,
	des_gener            varchar(15) COLLATE Latin1_General_BIN     NOT NULL,
	tip_veicu            dbo.indicador      NULL,
	ind_autom            char(1) COLLATE Latin1_General_BIN     NOT NULL,
	tip_class            dbo.indicador      NULL,
	cod_bem_super        int      NULL,
	cod_class_delin      varchar(8) COLLATE Latin1_General_BIN     NOT NULL,
	cod_class_delin_portf varchar(8) COLLATE Latin1_General_BIN     NULL,
	cod_class_gbf        int      NULL,
	qtd_vida_util        int      NULL,
	qtd_vida_util_acele  int      NULL,
	ind_regis_gravm      char(1) COLLATE Latin1_General_BIN     NULL,
	cod_estru_objet      int      NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK__tbl_tipo_bem PRIMARY KEY  CLUSTERED ( cod_bem  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX inx_veicu ON dtb_corporativo.dbo.tbl_tipo_bem ( tip_veicu  asc );
GO

CREATE  NONCLUSTERED INDEX inx_autom ON dtb_corporativo.dbo.tbl_tipo_bem ( ind_autom  asc );
GO

CREATE  NONCLUSTERED INDEX inx_class_delin ON dtb_corporativo.dbo.tbl_tipo_bem ( cod_class_delin  asc );
GO

CREATE  NONCLUSTERED INDEX inx_des_item ON dtb_corporativo.dbo.tbl_tipo_bem ( des_item  asc );
GO

CREATE  NONCLUSTERED INDEX inx_tbl_tipo_bem_des_grupo ON dtb_corporativo.dbo.tbl_tipo_bem ( des_grupo  asc ) WITH (FILLFACTOR = 100);
GO

CREATE  NONCLUSTERED INDEX inx_tbl_tipo_bem_des_subca ON dtb_corporativo.dbo.tbl_tipo_bem ( des_subca  asc ) WITH (FILLFACTOR = 100);
GO

CREATE  NONCLUSTERED INDEX inx_tbl_tipo_bem_des_subit ON dtb_corporativo.dbo.tbl_tipo_bem ( des_subit  asc ) WITH (FILLFACTOR = 100);
GO

CREATE  NONCLUSTERED INDEX inx_tbl_tipo_bem_des_categ ON dtb_corporativo.dbo.tbl_tipo_bem ( des_categ  asc ) WITH (FILLFACTOR = 100);
GO

CREATE  NONCLUSTERED INDEX inx_cod_class_delin_portf ON dtb_corporativo.dbo.tbl_tipo_bem ( cod_class_delin_portf  asc );
GO

CREATE  NONCLUSTERED INDEX inx_cod_bem_super ON dtb_corporativo.dbo.tbl_tipo_bem ( cod_bem_super  asc );
GO

CREATE  NONCLUSTERED INDEX inx_des_marca ON dtb_corporativo.dbo.tbl_tipo_bem ( des_marca  asc );
GO

CREATE  NONCLUSTERED INDEX inx_des_model ON dtb_corporativo.dbo.tbl_tipo_bem ( des_model  asc );
GO

CREATE  NONCLUSTERED INDEX inx_dat_situa_regis ON dtb_corporativo.dbo.tbl_tipo_bem ( dat_situa_regis  asc );
GO

CREATE  NONCLUSTERED INDEX inx_ind_situa_regis ON dtb_corporativo.dbo.tbl_tipo_bem ( ind_situa_regis  asc );
GO

CREATE  NONCLUSTERED INDEX fki_cod_estru_objet ON dtb_corporativo.dbo.tbl_tipo_bem ( cod_estru_objet  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_anexo_email ( 
	cod_modul            int      NOT NULL,
	tip_envio            char(3) COLLATE Latin1_General_BIN     NOT NULL,
	num_seque_mensg      int      NOT NULL,
	num_seque_anexo      dbo.numero    IDENTITY  NOT NULL,
	des_orige_anexo      nvarchar(100) COLLATE Latin1_General_BIN     NOT NULL,
	nom_arqui            nvarchar(255) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_anexo_email PRIMARY KEY  CLUSTERED ( cod_modul  asc, tip_envio  asc, num_seque_mensg  asc, num_seque_anexo  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX fki_anexo_email ON dtb_corporativo.dbo.tbl_anexo_email ( cod_modul  asc, tip_envio  asc, num_seque_mensg  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_detalhe_bem ( 
	cod_model_bem        varchar(10) COLLATE Latin1_General_BIN     NOT NULL,
	tip_combu_bem        char(2) COLLATE Latin1_General_BIN     NOT NULL,
	num_ano_bem          varchar(7) COLLATE Latin1_General_BIN     NOT NULL,
	ind_forma_cadas      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	cod_tipo_veicu       varchar(4) COLLATE Latin1_General_BIN     NULL,
	num_gabar_molic_model int      NULL,
	num_gabar_molic_passa int      NULL,
	num_gabar_molic_carga int      NULL,
	cod_marca_bem        char(3) COLLATE Latin1_General_BIN     NULL,
	des_model_bem        varchar(50) COLLATE Latin1_General_BIN     NULL,
	val_bem              float      NULL,
	cod_bem_novo         int      NULL,
	cod_bem_usado        int      NULL,
	cod_estru_objet      int      NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             char(8) COLLATE Latin1_General_BIN     NOT NULL,
	CONSTRAINT pki_detalhe_bem PRIMARY KEY  CLUSTERED ( cod_model_bem  asc, tip_combu_bem  asc, num_ano_bem  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  NONCLUSTERED INDEX fki_cod_bem_usado ON dtb_corporativo.dbo.tbl_detalhe_bem ( cod_bem_usado  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX fki_cod_marca_bem ON dtb_corporativo.dbo.tbl_detalhe_bem ( cod_marca_bem  asc, val_bem  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX fki_cod_estru_objet ON dtb_corporativo.dbo.tbl_detalhe_bem ( cod_estru_objet  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX fki_cod_bem_novo ON dtb_corporativo.dbo.tbl_detalhe_bem ( cod_bem_novo  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX aki_ler_ano_marca_model ON dtb_corporativo.dbo.tbl_detalhe_bem ( cod_estru_objet  asc, val_bem  asc, num_ano_bem  asc, cod_marca_bem  asc, cod_model_bem  asc, des_model_bem  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX idx_detalhe_bem_marca_bem_bem ON dtb_corporativo.dbo.tbl_detalhe_bem ( cod_marca_bem  asc, val_bem  asc ) INCLUDE ([cod_model_bem],  [des_model_bem],  [cod_estru_objet]) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX idx_detalhe_bem_ano_bem_marca_bem_model_bem ON dtb_corporativo.dbo.tbl_detalhe_bem ( num_ano_bem  asc, cod_marca_bem  asc, des_model_bem  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_detalhe_bem_ano_forma_situa_val ON dtb_corporativo.dbo.tbl_detalhe_bem ( num_ano_bem  asc, ind_forma_cadas  asc, ind_situa_regis  asc, val_bem  asc ) INCLUDE ([cod_model_bem],  [des_model_bem]) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_detalhe_bem_situa_regis_bem ON dtb_corporativo.dbo.tbl_detalhe_bem ( ind_situa_regis  asc, val_bem  asc ) INCLUDE ([cod_model_bem],  [cod_marca_bem],  [des_model_bem]) WITH (FILLFACTOR = 98);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_interface_controle_dados ( 
	cod_inter_ctrle_dados bigint    IDENTITY  NOT NULL,
	des_chave            varchar(17) COLLATE Latin1_General_BIN     NOT NULL,
	cod_inter_modul      int      NULL,
	cod_inter_ctrle      bigint      NULL,
	ind_statu_proce      dbo.indicador      NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NULL,
	CONSTRAINT PK__tbl_inte__02D151311A799A52 PRIMARY KEY  CLUSTERED ( cod_inter_ctrle_dados  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  NONCLUSTERED INDEX ik_cod_inter_ctrle ON dtb_corporativo.dbo.tbl_interface_controle_dados ( cod_inter_ctrle  asc, des_chave  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX ik_des_chave ON dtb_corporativo.dbo.tbl_interface_controle_dados ( des_chave  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_interface_controle_dados_statu_proce ON dtb_corporativo.dbo.tbl_interface_controle_dados ( ind_statu_proce  asc ) INCLUDE ([cod_inter_ctrle_dados],  [des_chave],  [cod_inter_modul],  [cod_inter_ctrle],  [ind_situa_regis],  [dat_situa_regis],  [cod_user]);
GO

CREATE  NONCLUSTERED INDEX inx_interface_controle_dados_inter_ctrle ON dtb_corporativo.dbo.tbl_interface_controle_dados ( cod_inter_ctrle  asc ) INCLUDE ([des_chave],  [cod_inter_modul]);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_interface_dicionario_retorno ( 
	cod_retor            int      NOT NULL,
	des_retor_en         varchar(100) COLLATE Latin1_General_BIN     NOT NULL,
	des_retor_pt         varchar(100) COLLATE Latin1_General_BIN     NOT NULL,
	cod_inter_modul      int      NOT NULL,
	ind_cod_retor_suces  char(1) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pk_interface_dicionario_retorno PRIMARY KEY  CLUSTERED ( cod_retor  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX inx_interface_dicionario_retorno_retor_cod_retor_suces ON dtb_corporativo.dbo.tbl_interface_dicionario_retorno ( cod_retor  asc, ind_cod_retor_suces  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_interface_controle_retorno ( 
	cod_inter_ctrle      bigint      NOT NULL,
	cod_retor            int      NOT NULL,
	dat_proce_arqui      datetime      NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL
 );
GO

CREATE  NONCLUSTERED INDEX ik_cod_inter_ctrle ON dtb_corporativo.dbo.tbl_interface_controle_retorno ( cod_inter_ctrle  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX ik_cod_retor ON dtb_corporativo.dbo.tbl_interface_controle_retorno ( cod_retor  asc ) INCLUDE ([cod_inter_ctrle]) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_interface_controle_retorno_inter_ctrle_retor ON dtb_corporativo.dbo.tbl_interface_controle_retorno ( cod_inter_ctrle  asc, cod_retor  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_cobertura_coface ( 
	num_entid_conce      dbo.numero      NOT NULL,
	val_cober_cofac      dbo.valor      NULL,
	dat_consu_cofac      dbo.data      NULL,
	tip_categ_risco      char(2) COLLATE Latin1_General_BIN     NULL,
	ind_cober_cofac      dbo.indicador      NULL,
	dat_penhr_merct      dbo.data      NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT XPKtbl_cobertura_coface PRIMARY KEY  CLUSTERED ( num_entid_conce  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_cobertura_detalhe_penhor_mercantil ( 
	num_entid_conce      dbo.numero      NOT NULL,
	cod_penhr_merct      dbo.numero      NOT NULL,
	num_produ            dbo.numero      NOT NULL,
	vlr_penhr_merct_produ dbo.valor      NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT XPKtbl_cobertura_detalhe_penhor_mercantil PRIMARY KEY  CLUSTERED ( num_entid_conce  asc, cod_penhr_merct  asc, num_produ  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX pki_cobertura_detalhe_penhor_mercantil ON dtb_corporativo.dbo.tbl_cobertura_detalhe_penhor_mercantil ( num_entid_conce  asc, cod_penhr_merct  asc );
GO

CREATE  NONCLUSTERED INDEX pki_cober_detalhe_penhor_mercantil ON dtb_corporativo.dbo.tbl_cobertura_detalhe_penhor_mercantil ( num_produ  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_cobertura_penhor_mercantil ( 
	num_entid_conce      dbo.numero      NOT NULL,
	cod_penhr_merct      dbo.numero      NOT NULL,
	dat_penhr_merct      dbo.data      NULL,
	vlr_penhr_merct      dbo.valor      NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT XPKtbl_cobertura_penhor_mercantil PRIMARY KEY  CLUSTERED ( num_entid_conce  asc, cod_penhr_merct  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX pki_tbl_cobertura_penhor_mercantil ON dtb_corporativo.dbo.tbl_cobertura_penhor_mercantil ( num_entid_conce  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_cobertura_seguro ( 
	num_entid_conce      dbo.numero      NOT NULL,
	dat_venc_segur       dbo.data      NULL,
	val_tot_cober        dbo.valor      NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	nom_segur            varchar(200) COLLATE Latin1_General_BIN     NULL,
	CONSTRAINT XPKtbl_cobertura_seguro PRIMARY KEY  CLUSTERED ( num_entid_conce  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_conce_rodocohn ( 
	num_entid_conce      dbo.numero      NOT NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_conce_rodocohn PRIMARY KEY  CLUSTERED ( num_entid_conce  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_concessionaria ( 
	num_entid_conce      dbo.numero      NOT NULL,
	cod_porte            char(1) COLLATE Latin1_General_BIN     NULL,
	cod_porte_fabri      char(1) COLLATE Latin1_General_BIN     NULL,
	num_conce_fabri      varchar(8) COLLATE Latin1_General_BIN     NULL,
	nom_conce_fabri      varchar(40) COLLATE Latin1_General_BIN     NULL,
	val_comis_conce      dbo.valor      NOT NULL,
	pcl_penet            dbo.porcentagem      NOT NULL,
	qtd_bens_fatur       dbo.numero      NOT NULL,
	qtd_bens_vendi       dbo.numero      NOT NULL,
	dat_contr_floor      dbo.data      NULL,
	val_maxim_cober_segur dbo.valor      NOT NULL,
	ind_pos              dbo.indicador      NOT NULL,
	nom_grupo_fabri      varchar(60) COLLATE Latin1_General_BIN     NULL,
	ind_optan_adian      dbo.indicador      NOT NULL,
	num_entid_anali_whole dbo.numero      NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	ind_cadas_prefe      dbo.indicador  DEFAULT 'N'    NOT NULL,
	ind_carta_acord_assin_banco dbo.indicador  DEFAULT 'N'    NOT NULL,
	ind_carta_acord_assin_corre dbo.indicador  DEFAULT 'N'    NOT NULL,
	num_conce_fabri_cbfc varchar(8) COLLATE Latin1_General_BIN     NULL,
	ind_desem_zero       dbo.indicador  DEFAULT 'N'    NOT NULL,
	ind_campa_incen      dbo.indicador  DEFAULT 'N'    NOT NULL,
	num_conce_tipo       int      NULL,
	CONSTRAINT pki_concessionaria PRIMARY KEY  CLUSTERED ( num_entid_conce  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_concessionaria_floorplan ( 
	num_entid_conce      dbo.numero      NOT NULL,
	num_produ            dbo.numero      NOT NULL,
	dat_contr_floor      dbo.data      NULL,
	val_maxim_cober_segur dbo.valor      NULL,
	pcl_limit_dispo      dbo.porcentagem      NOT NULL,
	pcl_sprea            dbo.porcentagem      NOT NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	num_prazo_venci_floor dbo.numero  DEFAULT 90    NOT NULL,
	ind_permi_overl      dbo.indicador  DEFAULT 'S'    NULL,
	ind_produ_padra      dbo.indicador  DEFAULT 'N'    NULL,
	num_ccb              int  DEFAULT 0    NOT NULL,
	CONSTRAINT pki_concessionaria_floorplan PRIMARY KEY  CLUSTERED ( num_entid_conce  asc, num_produ  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX fki_num_entid_conce ON dtb_corporativo.dbo.tbl_concessionaria_floorplan ( num_entid_conce  asc );
GO

CREATE  NONCLUSTERED INDEX fki_num_produ ON dtb_corporativo.dbo.tbl_concessionaria_floorplan ( num_produ  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_controle_acesso_concessionaria ( 
	num_entid_conce      dbo.numero      NOT NULL,
	num_entid            dbo.numero      NOT NULL,
	cod_login            dbo.coduser      NOT NULL,
	tip_aplic            char(3) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_controle_acesso_concessionaria PRIMARY KEY  CLUSTERED ( num_entid_conce  asc, num_entid  asc, cod_login  asc, tip_aplic  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  NONCLUSTERED INDEX fki_num_entid_conce ON dtb_corporativo.dbo.tbl_controle_acesso_concessionaria ( num_entid_conce  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX fki_num_entid ON dtb_corporativo.dbo.tbl_controle_acesso_concessionaria ( num_entid  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_controle_acesso_concessionaria_aplic ON dtb_corporativo.dbo.tbl_controle_acesso_concessionaria ( tip_aplic  asc ) INCLUDE ([num_entid_conce],  [num_entid],  [cod_login]) WITH (FILLFACTOR = 98);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_controle_acesso_entidade_concessionaria ( 
	num_entid_conce      dbo.numero      NOT NULL,
	num_entid_funci      dbo.numero      NOT NULL,
	cod_login            dbo.coduser      NOT NULL,
	tip_aplic            char(3) COLLATE Latin1_General_BIN     NOT NULL,
	ind_funci_conce      dbo.indicador      NOT NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK__tbl_controle_acesso_entidade_concessionaria PRIMARY KEY  CLUSTERED ( num_entid_conce  asc, num_entid_funci  asc, cod_login  asc, tip_aplic  asc, ind_funci_conce  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  NONCLUSTERED INDEX inx_controle_acesso_entidade_concessionaria_aplic_situa_regis ON dtb_corporativo.dbo.tbl_controle_acesso_entidade_concessionaria ( tip_aplic  asc, ind_situa_regis  asc ) INCLUDE ([num_entid_conce],  [cod_login]) WITH (FILLFACTOR = 98);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_declaracao_exposicao_politica ( 
	num_entid            dbo.numero      NOT NULL,
	num_tipo_expos       dbo.numero      NOT NULL,
	des_funca_exerc      varchar(60) COLLATE Latin1_General_BIN     NULL,
	des_grau_paren       varchar(60) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_decla_expos_polit PRIMARY KEY  CLUSTERED ( num_entid  asc, num_tipo_expos  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  NONCLUSTERED INDEX pki_decla_expos_polit_entid ON dtb_corporativo.dbo.tbl_declaracao_exposicao_politica ( num_entid  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX fki_decla_expos_polit_tipo_espos ON dtb_corporativo.dbo.tbl_declaracao_exposicao_politica ( num_tipo_expos  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_email_conce_rodocohn ( 
	num_entid_conce      dbo.numero      NOT NULL,
	num_seque_email      dbo.numero    IDENTITY  NOT NULL,
	des_email_respo      varchar(100) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_conce_rodocohn_email_conce_rodocohn PRIMARY KEY  CLUSTERED ( num_entid_conce  asc, num_seque_email  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX fkc_num_entid_conce ON dtb_corporativo.dbo.tbl_email_conce_rodocohn ( num_entid_conce  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_empresa ( 
	num_entid            dbo.numero      NOT NULL,
	nom_abrev_empre      varchar(30) COLLATE Latin1_General_BIN     NOT NULL,
	cod_chave_emiss_bolet char(16) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	num_empre_sap        dbo.numero      NULL,
	CONSTRAINT pki_empresa PRIMARY KEY  CLUSTERED ( num_entid  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_empresa_coligada ( 
	num_entid            dbo.numero      NOT NULL,
	num_empre            dbo.numero      NOT NULL,
	nom_parti            varchar(60) COLLATE Latin1_General_BIN     NOT NULL,
	des_razao_socia      varchar(60) COLLATE Latin1_General_BIN     NOT NULL,
	num_cnpj             varchar(14) COLLATE Latin1_General_BIN     NOT NULL,
	pcl_capit_votan      dbo.porcentagem      NOT NULL,
	pcl_capit_total      dbo.porcentagem      NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_empresa_coligada PRIMARY KEY  CLUSTERED ( num_entid  asc, num_empre  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  NONCLUSTERED INDEX fki_num_entid ON dtb_corporativo.dbo.tbl_empresa_coligada ( num_entid  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_empresa_coligada_cnpj ON dtb_corporativo.dbo.tbl_empresa_coligada ( num_cnpj  asc );
GO

Esse script SQL contém uma série de comandos para criar tabelas e índices em um banco de dados denominado "dtb_corporativo" no SQL Server. A seguir, irei fornecer uma explicação do que cada comando faz em termos de entendimento do negócio:

1. `CREATE NONCLUSTERED INDEX inx_overline_entidade_over_propo ON dtb_corporativo.dbo.tbl_overline_entidade (num_over_propo asc);`
   Cria um índice não clusterizado na tabela "tbl_overline_entidade" para a coluna "num_over_propo" em ordem ascendente.

2. `CREATE TABLE dtb_corporativo.dbo.tbl_parametrizacao_email_sms (...)`
   Cria uma tabela chamada "tbl_parametrizacao_email_sms" com várias colunas que armazenam configurações relacionadas ao envio de e-mails e SMS.

3. `CREATE NONCLUSTERED INDEX fki_assun_envio_email_sms ON dtb_corporativo.dbo.tbl_parametrizacao_email_sms (cod_modul asc, cod_assun asc);`
   Cria um índice não clusterizado na tabela "tbl_parametrizacao_email_sms" para as colunas "cod_modul" e "cod_assun" em ordem ascendente.

4. Outros comandos semelhantes criam outras tabelas e índices com seus respectivos campos e configurações específicas.

5. Cada tabela possui uma coluna chamada "ind_situa_regis" que parece indicar o status ou situação do registro na tabela (por exemplo, ativo, inativo).

6. Há várias colunas com tipos de dados específicos, como "numero", "char", "varchar", "datetime", "indicador", etc., que são usados para armazenar diferentes tipos de informações no banco de dados.

Esses comandos fazem parte de um script de criação de um banco de dados ou de adição de tabelas e índices a um banco de dados existente. Cada tabela e índice possui seus campos e configurações específicos para atender às necessidades do sistema ou aplicativo que utiliza esse banco de dados. O script foi organizado de maneira sequencial, com a criação das tabelas primeiro, seguido pela criação dos índices para otimização de consultas. Cada tabela possui uma chave primária (PK) que é usada para identificar exclusivamente cada registro na tabela. Além disso, existem índices não clusterizados para melhorar o desempenho das consultas em determinadas colunas.

CREATE  TABLE dtb_corporativo.dbo.tbl_endereco ( 
	num_entid            dbo.numero      NOT NULL,
	num_seque_ender      dbo.numero      NOT NULL,
	tip_ender            char(2) COLLATE Latin1_General_BIN     NOT NULL,
	ind_estat            dbo.indicador      NOT NULL,
	cod_tipo_logra       varchar(15) COLLATE Latin1_General_BIN     NULL,
	des_logra            varchar(60) COLLATE Latin1_General_BIN     NOT NULL,
	num_logra            varchar(10) COLLATE Latin1_General_BIN     NULL,
	des_compl_logra      varchar(30) COLLATE Latin1_General_BIN     NULL,
	des_bairr            varchar(50) COLLATE Latin1_General_BIN     NULL,
	nom_cidad            varchar(30) COLLATE Latin1_General_BIN     NULL,
	cod_sigla_estad      char(2) COLLATE Latin1_General_BIN     NULL,
	num_cep              char(8) COLLATE Latin1_General_BIN     NOT NULL,
	num_ddd_telef        int      NULL,
	des_telef            varchar(20) COLLATE Latin1_General_BIN     NULL,
	des_ramal_telef      varchar(10) COLLATE Latin1_General_BIN     NULL,
	num_ddd_fax          int      NULL,
	des_fax              varchar(20) COLLATE Latin1_General_BIN     NULL,
	des_ramal_fax        varchar(10) COLLATE Latin1_General_BIN     NULL,
	num_ddd_celul        int      NULL,
	des_celul            varchar(20) COLLATE Latin1_General_BIN     NULL,
	des_obser_telef      varchar(100) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK__tbl_endereco PRIMARY KEY  CLUSTERED ( num_entid  asc, num_seque_ender  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  NONCLUSTERED INDEX inx_ender ON dtb_corporativo.dbo.tbl_endereco ( tip_ender  asc, ind_estat  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_cep ON dtb_corporativo.dbo.tbl_endereco ( num_cep  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_tip_ender ON dtb_corporativo.dbo.tbl_endereco ( tip_ender  asc, num_entid  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_entid_seque_tipo ON dtb_corporativo.dbo.tbl_endereco ( num_entid  asc, num_seque_ender  asc, tip_ender  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_cod_sigla_estad ON dtb_corporativo.dbo.tbl_endereco ( cod_sigla_estad  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_dat_situa_regis ON dtb_corporativo.dbo.tbl_endereco ( dat_situa_regis  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_ind_situa_regis ON dtb_corporativo.dbo.tbl_endereco ( ind_situa_regis  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_endereco_ender ON dtb_corporativo.dbo.tbl_endereco ( tip_ender  asc ) INCLUDE ([num_entid],  [num_ddd_telef],  [des_telef]) WITH (FILLFACTOR = 98);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_endereco_contrato ( 
	cod_contr            varchar(11) COLLATE Latin1_General_BIN     NOT NULL,
	num_produ            dbo.numero      NOT NULL,
	num_entid            dbo.numero      NOT NULL,
	num_seque_ender      dbo.numero      NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK__tbl_endereco_con__316D4A39 PRIMARY KEY  CLUSTERED ( cod_contr  asc, num_produ  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX inx_ender_contr ON dtb_corporativo.dbo.tbl_endereco_contrato ( num_entid  asc, num_seque_ender  asc );
GO

CREATE  NONCLUSTERED INDEX inx_dat_situa_regis ON dtb_corporativo.dbo.tbl_endereco_contrato ( dat_situa_regis  asc );
GO

CREATE  NONCLUSTERED INDEX inx_ind_situa_regis ON dtb_corporativo.dbo.tbl_endereco_contrato ( ind_situa_regis  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_entidade ( 
	num_entid            dbo.numero      NOT NULL,
	num_cnpj_cpf         char(14) COLLATE Latin1_General_BIN     NOT NULL,
	ind_cnpj_cpf         dbo.indicador      NOT NULL,
	num_cnpj_raiz        char(8) COLLATE Latin1_General_BIN     NULL,
	nom_entid            varchar(60) COLLATE Latin1_General_BIN     NOT NULL,
	nom_usual            varchar(60) COLLATE Latin1_General_BIN     NULL,
	nom_grupo            varchar(60) COLLATE Latin1_General_BIN     NULL,
	num_entid_lider_grupo dbo.numero      NULL,
	nom_contt_inter      varchar(60) COLLATE Latin1_General_BIN     NULL,
	num_ddd_telef_inter  int      NULL,
	des_telef_contt_inter varchar(20) COLLATE Latin1_General_BIN     NULL,
	nom_contt_decis      varchar(60) COLLATE Latin1_General_BIN     NULL,
	num_ddd_telef_decis  int      NULL,
	des_telef_contt_decis varchar(20) COLLATE Latin1_General_BIN     NULL,
	cod_ativi            int      NULL,
	tip_estru_cnae       char(3) COLLATE Latin1_General_BIN     NULL,
	cod_cnae             varchar(7) COLLATE Latin1_General_BIN     NULL,
	des_ativi_econo      varchar(60) COLLATE Latin1_General_BIN     NULL,
	tip_capit            char(1) COLLATE Latin1_General_BIN     NULL,
	dat_cadas            dbo.data      NOT NULL,
	dat_atual            dbo.data      NOT NULL,
	ind_entid_ativo      dbo.indicador      NOT NULL,
	des_email            varchar(60) COLLATE Latin1_General_BIN     NULL,
	num_regio            dbo.numero      NULL,
	qtd_veicu_total      dbo.numero      NULL,
	qtd_veicu_propr      dbo.numero      NULL,
	qtd_veicu_agreg      dbo.numero      NULL,
	cod_login            dbo.coduser      NULL,
	ind_ultim_siste_atual char(3) COLLATE Latin1_General_BIN     NOT NULL,
	cod_login_extra      varchar(30) COLLATE Latin1_General_BIN     NULL,
	tip_segme            char(3) COLLATE Latin1_General_BIN     NOT NULL,
	tip_relac_gover      char(2) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK__tbl_entidade PRIMARY KEY  CLUSTERED ( num_entid  asc )  WITH (FILLFACTOR = 98),
	CONSTRAINT IX_THINK_entidade UNIQUE ( num_entid  asc, cod_login  asc )  INCLUDE ([nom_entid]) WITH (FILLFACTOR = 98)
 );
GO

CREATE  NONCLUSTERED INDEX inx_cnpj_cpf ON dtb_corporativo.dbo.tbl_entidade ( num_cnpj_cpf  asc, ind_cnpj_cpf  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_nom_entid ON dtb_corporativo.dbo.tbl_entidade ( nom_entid  asc, nom_usual  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_login ON dtb_corporativo.dbo.tbl_entidade ( cod_login  asc, num_regio  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_nom_usual ON dtb_corporativo.dbo.tbl_entidade ( nom_usual  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_tip_segme ON dtb_corporativo.dbo.tbl_entidade ( tip_segme  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_num_cnpj_cpf ON dtb_corporativo.dbo.tbl_entidade ( num_cnpj_cpf  asc ) INCLUDE ([num_entid]) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_cod_ativi ON dtb_corporativo.dbo.tbl_entidade ( cod_ativi  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_ind_entid_ativo ON dtb_corporativo.dbo.tbl_entidade ( ind_entid_ativo  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_num_regio ON dtb_corporativo.dbo.tbl_entidade ( num_regio  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_num_entid_lider_grupo ON dtb_corporativo.dbo.tbl_entidade ( num_entid_lider_grupo  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_entid_grupo ON dtb_corporativo.dbo.tbl_entidade ( num_entid  asc, nom_grupo  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_entid_cnpj_cpf ON dtb_corporativo.dbo.tbl_entidade ( num_entid  asc, num_cnpj_cpf  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_dat_situa_regis ON dtb_corporativo.dbo.tbl_entidade ( dat_situa_regis  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_ind_situa_regis ON dtb_corporativo.dbo.tbl_entidade ( ind_situa_regis  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_cod_login ON dtb_corporativo.dbo.tbl_entidade ( cod_login  asc ) INCLUDE ([num_entid],  [nom_entid]) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX fki_cnae_fiscal ON dtb_corporativo.dbo.tbl_entidade ( cod_cnae  asc, tip_estru_cnae  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX aki_num_cnpj_raiz ON dtb_corporativo.dbo.tbl_entidade ( num_cnpj_raiz  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX THINK_IX_ENTIDADE_1 ON dtb_corporativo.dbo.tbl_entidade ( nom_grupo  asc, num_entid  asc, tip_segme  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX THINK_IX_ENTIDADE ON dtb_corporativo.dbo.tbl_entidade ( nom_grupo  asc, nom_entid  asc, num_cnpj_cpf  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_entidade_login ON dtb_corporativo.dbo.tbl_entidade ( cod_login  asc ) INCLUDE ([num_entid],  [num_cnpj_cpf],  [ind_cnpj_cpf],  [nom_entid],  [des_email]) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_entidade_cnpj_cpf_entid ON dtb_corporativo.dbo.tbl_entidade ( ind_cnpj_cpf  asc, num_entid  asc ) INCLUDE ([num_cnpj_cpf],  [num_cnpj_raiz],  [nom_entid]) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_entidade_nom_entid_nom_grupo ON dtb_corporativo.dbo.tbl_entidade ( nom_entid  asc ) INCLUDE ([nom_grupo]) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_entidade_situa_regis_login ON dtb_corporativo.dbo.tbl_entidade ( ind_situa_regis  asc, cod_login  asc ) INCLUDE ([num_entid]) WITH (FILLFACTOR = 98);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_entidade_beneficiario ( 
	num_entid_empr       dbo.numero      NOT NULL,
	num_entid_benef      dbo.numero      NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pk__tbl_entidade_beneficiario PRIMARY KEY  CLUSTERED ( num_entid_empr  asc, num_entid_benef  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_entidade_compl_fisica ( 
	num_entid            dbo.numero      NOT NULL,
	dat_nasci            dbo.data      NULL,
	ind_sexo             dbo.indicador      NULL,
	num_rg               varchar(15) COLLATE Latin1_General_BIN     NULL,
	des_orgao_emiss_rg   varchar(10) COLLATE Latin1_General_BIN     NULL,
	dat_emiss_rg         dbo.data      NULL,
	cod_sigla_estad_rg   char(2) COLLATE Latin1_General_BIN     NULL,
	des_natur            varchar(30) COLLATE Latin1_General_BIN     NULL,
	des_nacio            varchar(30) COLLATE Latin1_General_BIN     NULL,
	ind_estad_civil      dbo.indicador      NULL,
	ind_regim_casam      dbo.indicador  DEFAULT 0    NULL,
	qtd_depen            dbo.quantidade  DEFAULT 0    NULL,
	ind_grau_escol       dbo.numero      NULL,
	val_pensa            dbo.valor      NULL,
	ind_escol_compl      dbo.indicador  DEFAULT 'F'    NULL,
	nom_pai              varchar(50) COLLATE Latin1_General_BIN     NULL,
	nom_mae              varchar(50) COLLATE Latin1_General_BIN     NULL,
	ind_tipo_resid       dbo.indicador      NULL,
	qtd_tempo_resid      dbo.quantidade  DEFAULT 0    NULL,
	nom_empre            char(60) COLLATE Latin1_General_BIN     NULL,
	dat_admis            dbo.data      NULL,
	des_profi            varchar(30) COLLATE Latin1_General_BIN     NULL,
	des_cargo            varchar(30) COLLATE Latin1_General_BIN     NULL,
	qtd_tempo_ativi      dbo.quantidade  DEFAULT 0    NULL,
	val_renda_mensa      dbo.valor  DEFAULT 0    NULL,
	val_outra_renda      dbo.valor  DEFAULT 0    NULL,
	val_renda_opera_clien dbo.valor      NULL,
	ind_tipo_renda_opera_clien dbo.indicador      NULL,
	dat_base_renda_opera_clien datetime      NULL,
	num_entid_conju      dbo.numero      NULL,
	nom_conju            varchar(60) COLLATE Latin1_General_BIN     NULL,
	num_cpf_conju        char(14) COLLATE Latin1_General_BIN     NULL,
	num_rg_conju         varchar(15) COLLATE Latin1_General_BIN     NULL,
	dat_emiss_rg_conju   dbo.data      NULL,
	des_orgao_emiss_rg_conju varchar(10) COLLATE Latin1_General_BIN     NULL,
	cod_sigla_estad_rg_conju char(2) COLLATE Latin1_General_BIN     NULL,
	des_natur_conju      varchar(30) COLLATE Latin1_General_BIN     NULL,
	des_nacio_conju      varchar(30) COLLATE Latin1_General_BIN     NULL,
	dat_nasci_conju      dbo.data      NULL,
	ind_sexo_conju       char(1) COLLATE Latin1_General_BIN     NULL,
	nom_empre_conju      varchar(50) COLLATE Latin1_General_BIN     NULL,
	dat_admis_conju      dbo.data      NULL,
	des_profi_conju      varchar(60) COLLATE Latin1_General_BIN     NULL,
	des_cargo_conju      varchar(30) COLLATE Latin1_General_BIN     NULL,
	val_renda_mensa_conju dbo.valor  DEFAULT 0    NULL,
	val_outra_renda_conju dbo.valor  DEFAULT 0    NULL,
	des_logra_empre_conju varchar(50) COLLATE Latin1_General_BIN     NULL,
	num_logra_empre_conju varchar(10) COLLATE Latin1_General_BIN     NULL,
	des_compl_empre_conju varchar(20) COLLATE Latin1_General_BIN     NULL,
	des_bairr_empre_conju varchar(30) COLLATE Latin1_General_BIN     NULL,
	cod_sigla_estad_empre_conju char(2) COLLATE Latin1_General_BIN     NULL,
	num_cep_empre_conju  char(8) COLLATE Latin1_General_BIN     NULL,
	nom_cidad_empre_conju varchar(30) COLLATE Latin1_General_BIN     NULL,
	cod_ddd_empre_conju  char(4) COLLATE Latin1_General_BIN     NULL,
	num_telef_empre_conju varchar(20) COLLATE Latin1_General_BIN     NULL,
	des_fax_empre_conju  varchar(20) COLLATE Latin1_General_BIN     NULL,
	cod_sigla_estad_natur_conju char(2) COLLATE Latin1_General_BIN     NULL,
	val_alugu            dbo.valor      NULL,
	num_cnpj_empre       char(14) COLLATE Latin1_General_BIN     NULL,
	des_orige_outra_renda varchar(15) COLLATE Latin1_General_BIN     NULL,
	cod_sigla_estad_natur char(2) COLLATE Latin1_General_BIN     NULL,
	des_email_comer      varchar(60) COLLATE Latin1_General_BIN     NULL,
	nom_empre_anter      varchar(60) COLLATE Latin1_General_BIN     NULL,
	des_cargo_anter      varchar(60) COLLATE Latin1_General_BIN     NULL,
	dat_admis_anter      dbo.data      NULL,
	dat_saida_anter      dbo.data      NULL,
	num_cnpj_empre_conju char(14) COLLATE Latin1_General_BIN     NULL,
	des_orige_outra_renda_conju varchar(60) COLLATE Latin1_General_BIN     NULL,
	des_email_conju      varchar(60) COLLATE Latin1_General_BIN     NULL,
	cod_natur_ocupa      char(2) COLLATE Latin1_General_BIN     NULL,
	num_inscr_inss       bigint      NULL,
	num_inscr_pis        bigint      NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	ind_motivo_renda_opera_clien dbo.numero      NULL,
	des_obs_renda_opera_clien varchar(45) COLLATE Latin1_General_BIN     NULL,
	cod_etnia            dbo.numero      NULL,
	CONSTRAINT PK__tbl_entidade_compl_fisica PRIMARY KEY  CLUSTERED ( num_entid  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  NONCLUSTERED INDEX inx_dat_situa_regis ON dtb_corporativo.dbo.tbl_entidade_compl_fisica ( dat_situa_regis  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_cod_natur_ocupa ON dtb_corporativo.dbo.tbl_entidade_compl_fisica ( cod_natur_ocupa  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_ind_situa_regis ON dtb_corporativo.dbo.tbl_entidade_compl_fisica ( ind_situa_regis  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_entidade_compl_fisica_conju ON dtb_corporativo.dbo.tbl_entidade_compl_fisica ( num_entid_conju  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_entidade_compl_fisica_cpf_conju ON dtb_corporativo.dbo.tbl_entidade_compl_fisica ( num_cpf_conju  asc );
GO

CREATE  NONCLUSTERED INDEX inx_entidade_compl_fisica_cnpj_empre_conju ON dtb_corporativo.dbo.tbl_entidade_compl_fisica ( num_cnpj_empre_conju  asc ) INCLUDE ([num_entid]);
GO

CREATE  NONCLUSTERED INDEX inx_entidade_compl_fisica_cnpj_empre ON dtb_corporativo.dbo.tbl_entidade_compl_fisica ( num_cnpj_empre  asc ) INCLUDE ([num_entid]);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_entidade_compl_juridica ( 
	num_entid            dbo.numero      NOT NULL,
	dat_funda            dbo.data      NULL,
	num_inscr_estad      char(20) COLLATE Latin1_General_BIN     NULL,
	num_inscr_munic      char(20) COLLATE Latin1_General_BIN     NULL,
	des_sede             char(40) COLLATE Latin1_General_BIN     NULL,
	cod_uf_sede          char(2) COLLATE Latin1_General_BIN     NULL,
	val_renda_opera_clien dbo.valor  DEFAULT 0    NULL,
	ind_tipo_renda_opera_clien dbo.indicador      NULL,
	dat_base_renda_opera_clien dbo.data      NULL,
	val_renda_opera_grupo dbo.valor  DEFAULT 0    NULL,
	ind_tipo_renda_opera_grupo dbo.indicador      NULL,
	dat_base_renda_opera_grupo dbo.data      NULL,
	val_capit_social     dbo.valor      NULL,
	qtd_cota_subsc_voto  float      NULL,
	qtd_cota_subsc_total float      NULL,
	qtd_cota_integ_voto  float      NULL,
	qtd_cota_integ_total float      NULL,
	qtd_cota_total       float      NOT NULL,
	dat_ultim_alter_contr dbo.data      NULL,
	cod_natur_jurid      char(4) COLLATE Latin1_General_BIN     NULL,
	qtd_filia            dbo.quantidade      NULL,
	qtd_funci            dbo.quantidade      NULL,
	ind_regim_tribu      char(1) COLLATE Latin1_General_BIN     NULL,
	nom_conta            varchar(60) COLLATE Latin1_General_BIN     NULL,
	num_ddd_telef_conta  int      NULL,
	des_telef_conta      varchar(60) COLLATE Latin1_General_BIN     NULL,
	des_email_conta      varchar(60) COLLATE Latin1_General_BIN     NULL,
	val_marge_liqui_anter float      NULL,
	num_ano_marge_liqui_anter int      NULL,
	val_marge_liqui_atual float      NULL,
	num_ano_marge_liqui_atual int      NULL,
	val_despe_veicu      dbo.valor      NULL,
	val_renda_mensa      dbo.valor      NOT NULL,
	val_media_fatur      dbo.valor      NOT NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NULL,
	cod_user             dbo.coduser      NOT NULL,
	tip_contr            char(2) COLLATE Latin1_General_BIN     NULL,
	tip_admin            char(1) COLLATE Latin1_General_BIN     NULL,
	tip_atvem            char(1) COLLATE Latin1_General_BIN     NULL,
	ind_tipo_entid       char(1) COLLATE Latin1_General_BIN     NULL,
	ind_motivo_renda_opera_clien dbo.numero      NULL,
	des_obs_renda_opera_clien varchar(45) COLLATE Latin1_General_BIN     NULL,
	frm_constituicao_clien varchar(6) COLLATE Latin1_General_BIN     NULL,
	CONSTRAINT PK__tbl_entidade_com__2E90DD8E PRIMARY KEY  CLUSTERED ( num_entid  asc )  WITH (FILLFACTOR = 98)
 );
GO

Entendimento do negócio:

O código apresenta a definição de várias tabelas em um banco de dados do SQL Server. Essas tabelas fazem parte de um sistema corporativo e armazenam informações relacionadas a entidades, endereços, contratos, beneficiários e dados complementares (físicos e jurídicos).

A seguir, uma descrição do propósito de cada tabela:

1. Tabela "tbl_endereco":
   - Armazena informações relacionadas a endereços, como número da entidade, sequência do endereço, tipo de endereço, estado civil, código do tipo de logradouro, logradouro, número do logradouro, complemento do logradouro, bairro, cidade, estado, CEP, números de telefone (DDD, telefone, ramal), números de fax (DDD, fax, ramal), número de celular (DDD, celular) e outras observações.
   - Possui chaves primárias compostas pelos campos "num_entid" e "num_seque_ender".

2. Tabela "tbl_endereco_contrato":
   - Armazena informações relacionadas aos endereços associados aos contratos. Contém o código do contrato, número do produto, número da entidade, sequência do endereço, situação de registro e data de registro.
   - A chave primária é composta pelos campos "cod_contr" e "num_produ".

3. Tabela "tbl_entidade":
   - Armazena informações sobre entidades, como número da entidade, CNPJ/CPF, indicador de CNPJ/CPF, CNPJ raiz, nome da entidade, nome usual, nome do grupo, número da entidade líder do grupo, contatos internos, atividades econômicas, capital, data de cadastro, data atual, indicador de entidade ativa, e-mail, região, quantidade de veículos, login, indicador de última situação atualizada e outros campos.
   - A chave primária é o campo "num_entid".

4. Tabela "tbl_entidade_beneficiario":
   - Tabela de relacionamento que armazena os beneficiários associados a uma entidade. Contém o número da entidade da empresa e o número da entidade do beneficiário.
   - A chave primária é composta pelos campos "num_entid_empr" e "num_entid_benef".

5. Tabela "tbl_entidade_compl_fisica":
   - Armazena informações complementares relacionadas a entidades de pessoa física, como data de nascimento, sexo, RG, órgão emissor, data de emissão do RG, estado civil, grau de escolaridade, renda mensal, entre outras informações pessoais e profissionais.
   - A chave primária é o campo "num_entid".

6. Tabela "tbl_entidade_compl_juridica":
   - Armazena informações complementares relacionadas a entidades de pessoa jurídica, como data de fundação, inscrição estadual e municipal, regime tributário, informações de contato, renda operacional, capital social, entre outras informações específicas para entidades jurídicas.
   - A chave primária é o campo "num_entid".

Além das tabelas, o código também inclui definições de índices para otimização de consultas.

Essas tabelas e índices fazem parte do esquema do banco de dados de um sistema corporativo e são utilizados para armazenar e consultar informações sobre entidades, endereços, contratos e dados complementares.
CREATE  NONCLUSTERED INDEX inx_dat_situa_regis ON dtb_corporativo.dbo.tbl_entidade_compl_juridica ( dat_situa_regis  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_cod_natur_jurid ON dtb_corporativo.dbo.tbl_entidade_compl_juridica ( cod_natur_jurid  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_ind_situa_regis ON dtb_corporativo.dbo.tbl_entidade_compl_juridica ( ind_situa_regis  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_entidade_documento ( 
	num_entid            int      NOT NULL,
	cod_tipo_documento   int      NOT NULL,
	num_documento        varchar(20) COLLATE Latin1_General_BIN     NOT NULL,
	dat_expedicao        datetime      NOT NULL,
	cod_uf_emissor       varchar(2) COLLATE Latin1_General_BIN     NOT NULL,
	des_orgao_emissor    varchar(50) COLLATE Latin1_General_BIN     NULL,
	dat_validade         datetime      NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             varchar(10) COLLATE Latin1_General_BIN     NOT NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_entidade_fabrica ( 
	num_seque_entid_fabri int    IDENTITY  NOT NULL,
	num_entid_fabri      dbo.numero      NOT NULL,
	num_seque_role       dbo.numero      NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK_tbl_entidade_fabrica PRIMARY KEY  CLUSTERED ( num_seque_entid_fabri  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_entidade_fabrica_objeto_financiamento ( 
	num_seque_entid_fabri_objet_finan int    IDENTITY  NOT NULL,
	num_seque_entid_fabri dbo.numero      NOT NULL,
	cod_estru_objet      int      NOT NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK_tbl_entidade_fabrica_objeto_financiamento PRIMARY KEY  CLUSTERED ( num_seque_entid_fabri_objet_finan  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_entidade_naturalidade ( 
	num_entid            int      NOT NULL,
	cod_sigla_estado     varchar(2) COLLATE Latin1_General_BIN     NOT NULL,
	cod_cidade           int      NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             varchar(10) COLLATE Latin1_General_BIN     NOT NULL
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_entidade_patrimonio ( 
	num_entid            int      NOT NULL,
	num_patri            int      NOT NULL,
	CONSTRAINT PK__tbl_enti__EFEE90BBD110D698 PRIMARY KEY  CLUSTERED ( num_entid  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_entidade_transportador ( 
	num_entid            dbo.numero      NOT NULL,
	tip_trans            varchar(3) COLLATE Latin1_General_BIN     NOT NULL,
	ind_licen_prefe      dbo.indicador      NOT NULL,
	dat_inici_ativi      dbo.data      NULL,
	dat_exped            dbo.data      NULL,
	dat_valid            dbo.data      NULL,
	ind_coope            dbo.indicador      NOT NULL,
	val_recei_mensa_frete dbo.valor      NOT NULL,
	val_despe_mensa      dbo.valor      NOT NULL,
	pcl_marge_lucro      dbo.porcentagem      NOT NULL,
	des_tipo_carga       varchar(40) COLLATE Latin1_General_BIN     NULL,
	des_princ_clien      varchar(40) COLLATE Latin1_General_BIN     NULL,
	cod_rntrc            varchar(10) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_transportador PRIMARY KEY  CLUSTERED ( num_entid  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_equipe_concessionaria ( 
	num_entid_conce      dbo.numero      NOT NULL,
	num_entid            dbo.numero      NOT NULL,
	tip_cargo            char(3) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	ind_mult_starclass   dbo.indicador  DEFAULT 'N'    NULL,
	CONSTRAINT pki_equipe_concessionaria PRIMARY KEY  CLUSTERED ( num_entid_conce  asc, num_entid  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  NONCLUSTERED INDEX fki_num_entid_conce ON dtb_corporativo.dbo.tbl_equipe_concessionaria ( num_entid_conce  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX fki_num_entid ON dtb_corporativo.dbo.tbl_equipe_concessionaria ( num_entid  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_faturamento_entidade ( 
	num_entid            dbo.numero      NOT NULL,
	num_ano              dbo.numero      NOT NULL,
	num_mes              dbo.numero      NOT NULL,
	val_fatur            dbo.valor      NOT NULL,
	tip_refer_fatur      char(3) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_faturamento_entidade PRIMARY KEY  CLUSTERED ( num_entid  asc, num_ano  asc, num_mes  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX fki_num_entid ON dtb_corporativo.dbo.tbl_faturamento_entidade ( num_entid  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_finalidade_financiamento ( 
	num_entid            dbo.numero      NOT NULL,
	num_final_finan      dbo.numero      NOT NULL,
	des_final_finan      varchar(100) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_final_finan PRIMARY KEY  CLUSTERED ( num_entid  asc, num_final_finan  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_funcionario ( 
	num_entid            dbo.numero      NOT NULL,
	cod_cargo            dbo.numero      NULL,
	cod_centr_custo      varchar(10) COLLATE Latin1_General_BIN     NULL,
	des_telef_ramal      varchar(20) COLLATE Latin1_General_BIN     NULL,
	des_sigla_pais_nacio char(2) COLLATE Latin1_General_BIN     NULL,
	cod_tipo_funci       dbo.numero      NULL,
	cod_kim              varchar(15) COLLATE Latin1_General_BIN     NULL,
	cod_empre            dbo.numero  DEFAULT 1443    NULL,
	nom_notes            varchar(30) COLLATE Latin1_General_BIN     NULL,
	nom_prime_notes      varchar(30) COLLATE Latin1_General_BIN     NULL,
	nom_meio_notes       char(1) COLLATE Latin1_General_BIN     NULL,
	nom_ultim_notes      varchar(30) COLLATE Latin1_General_BIN     NULL,
	dat_demis            dbo.data      NULL,
	tip_segme            char(3) COLLATE Latin1_General_BIN     NOT NULL,
	num_entid_empre      dbo.numero      NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK__tbl_funcionario PRIMARY KEY  CLUSTERED ( num_entid  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  NONCLUSTERED INDEX inx_cargo ON dtb_corporativo.dbo.tbl_funcionario ( cod_cargo  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_notes ON dtb_corporativo.dbo.tbl_funcionario ( nom_notes  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_notes_compl ON dtb_corporativo.dbo.tbl_funcionario ( nom_prime_notes  asc, nom_meio_notes  asc, nom_ultim_notes  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_entid_notes ON dtb_corporativo.dbo.tbl_funcionario ( num_entid  asc, nom_notes  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_dat_demis ON dtb_corporativo.dbo.tbl_funcionario ( dat_demis  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_dat_situa_regis ON dtb_corporativo.dbo.tbl_funcionario ( dat_situa_regis  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_ind_situa_regis ON dtb_corporativo.dbo.tbl_funcionario ( ind_situa_regis  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX fki_num_entid_empre ON dtb_corporativo.dbo.tbl_funcionario ( num_entid_empre  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_grupo ( 
	num_grupo            dbo.numero    IDENTITY  NOT NULL,
	nom_grupo            varchar(60) COLLATE Latin1_General_BIN     NOT NULL,
	num_regio            int      NULL,
	tip_segme            char(3) COLLATE Latin1_General_BIN     NULL,
	num_entid_lider_grupo int      NULL,
	val_renda_opera_grupo float      NOT NULL,
	tip_renda_opera_grupo char(1) COLLATE Latin1_General_BIN     NULL,
	dat_base_renda_opera_grupo datetime      NULL,
	pcl_penet            dbo.porcentagem      NOT NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT prk_tbl_grupo PRIMARY KEY  CLUSTERED ( nom_grupo  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX inx_grupo_tip_segme ON dtb_corporativo.dbo.tbl_grupo ( nom_grupo  asc, tip_segme  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_grupo_num_regio ON dtb_corporativo.dbo.tbl_grupo ( nom_grupo  asc, num_regio  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_num_regio ON dtb_corporativo.dbo.tbl_grupo ( num_regio  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_tip_segme ON dtb_corporativo.dbo.tbl_grupo ( tip_segme  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_dat_situa_regis ON dtb_corporativo.dbo.tbl_grupo ( dat_situa_regis  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_ind_situa_regis ON dtb_corporativo.dbo.tbl_grupo ( ind_situa_regis  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX fki_num_entid ON dtb_corporativo.dbo.tbl_grupo ( num_entid_lider_grupo  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_grupo_comissao_concessionaria ( 
	nom_grupo            varchar(60) COLLATE Latin1_General_BIN     NOT NULL,
	num_entid_comis      int      NULL,
	ind_entid_defau      char(1) COLLATE Latin1_General_BIN DEFAULT 'N'    NOT NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NOT NULL,
	dat_situa_regis      datetime      NOT NULL,
	cod_user             varchar(10) COLLATE Latin1_General_BIN     NOT NULL,
	CONSTRAINT pk_tbl_grupo_comissao_concessionaria PRIMARY KEY  CLUSTERED ( nom_grupo  asc ) ,
	CONSTRAINT uq_grupo_enti_comis UNIQUE ( nom_grupo  asc, num_entid_comis  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_historico_gravacao_entidade ( 
	num_entid            dbo.numero      NOT NULL,
	num_seque_grava      dbo.numero    IDENTITY  NOT NULL,
	des_grava            varchar(255) COLLATE Latin1_General_BIN     NOT NULL,
	des_situa_atual      varchar(255) COLLATE Latin1_General_BIN     NULL,
	des_situa_anter      varchar(255) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	ind_atual_autom      bit      NULL,
	CONSTRAINT pki_historico_gravacao_entidade PRIMARY KEY  CLUSTERED ( num_entid  asc, num_seque_grava  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  NONCLUSTERED INDEX fki_num_entid ON dtb_corporativo.dbo.tbl_historico_gravacao_entidade ( num_entid  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_imovel_entidade ( 
	num_entid            dbo.numero      NOT NULL,
	num_imove            int      NOT NULL,
	des_local            varchar(30) COLLATE Latin1_General_BIN     NOT NULL,
	des_espec            varchar(30) COLLATE Latin1_General_BIN     NOT NULL,
	qtd_area             varchar(15) COLLATE Latin1_General_BIN     NOT NULL,
	qtd_area_terre       varchar(15) COLLATE Latin1_General_BIN     NOT NULL,
	val_hipot            dbo.valor      NOT NULL,
	val_atual            dbo.valor      NOT NULL,
	des_tipo_onus        varchar(20) COLLATE Latin1_General_BIN     NULL,
	num_propi            dbo.numero      NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	num_entid_patri      dbo.numero      NULL,
	CONSTRAINT pki_imovel PRIMARY KEY  NONCLUSTERED ( num_entid  asc, num_imove  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  NONCLUSTERED INDEX fki_num_entid ON dtb_corporativo.dbo.tbl_imovel_entidade ( num_entid  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_imovel_entidade_entid_patri ON dtb_corporativo.dbo.tbl_imovel_entidade ( num_entid_patri  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_informacao_venda_concessionaria ( 
	num_entid_conce      dbo.numero      NOT NULL,
	num_mes              dbo.numero      NOT NULL,
	num_ano              dbo.numero      NOT NULL,
	qtd_finan_banco      dbo.quantidade      NOT NULL,
	qtd_finan_outro_banco dbo.quantidade      NOT NULL,
	qtd_conso            dbo.quantidade      NOT NULL,
	qtd_vista            dbo.quantidade      NOT NULL,
	num_pontu_star       dbo.numero      NOT NULL,
	cod_tipo_bem_star_class dbo.numero      NOT NULL,
	qtd_segur            dbo.quantidade      NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	qtd_finan_outro_banco_negada_bmb dbo.quantidade      NULL,
	CONSTRAINT pki_informacao_venda_concessionaria PRIMARY KEY  CLUSTERED ( num_entid_conce  asc, num_mes  asc, num_ano  asc, cod_tipo_bem_star_class  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  NONCLUSTERED INDEX fki_num_entid_conce ON dtb_corporativo.dbo.tbl_informacao_venda_concessionaria ( num_entid_conce  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX fki_num_pontu_star ON dtb_corporativo.dbo.tbl_informacao_venda_concessionaria ( num_pontu_star  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_investimento_entidade ( 
	num_entid            dbo.numero      NOT NULL,
	num_inves            int      NOT NULL,
	dat_base             dbo.data      NULL,
	des_inves            varchar(20) COLLATE Latin1_General_BIN     NULL,
	val_inves            dbo.valor      NOT NULL,
	num_agenc_inves      varchar(10) COLLATE Latin1_General_BIN     NULL,
	des_insti_finan      varchar(40) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_investimento PRIMARY KEY  NONCLUSTERED ( num_entid  asc, num_inves  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  NONCLUSTERED INDEX fki_num_entid ON dtb_corporativo.dbo.tbl_investimento_entidade ( num_entid  asc ) WITH (FILLFACTOR = 98);
GO

O código apresentado é um conjunto de comandos SQL que cria várias tabelas e índices em um banco de dados SQL Server. Vou fornecer uma explicação sobre o que cada trecho faz:

1. Criação de índices não agrupados:

```
CREATE NONCLUSTERED INDEX inx_cod_natur_jurid ON dtb_corporativo.dbo.tbl_entidade_compl_juridica (cod_natur_jurid asc) WITH (FILLFACTOR = 98);
```

Esse comando cria um índice não agrupado chamado "inx_cod_natur_jurid" na tabela "tbl_entidade_compl_juridica" com base na coluna "cod_natur_jurid" em ordem ascendente. O índice utiliza o preenchimento de fator 98 (FILLFACTOR = 98) para controlar a utilização de espaço do índice.

2. Criação de tabela:

```
CREATE TABLE dtb_corporativo.dbo.tbl_entidade_documento (
    num_entid int NOT NULL,
    cod_tipo_documento int NOT NULL,
    num_documento varchar(20) COLLATE Latin1_General_BIN NOT NULL,
    dat_expedicao datetime NOT NULL,
    cod_uf_emissor varchar(2) COLLATE Latin1_General_BIN NOT NULL,
    des_orgao_emissor varchar(50) COLLATE Latin1_General_BIN NULL,
    dat_validade datetime NULL,
    dat_situa_regis datetime NOT NULL,
    cod_user varchar(10) COLLATE Latin1_General_BIN NOT NULL
);
```

Esse comando cria uma tabela chamada "tbl_entidade_documento" no esquema "dbo" do banco de dados "dtb_corporativo". A tabela possui várias colunas, como "num_entid", "cod_tipo_documento", "num_documento", "dat_expedicao", etc. Cada coluna tem um tipo de dado e algumas delas possuem restrições de NOT NULL.

3. Criação de tabela com chave primária:

```
CREATE TABLE dtb_corporativo.dbo.tbl_entidade_fabrica (
    num_seque_entid_fabri int IDENTITY NOT NULL,
    num_entid_fabri dbo.numero NOT NULL,
    num_seque_role dbo.numero NULL,
    ind_situa_regis char(1) COLLATE Latin1_General_BIN NOT NULL,
    dat_situa_regis datetime NOT NULL,
    cod_user dbo.coduser NOT NULL,
    CONSTRAINT PK_tbl_entidade_fabrica PRIMARY KEY CLUSTERED (num_seque_entid_fabri asc)
);
```

Esse comando cria uma tabela chamada "tbl_entidade_fabrica" no esquema "dbo" do banco de dados "dtb_corporativo". A tabela possui várias colunas e uma chave primária composta pela coluna "num_seque_entid_fabri".

4. Criação de outras tabelas, índices e chaves primárias:

O código continua criando várias outras tabelas, índices não agrupados e chaves primárias, com diferentes colunas e configurações.

Lembrando que essas instruções de criação podem depender do contexto do banco de dados e da modelagem de dados específica que está sendo implementada. As tabelas, colunas e índices criados nesse código são apenas exemplos e podem variar dependendo do projeto em questão.

CREATE  TABLE dtb_corporativo.dbo.tbl_objeto_financiamento_concessionaria ( 
	num_entid_conce      dbo.numero      NOT NULL,
	cod_estru_objet      dbo.numero      NOT NULL,
	pcl_penet            dbo.porcentagem      NOT NULL,
	qtd_bens_fatur       dbo.numero      NOT NULL,
	qtd_bens_vendi       dbo.numero      NOT NULL,
	pcl_npl              dbo.porcentagem      NOT NULL,
	val_saldo_contb      dbo.valor      NOT NULL,
	val_saldo_npl        dbo.valor      NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_objeto_financiamento_concessionaria PRIMARY KEY  CLUSTERED ( num_entid_conce  asc, cod_estru_objet  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  NONCLUSTERED INDEX fki_num_entid_conce ON dtb_corporativo.dbo.tbl_objeto_financiamento_concessionaria ( num_entid_conce  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX fki_cod_estru_objet ON dtb_corporativo.dbo.tbl_objeto_financiamento_concessionaria ( cod_estru_objet  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_objeto_financiamento_concessionaria_segmento ( 
	num_entid_conce      dbo.numero      NOT NULL,
	cod_estru_objet      dbo.numero      NOT NULL,
	tip_segme            char(3) COLLATE Latin1_General_BIN     NOT NULL,
	pcl_penet            dbo.porcentagem      NOT NULL,
	qtd_bens_fatur       dbo.quantidade      NOT NULL,
	qtd_bens_vendi       dbo.quantidade      NOT NULL,
	pcl_npl              dbo.porcentagem      NOT NULL,
	val_saldo_contb      dbo.valor      NOT NULL,
	val_saldo_npl        dbo.valor      NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_objeto_financiamento_concessionaria_segmento PRIMARY KEY  CLUSTERED ( num_entid_conce  asc, cod_estru_objet  asc, tip_segme  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  NONCLUSTERED INDEX fki_num_entid_conce ON dtb_corporativo.dbo.tbl_objeto_financiamento_concessionaria_segmento ( num_entid_conce  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX fki_cod_estru_objet ON dtb_corporativo.dbo.tbl_objeto_financiamento_concessionaria_segmento ( cod_estru_objet  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_participacao_empresa_entidade ( 
	num_entid            dbo.numero      NOT NULL,
	num_parti            int      NOT NULL,
	nom_empre            varchar(50) COLLATE Latin1_General_BIN     NOT NULL,
	num_cgc              varchar(14) COLLATE Latin1_General_BIN     NOT NULL,
	dat_admis_entra      dbo.data      NULL,
	des_cargo            varchar(40) COLLATE Latin1_General_BIN     NULL,
	pcl_capit_votan      dbo.porcentagem      NOT NULL,
	pcl_capit_total      dbo.porcentagem      NOT NULL,
	ind_situa_regis      char(1) COLLATE Latin1_General_BIN     NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_participacao_empresa PRIMARY KEY  NONCLUSTERED ( num_entid  asc, num_parti  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX fki_num_entid ON dtb_corporativo.dbo.tbl_participacao_empresa_entidade ( num_entid  asc );
GO

CREATE  NONCLUSTERED INDEX inx_participacao_empresa_entidade_cgc ON dtb_corporativo.dbo.tbl_participacao_empresa_entidade ( num_cgc  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_prestacao_servico_produto_juridica ( 
	num_entid            dbo.numero      NOT NULL,
	num_produ_servi      dbo.numero      NOT NULL,
	des_produ_servi      varchar(60) COLLATE Latin1_General_BIN     NOT NULL,
	pcl_fatur            dbo.porcentagem      NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_prestacao_servico_produto_juridica PRIMARY KEY  CLUSTERED ( num_entid  asc, num_produ_servi  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX fki_num_entid ON dtb_corporativo.dbo.tbl_prestacao_servico_produto_juridica ( num_entid  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_produto_financeiro ( 
	num_produ_finan      dbo.numero    IDENTITY  NOT NULL,
	nom_produ_finan      varchar(60) COLLATE Latin1_General_BIN     NOT NULL,
	nom_produ_finan_abrev varchar(10) COLLATE Latin1_General_BIN     NOT NULL,
	num_produ_geren      dbo.numero      NOT NULL,
	num_entid_empre      dbo.numero      NOT NULL,
	ind_over_auto        dbo.indicador  DEFAULT 'N'    NOT NULL,
	ind_limit_propo      dbo.indicador  DEFAULT 'N'    NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_produto_financeiro PRIMARY KEY  CLUSTERED ( num_produ_finan  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX fki_num_entid_empre ON dtb_corporativo.dbo.tbl_produto_financeiro ( num_entid_empre  asc );
GO

CREATE  NONCLUSTERED INDEX fki_num_produ_geren ON dtb_corporativo.dbo.tbl_produto_financeiro ( num_produ_geren  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_referencia_bancaria_fisica ( 
	num_entid            dbo.numero      NOT NULL,
	num_refer            int      NOT NULL,
	nom_refer            varchar(60) COLLATE Latin1_General_BIN     NULL,
	num_agenc_refer      varchar(10) COLLATE Latin1_General_BIN     NULL,
	num_ddd_telef        dbo.numero      NULL,
	des_telef_refer      varchar(40) COLLATE Latin1_General_BIN     NULL,
	nom_contt            varchar(60) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_referencia_bancaria_fisica PRIMARY KEY  CLUSTERED ( num_entid  asc, num_refer  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX fki_num_entid ON dtb_corporativo.dbo.tbl_referencia_bancaria_fisica ( num_entid  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_referencia_comercial_fisica ( 
	num_entid            dbo.numero      NOT NULL,
	num_refer            dbo.numero      NOT NULL,
	nom_refer            varchar(60) COLLATE Latin1_General_BIN     NOT NULL,
	des_ender_refer      varchar(60) COLLATE Latin1_General_BIN     NULL,
	num_ddd_telef        dbo.numero      NULL,
	des_telef_refer      varchar(40) COLLATE Latin1_General_BIN     NULL,
	nom_contt            varchar(60) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_referencia_comercial_fisica PRIMARY KEY  CLUSTERED ( num_entid  asc, num_refer  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX fki_num_entid ON dtb_corporativo.dbo.tbl_referencia_comercial_fisica ( num_entid  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_referencia_comercial_juridica ( 
	num_entid            dbo.numero      NOT NULL,
	num_refer            dbo.numero      NOT NULL,
	tip_refer_comer      varchar(3) COLLATE Latin1_General_BIN     NOT NULL,
	nom_refer            varchar(60) COLLATE Latin1_General_BIN     NOT NULL,
	num_ddd_telef        dbo.numero      NULL,
	des_telef_refer      varchar(40) COLLATE Latin1_General_BIN     NULL,
	pcl_refer            dbo.porcentagem      NOT NULL,
	nom_agenc_refer      varchar(10) COLLATE Latin1_General_BIN     NULL,
	nom_contt            varchar(60) COLLATE Latin1_General_BIN     NULL,
	qtd_prazo_medio      dbo.quantidade      NOT NULL,
	val_saldo_atual      dbo.valor      NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_referencia_comercial_juridica PRIMARY KEY  CLUSTERED ( num_entid  asc, num_refer  asc, tip_refer_comer  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX fki_num_entid ON dtb_corporativo.dbo.tbl_referencia_comercial_juridica ( num_entid  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_referencia_endividamento ( 
	num_entid            dbo.numero      NOT NULL,
	num_refer            dbo.numero      NOT NULL,
	tip_refer_endiv      varchar(3) COLLATE Latin1_General_BIN     NOT NULL,
	nom_insti_finan      varchar(60) COLLATE Latin1_General_BIN     NULL,
	num_agenc            varchar(10) COLLATE Latin1_General_BIN     NULL,
	des_modal            varchar(40) COLLATE Latin1_General_BIN     NULL,
	val_contr_limit      dbo.valor      NOT NULL,
	val_saldo_deved      dbo.valor      NOT NULL,
	val_prest            dbo.valor      NOT NULL,
	qtd_parce_pagas      dbo.quantidade      NOT NULL,
	qtd_parce            dbo.quantidade      NOT NULL,
	dat_venci_final      dbo.data      NULL,
	dat_base             dbo.data      NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_referencia_endividamento PRIMARY KEY  CLUSTERED ( num_entid  asc, num_refer  asc, tip_refer_endiv  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX fki_num_entid ON dtb_corporativo.dbo.tbl_referencia_endividamento ( num_entid  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_referencia_pessoal ( 
	num_entid            dbo.numero      NOT NULL,
	num_refer            dbo.numero      NOT NULL,
	nom_pesso            varchar(60) COLLATE Latin1_General_BIN     NOT NULL,
	des_ender            varchar(60) COLLATE Latin1_General_BIN     NULL,
	num_ddd_telef        dbo.numero      NULL,
	des_telef            varchar(40) COLLATE Latin1_General_BIN     NULL,
	des_tipo_telef       varchar(20) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_referencia_pessoal PRIMARY KEY  CLUSTERED ( num_entid  asc, num_refer  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX fki_num_entid ON dtb_corporativo.dbo.tbl_referencia_pessoal ( num_entid  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_relac_visao_produto_financeiro ( 
	num_produ_finan      int      NOT NULL,
	num_produ            dbo.numero      NOT NULL,
	cod_visao            char(3) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_relac_visao_produto_financeiro PRIMARY KEY  CLUSTERED ( num_produ_finan  asc, num_produ  asc, cod_visao  asc ) 
 );
GO

CREATE  NONCLUSTERED INDEX fki_num_produ ON dtb_corporativo.dbo.tbl_relac_visao_produto_financeiro ( num_produ  asc );
GO

CREATE  NONCLUSTERED INDEX fki_cod_visao ON dtb_corporativo.dbo.tbl_relac_visao_produto_financeiro ( cod_visao  asc );
GO

CREATE  NONCLUSTERED INDEX fki_num_produ_finan ON dtb_corporativo.dbo.tbl_relac_visao_produto_financeiro ( num_produ_finan  asc );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_relacionamento_entidade ( 
	num_entid_super      dbo.numero      NOT NULL,
	num_entid_infer      dbo.numero      NOT NULL,
	tip_relac_entid      char(15) COLLATE Latin1_General_BIN     NOT NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT prk_relacionamento_entidade PRIMARY KEY  CLUSTERED ( num_entid_super  asc, num_entid_infer  asc, tip_relac_entid  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  NONCLUSTERED INDEX inx_super_relac ON dtb_corporativo.dbo.tbl_relacionamento_entidade ( num_entid_super  asc, tip_relac_entid  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_infer_relac ON dtb_corporativo.dbo.tbl_relacionamento_entidade ( num_entid_infer  asc, tip_relac_entid  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_dat_situa_regis ON dtb_corporativo.dbo.tbl_relacionamento_entidade ( dat_situa_regis  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_ind_situa_regis ON dtb_corporativo.dbo.tbl_relacionamento_entidade ( ind_situa_regis  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_remuneracao_fixa ( 
	num_entid_conce      dbo.numero      NOT NULL,
	num_produ            dbo.numero      NOT NULL,
	cod_estru_objet      dbo.numero      NOT NULL,
	tip_benef            char(3) COLLATE Latin1_General_BIN     NOT NULL,
	pcl_penet_inici      dbo.porcentagem      NOT NULL,
	dat_inici_valid      dbo.data      NOT NULL,
	pcl_penet_final      dbo.porcentagem      NOT NULL,
	val_comis_fixa       dbo.valor      NULL,
	dat_final_valid      dbo.data      NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK_tbl_remuneracao_fixa PRIMARY KEY  CLUSTERED ( num_entid_conce  asc, num_produ  asc, cod_estru_objet  asc, tip_benef  asc, pcl_penet_inici  asc, dat_inici_valid  asc ) 
 );
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_representante_legal ( 
	num_entid            dbo.numero      NOT NULL,
	num_entid_repre      dbo.numero      NOT NULL,
	ind_situa_regis      dbo.indicador      NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_repre_legal PRIMARY KEY  CLUSTERED ( num_entid  asc, num_entid_repre  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  NONCLUSTERED INDEX fki_repre_legal_entid_repre ON dtb_corporativo.dbo.tbl_representante_legal ( num_entid_repre  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX fki_repre_legal_entid ON dtb_corporativo.dbo.tbl_representante_legal ( num_entid  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_socio_entidade ( 
	num_entid_socio      dbo.numero      NOT NULL,
	num_entid_empre      dbo.numero      NOT NULL,
	dat_entra_socie      dbo.data      NULL,
	des_cargo            varchar(20) COLLATE Latin1_General_BIN     NULL,
	pcl_capit_votan      dbo.porcentagem      NOT NULL,
	pcl_capit_sem_votan  dbo.porcentagem      NULL,
	pcl_capit_total      dbo.porcentagem      NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_socio_entidade PRIMARY KEY  CLUSTERED ( num_entid_socio  asc, num_entid_empre  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  NONCLUSTERED INDEX fki_num_entid_socio ON dtb_corporativo.dbo.tbl_socio_entidade ( num_entid_socio  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX fki_num_entid_empre ON dtb_corporativo.dbo.tbl_socio_entidade ( num_entid_empre  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_veiculo_entidade ( 
	num_entid            dbo.numero      NOT NULL,
	num_veicu            dbo.numero      NOT NULL,
	des_marca            varchar(30) COLLATE Latin1_General_BIN     NOT NULL,
	des_model            varchar(30) COLLATE Latin1_General_BIN     NOT NULL,
	num_ano              dbo.numero      NULL,
	num_ano_fabri        dbo.numero      NULL,
	num_ano_model        dbo.numero      NULL,
	val_onus             dbo.valor      NOT NULL,
	val_atual            dbo.valor      NOT NULL,
	val_segur            dbo.valor      NOT NULL,
	ind_tipo_onus        dbo.indicador      NULL,
	ind_dut_clien        dbo.indicador      NOT NULL,
	nom_dut              varchar(60) COLLATE Latin1_General_BIN     NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT pki_veiculo PRIMARY KEY  CLUSTERED ( num_entid  asc, num_veicu  asc )  WITH (FILLFACTOR = 98)
 );
GO

CREATE  NONCLUSTERED INDEX fki_num_entid ON dtb_corporativo.dbo.tbl_veiculo_entidade ( num_entid  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_des_marca ON dtb_corporativo.dbo.tbl_veiculo_entidade ( des_marca  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_des_marca_model ON dtb_corporativo.dbo.tbl_veiculo_entidade ( des_marca  asc, des_model  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_des_model ON dtb_corporativo.dbo.tbl_veiculo_entidade ( des_model  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_num_ano ON dtb_corporativo.dbo.tbl_veiculo_entidade ( num_ano  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  NONCLUSTERED INDEX inx_num_ano_fabri_model ON dtb_corporativo.dbo.tbl_veiculo_entidade ( num_ano_fabri  asc, num_ano_model  asc ) WITH (FILLFACTOR = 98);
GO

CREATE  TABLE dtb_corporativo.dbo.tbl_watch_problem_list ( 
	num_entid            dbo.numero      NOT NULL,
	ind_watch            dbo.indicador      NOT NULL,
	ind_probl            dbo.indicador      NOT NULL,
	dat_inici_watch      dbo.data      NULL,
	dat_final_watch      dbo.data      NULL,
	dat_inici_probl      dbo.data      NULL,
	dat_final_probl      dbo.data      NULL,
	ind_situa_regis      dbo.indicador      NOT NULL,
	dat_situa_regis      dbo.data      NOT NULL,
	cod_user             dbo.coduser      NOT NULL,
	CONSTRAINT PK_tbl_watch_problem_list PRIMARY KEY  CLUSTERED ( num_entid  asc ) 
 );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_anexo_email ADD CONSTRAINT fkc_envio_email_sms_anexo_email FOREIGN KEY ( cod_modul, tip_envio, num_seque_mensg ) REFERENCES dtb_corporativo.dbo.tbl_envio_email_sms( cod_modul, tip_envio, num_seque_mensg );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_assunto_envio_email_sms ADD CONSTRAINT fkc_modul_assun_envio_email_sms FOREIGN KEY ( cod_modul ) REFERENCES dtb_corporativo.dbo.tbl_modulo( cod_modul );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_centro_custo_empresa_sap ADD CONSTRAINT frk_centro_custo_centro_custo_empre FOREIGN KEY ( cod_centr_custo ) REFERENCES dtb_corporativo.dbo.tbl_centro_custo( cod_centr_custo );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_centro_custo_empresa_sap ADD CONSTRAINT frk_empresa_sap_centro_custo_empresa FOREIGN KEY ( num_empre_sap ) REFERENCES dtb_corporativo.dbo.tbl_empresa_sap( num_empre_sap );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_cobertura_coface ADD CONSTRAINT fkc_conce_cober_cofac FOREIGN KEY ( num_entid_conce ) REFERENCES dtb_corporativo.dbo.tbl_concessionaria( num_entid_conce );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_cobertura_detalhe_penhor_mercantil ADD CONSTRAINT fkc_cober_detal_penhr_merct_produ FOREIGN KEY ( num_produ ) REFERENCES dtb_corporativo.dbo.tbl_produto( num_produ );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_cobertura_detalhe_penhor_mercantil ADD CONSTRAINT fkc_cober_penhr_merct_cober_detal_penhr_merct FOREIGN KEY ( num_entid_conce, cod_penhr_merct ) REFERENCES dtb_corporativo.dbo.tbl_cobertura_penhor_mercantil( num_entid_conce, cod_penhr_merct );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_cobertura_penhor_mercantil ADD CONSTRAINT fkc_conce_cober_penhr_merct FOREIGN KEY ( num_entid_conce ) REFERENCES dtb_corporativo.dbo.tbl_concessionaria( num_entid_conce );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_cobertura_seguro ADD CONSTRAINT fkc_conce_cober_segur FOREIGN KEY ( num_entid_conce ) REFERENCES dtb_corporativo.dbo.tbl_concessionaria( num_entid_conce );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_conce_rodocohn ADD CONSTRAINT fkc_email_conce_rodocohn_conce FOREIGN KEY ( num_entid_conce ) REFERENCES dtb_corporativo.dbo.tbl_concessionaria( num_entid_conce );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_concessionaria ADD CONSTRAINT FK__tbl_conce__num_c__4A32F452 FOREIGN KEY ( num_conce_tipo ) REFERENCES dtb_corporativo.dbo.tbl_concessionaria_tipo( num_conce_tipo );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_concessionaria ADD CONSTRAINT fkc_entid_conce FOREIGN KEY ( num_entid_conce ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_concessionaria_floorplan ADD CONSTRAINT fkc_conce_conce_floor FOREIGN KEY ( num_entid_conce ) REFERENCES dtb_corporativo.dbo.tbl_concessionaria( num_entid_conce );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_concessionaria_floorplan ADD CONSTRAINT fkc_produ_conce_floor FOREIGN KEY ( num_produ ) REFERENCES dtb_corporativo.dbo.tbl_produto( num_produ );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_conta_sms ADD CONSTRAINT fkc_modul_conta_sms FOREIGN KEY ( cod_modul ) REFERENCES dtb_corporativo.dbo.tbl_modulo( cod_modul );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_controle_acesso_concessionaria ADD CONSTRAINT fkc_entid_contl_acess_conce FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_controle_acesso_entidade_concessionaria ADD CONSTRAINT fkc_contr_acess_entid_conce FOREIGN KEY ( num_entid_funci ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_declaracao_exposicao_politica ADD CONSTRAINT fkc_entid_decla_expos_polit FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_declaracao_exposicao_politica ADD CONSTRAINT fkc_tipo_expos_polit_decla_espos_polit FOREIGN KEY ( num_tipo_expos ) REFERENCES dtb_corporativo.dbo.tbl_tipo_exposicao_politica( num_tipo_expos );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_detalhe_bem ADD CONSTRAINT fkc_estru_objet_finan_detal_bem FOREIGN KEY ( cod_estru_objet ) REFERENCES dtb_corporativo.dbo.tbl_estrutura_objeto_financiamento( cod_estru_objet );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_detalhe_bem ADD CONSTRAINT fkc_marca_bem_detal_bem FOREIGN KEY ( cod_marca_bem ) REFERENCES dtb_corporativo.dbo.tbl_marca_bem( cod_marca_bem );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_detalhe_bem ADD CONSTRAINT fkc_tipo_bem_detal_bem_novo FOREIGN KEY ( cod_bem_novo ) REFERENCES dtb_corporativo.dbo.tbl_tipo_bem( cod_bem );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_detalhe_bem ADD CONSTRAINT fkc_tipo_bem_detal_bem_usado FOREIGN KEY ( cod_bem_usado ) REFERENCES dtb_corporativo.dbo.tbl_tipo_bem( cod_bem );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_email_conce_rodocohn ADD CONSTRAINT fkc_conce_rodocohn_email_conce_rodocohn FOREIGN KEY ( num_entid_conce ) REFERENCES dtb_corporativo.dbo.tbl_conce_rodocohn( num_entid_conce );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_email_template_campos ADD CONSTRAINT FK_tbl_email_template_campos_tbl_email_templates FOREIGN KEY ( id_template ) REFERENCES dtb_corporativo.dbo.tbl_email_templates( id );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_empresa ADD CONSTRAINT fkc_empre_sap_empre_local FOREIGN KEY ( num_empre_sap ) REFERENCES dtb_corporativo.dbo.tbl_empresa_sap( num_empre_sap );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_empresa ADD CONSTRAINT fkc_entid_empre FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_empresa_coligada ADD CONSTRAINT fkc_entid_empre_colig FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_endereco ADD CONSTRAINT FK__tbl_endereco_tbl_entidade FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_endereco_contrato ADD CONSTRAINT FK__tbl_ender__num_p__4D1564AE FOREIGN KEY ( num_produ ) REFERENCES dtb_corporativo.dbo.tbl_produto( num_produ );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_endereco_contrato ADD CONSTRAINT FK__tbl_endereco_contrato_tbl_endereco FOREIGN KEY ( num_entid, num_seque_ender ) REFERENCES dtb_corporativo.dbo.tbl_endereco( num_entid, num_seque_ender );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_entidade ADD CONSTRAINT FK__tbl_entidade__tbl_regional FOREIGN KEY ( num_regio ) REFERENCES dtb_corporativo.dbo.tbl_regional( num_regio );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_entidade ADD CONSTRAINT fkc_grupo_entid FOREIGN KEY ( nom_grupo ) REFERENCES dtb_corporativo.dbo.tbl_grupo( nom_grupo );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_entidade ADD CONSTRAINT frk_entidade_atividade FOREIGN KEY ( cod_ativi ) REFERENCES dtb_corporativo.dbo.tbl_atividade( cod_ativi );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_entidade_beneficiario ADD CONSTRAINT fk__tbl_entidade_beneficiario_cnpj__tbl_entidade FOREIGN KEY ( num_entid_empr ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_entidade_beneficiario ADD CONSTRAINT fk__tbl_entidade_beneficiario_cpf__tbl_entidade FOREIGN KEY ( num_entid_benef ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_entidade_compl_fisica ADD CONSTRAINT FK__tbl_entidade_tbl_compl_fisica FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_entidade_compl_fisica ADD CONSTRAINT frk_num_entid_conju FOREIGN KEY ( num_entid_conju ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_entidade_compl_juridica ADD CONSTRAINT FK__tbl_entidade_tbl_compl_juridica FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_entidade_documento ADD CONSTRAINT FK__tbl_entid__cod_t__217FB32E FOREIGN KEY ( cod_tipo_documento ) REFERENCES dtb_corporativo.dbo.tbl_tipo_documento( cod_tipo_documento );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_entidade_documento ADD CONSTRAINT FK__tbl_entid__cod_u__208B8EF5 FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_entidade_fabrica ADD CONSTRAINT FK_tbl_entidade_num_entid_fabri FOREIGN KEY ( num_entid_fabri ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_entidade_fabrica_objeto_financiamento ADD CONSTRAINT FK_tbl_entidade_fabrica_num_seque_entid_fabri FOREIGN KEY ( num_seque_entid_fabri ) REFERENCES dtb_corporativo.dbo.tbl_entidade_fabrica( num_seque_entid_fabri );
GO

O script apresentado é a definição de uma estrutura de banco de dados no SQL Server. Ele cria várias tabelas, índices e restrições para armazenar informações relacionadas a entidades, objetos financeiros, concessionárias, entre outros.

Aqui está uma descrição dos principais elementos do script:

1. Tabelas:
   - `tbl_objeto_financiamento_concessionaria`: Armazena informações sobre objetos de financiamento relacionados a concessionárias, como penetração, quantidade de bens faturados e vendidos, saldos, entre outros.
   - `tbl_objeto_financiamento_concessionaria_segmento`: Tabela semelhante à anterior, mas com informações segmentadas.
   - `tbl_participacao_empresa_entidade`: Registra informações sobre participação de empresas em entidades, como o número da empresa, cargo, porcentagem de capital, entre outros.
   - `tbl_prestacao_servico_produto_juridica`: Contém informações sobre prestação de serviços e produtos por pessoas jurídicas, como descrição, porcentagem de faturamento, etc.
   - `tbl_produto_financeiro`: Armazena detalhes sobre produtos financeiros, como nome, número de gerente, número de entidade, etc.
   - E muitas outras tabelas que armazenam informações relacionadas a várias entidades e aspectos do negócio.

2. Índices:
   - Existem índices clusterizados e não clusterizados em várias colunas para melhorar o desempenho das consultas.
   - Os índices geralmente são criados em colunas frequentemente usadas em cláusulas WHERE ou JOIN para acelerar a recuperação de dados.

3. Chaves estrangeiras:
   - As chaves estrangeiras (FOREIGN KEY) estabelecem relacionamentos entre tabelas, garantindo a integridade referencial dos dados.
   - As chaves estrangeiras estabelecem que valores em uma tabela precisam corresponder a valores em outra tabela, garantindo a consistência dos dados relacionados.

4. Restrições PRIMARY KEY:
   - As chaves primárias (PRIMARY KEY) identificam exclusivamente cada registro em uma tabela, garantindo que não haja duplicatas.

Esse script é uma definição de esquema de banco de dados que fornece a estrutura para armazenar e relacionar informações sobre entidades, objetos financeiros, concessionárias, produtos, etc., provavelmente em um ambiente corporativo. Cada tabela representa um aspecto específico do negócio, e os índices e chaves estrangeiras são projetados para otimizar o acesso aos dados e garantir a consistência dos mesmos.

Importante notar que a análise deste script isoladamente não permite determinar o funcionamento completo do sistema nem as regras de negócio que regem sua utilização. Para entender completamente o contexto e funcionalidades do sistema, é necessário um entendimento mais aprofundado da aplicação e dos dados envolvidos.

ALTER TABLE dtb_corporativo.dbo.tbl_entidade_fabrica_objeto_financiamento ADD CONSTRAINT FK_tbl_estrutura_objeto_financiamento_cod_estru_objet FOREIGN KEY ( cod_estru_objet ) REFERENCES dtb_corporativo.dbo.tbl_estrutura_objeto_financiamento( cod_estru_objet );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_entidade_naturalidade ADD CONSTRAINT FK__tbl_entid__cod_u__27388C84 FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_entidade_patrimonio ADD CONSTRAINT FK__tbl_entid__num_e__7A40F079 FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_entidade_patrimonio ADD CONSTRAINT FK__tbl_entid__num_p__7B3514B2 FOREIGN KEY ( num_patri ) REFERENCES dtb_corporativo.dbo.tbl_tipo_patrimonio( num_patri );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_entidade_transportador ADD CONSTRAINT fkc_entid_entid_trans FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_envio_email_sms ADD CONSTRAINT fkc_modul_envio_email_sms FOREIGN KEY ( cod_modul ) REFERENCES dtb_corporativo.dbo.tbl_modulo( cod_modul );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_equipe_concessionaria ADD CONSTRAINT fkc_conce_equip_conce FOREIGN KEY ( num_entid_conce ) REFERENCES dtb_corporativo.dbo.tbl_concessionaria( num_entid_conce );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_equipe_concessionaria ADD CONSTRAINT fkc_entid_equip_conce FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_estrutura_objeto_financiamento ADD CONSTRAINT frk_bem_sap_estrutura_objeto_financiamento FOREIGN KEY ( cod_bem_sap ) REFERENCES dtb_corporativo.dbo.tbl_bem_sap( cod_bem_sap );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_faturamento_entidade ADD CONSTRAINT fkc_entid_fatur_entid FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_fila_envio_email_sms ADD CONSTRAINT fkc_envio_email_sms_fila_envio_email_sms FOREIGN KEY ( cod_modul, tip_envio, num_seque_mensg ) REFERENCES dtb_corporativo.dbo.tbl_envio_email_sms( cod_modul, tip_envio, num_seque_mensg );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_finalidade_financiamento ADD CONSTRAINT fkc_entid_final_finan FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_floorplan_paginas_roles ADD CONSTRAINT FK_tbl_floorplan_paginas_num_seque_pagin FOREIGN KEY ( num_seque_pagin ) REFERENCES dtb_corporativo.dbo.tbl_floorplan_paginas( num_seque_pagin );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_forne_tipo_segur ADD CONSTRAINT fkc_tbl_forne_tipo_segur FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_fornecedor( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_fornecedor ADD CONSTRAINT frk_fornecedor_num_entid_relac FOREIGN KEY ( num_entid_relac ) REFERENCES dtb_corporativo.dbo.tbl_fornecedor( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_funcionario ADD CONSTRAINT FK__tbl_funcionario_tbl_cargo FOREIGN KEY ( cod_cargo ) REFERENCES dtb_corporativo.dbo.tbl_cargo( cod_cargo );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_funcionario ADD CONSTRAINT FK__tbl_funcionario_tbl_centro_custo FOREIGN KEY ( cod_centr_custo ) REFERENCES dtb_corporativo.dbo.tbl_centro_custo( cod_centr_custo );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_funcionario ADD CONSTRAINT FK__tbl_funcionario_tbl_entidade FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_funcionario ADD CONSTRAINT fkc_empre_funci FOREIGN KEY ( num_entid_empre ) REFERENCES dtb_corporativo.dbo.tbl_empresa( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_grupo ADD CONSTRAINT FK__tbl_grupo__num_r__413D9661 FOREIGN KEY ( num_regio ) REFERENCES dtb_corporativo.dbo.tbl_regional( num_regio );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_grupo ADD CONSTRAINT fkc_entid_grupo FOREIGN KEY ( num_entid_lider_grupo ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_grupo ADD CONSTRAINT fkc_regio_grupo FOREIGN KEY ( num_regio ) REFERENCES dtb_corporativo.dbo.tbl_regional( num_regio );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_grupo_comissao_concessionaria ADD CONSTRAINT FK_tbl_grupo_num_grupo FOREIGN KEY ( nom_grupo ) REFERENCES dtb_corporativo.dbo.tbl_grupo( nom_grupo );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_grupo_comissao_concessionaria ADD CONSTRAINT fkc_entid_comis FOREIGN KEY ( num_entid_comis ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_historico_gravacao_entidade ADD CONSTRAINT fkc_entid_histo_grava_entid FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_imovel_entidade ADD CONSTRAINT fkc_entid_imove_entid FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_informacao_venda_concessionaria ADD CONSTRAINT fkc_conce_infor_venda_conce FOREIGN KEY ( num_entid_conce ) REFERENCES dtb_corporativo.dbo.tbl_concessionaria( num_entid_conce );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_informacao_venda_concessionaria ADD CONSTRAINT fkc_pontu_star_class_infor_venda_conce FOREIGN KEY ( num_pontu_star ) REFERENCES dtb_corporativo.dbo.tbl_pontuacao_star_class( num_pontu_star );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_interface_controle_dados ADD CONSTRAINT fkc_tbl_interface_controle_dados_cod_inter_ctrle FOREIGN KEY ( cod_inter_ctrle ) REFERENCES dtb_corporativo.dbo.tbl_interface_controle( cod_inter_ctrle );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_interface_controle_dados ADD CONSTRAINT fkc_tbl_interface_controle_dados_cod_inter_modul FOREIGN KEY ( cod_inter_modul ) REFERENCES dtb_corporativo.dbo.tbl_interface_modulo( cod_inter_modul );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_interface_controle_inclusao ADD CONSTRAINT fkc_tbl_interface_controle_inclusao_cod_modul FOREIGN KEY ( cod_modul ) REFERENCES dtb_corporativo.dbo.tbl_modulo( cod_modul );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_interface_controle_inconsiste ADD CONSTRAINT fkc_tbl_interface_controle_inconsiste_cod_inter_ctrle FOREIGN KEY ( cod_inter_ctrle ) REFERENCES dtb_corporativo.dbo.tbl_interface_controle( cod_inter_ctrle );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_interface_controle_inconsiste ADD CONSTRAINT fkc_tbl_interface_controle_inconsiste_cod_modul FOREIGN KEY ( cod_modul ) REFERENCES dtb_corporativo.dbo.tbl_modulo( cod_modul );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_interface_controle_retorno ADD CONSTRAINT fkc_tbl_interface_controle_cod_inter_ctrle FOREIGN KEY ( cod_inter_ctrle ) REFERENCES dtb_corporativo.dbo.tbl_interface_controle( cod_inter_ctrle );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_interface_controle_retorno ADD CONSTRAINT fkc_tbl_interface_controle_cod_retor FOREIGN KEY ( cod_retor ) REFERENCES dtb_corporativo.dbo.tbl_interface_dicionario_retorno( cod_retor );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_interface_dicionario_retorno ADD CONSTRAINT fkc_tbl_interface_dicionario_retorno_cod_inter_modul FOREIGN KEY ( cod_inter_modul ) REFERENCES dtb_corporativo.dbo.tbl_interface_modulo( cod_inter_modul );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_interface_modulo ADD CONSTRAINT fkc_tbl_interface_modulo_cod_modul FOREIGN KEY ( cod_modul ) REFERENCES dtb_corporativo.dbo.tbl_modulo( cod_modul );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_interface_modulo_parametro ADD CONSTRAINT FK_tbl_interface_modulo_parametro FOREIGN KEY ( cod_inter_modul ) REFERENCES dtb_corporativo.dbo.tbl_interface_modulo( cod_inter_modul );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_investimento_entidade ADD CONSTRAINT fkc_entid_inves_entid FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_objeto_financiamento_concessionaria ADD CONSTRAINT fkc_conce_objet_finan_conce FOREIGN KEY ( num_entid_conce ) REFERENCES dtb_corporativo.dbo.tbl_concessionaria( num_entid_conce );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_objeto_financiamento_concessionaria ADD CONSTRAINT fkc_estru_objet_finan_objet_finan_conce FOREIGN KEY ( cod_estru_objet ) REFERENCES dtb_corporativo.dbo.tbl_estrutura_objeto_financiamento( cod_estru_objet );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_objeto_financiamento_concessionaria_segmento ADD CONSTRAINT fkc_conce_objet_finan_conce_segme FOREIGN KEY ( num_entid_conce ) REFERENCES dtb_corporativo.dbo.tbl_concessionaria( num_entid_conce );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_objeto_financiamento_concessionaria_segmento ADD CONSTRAINT fkc_estru_objet_finan_objet_finan_conce_segme FOREIGN KEY ( cod_estru_objet ) REFERENCES dtb_corporativo.dbo.tbl_estrutura_objeto_financiamento( cod_estru_objet );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_overline_entidade ADD CONSTRAINT FK__tbl_overl__num_o__475687A7 FOREIGN KEY ( num_over_propo ) REFERENCES dtb_corporativo.dbo.tbl_overline_proposta( num_over_propo );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_parametrizacao_email_sms ADD CONSTRAINT fkc_assun_envio_email_sms_param_email_sms FOREIGN KEY ( cod_modul, cod_assun ) REFERENCES dtb_corporativo.dbo.tbl_assunto_envio_email_sms( cod_modul, cod_assun );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_participacao_empresa_entidade ADD CONSTRAINT fkc_entid_parti_empre_entid FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_pontuacao_star_class ADD CONSTRAINT fkc_cod_tipo_bem_star_class FOREIGN KEY ( cod_tipo_bem_star_class ) REFERENCES dtb_corporativo.dbo.tbl_tipo_bem_star_class( cod_tipo_bem_star_class );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_prestacao_servico_produto_juridica ADD CONSTRAINT fkc_entid_presta_servi_produ_jurid FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_produto ADD CONSTRAINT fkc_produ_geren_produ FOREIGN KEY ( num_produ_geren ) REFERENCES dtb_corporativo.dbo.tbl_produto_gerencial( num_produ_geren );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_produto ADD CONSTRAINT frk_produto_sap_produto FOREIGN KEY ( cod_produ_sap ) REFERENCES dtb_corporativo.dbo.tbl_produto_sap( cod_produ_sap );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_produto_financeiro ADD CONSTRAINT fkc_empre_produ_finan FOREIGN KEY ( num_entid_empre ) REFERENCES dtb_corporativo.dbo.tbl_empresa( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_produto_financeiro ADD CONSTRAINT fkc_produ_geren_produ_finan FOREIGN KEY ( num_produ_geren ) REFERENCES dtb_corporativo.dbo.tbl_produto_gerencial( num_produ_geren );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_rateio_comissao_concessionaria ADD CONSTRAINT fkc_forne_rateio_comiss FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_fornecedor( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_referencia_bancaria_fisica ADD CONSTRAINT fkc_entid_refer_banca_fisic FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_referencia_comercial_fisica ADD CONSTRAINT fkc_entid_refer_comer_fisic FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_referencia_comercial_juridica ADD CONSTRAINT fkc_entid_refer_comer_jurid FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_referencia_endividamento ADD CONSTRAINT fkc_entid_refer_endiv FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_referencia_pessoal ADD CONSTRAINT fkc_entid_refer_pesso FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_referencia_tipo_logradouro_bndes ADD CONSTRAINT frk_refer_tipo_logra_bndes FOREIGN KEY ( num_tipo_logra_bndes ) REFERENCES dtb_corporativo.dbo.tbl_tipo_logra_bndes( num_tipo_logra_bndes );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_regional_centro_lucro ADD CONSTRAINT frk_centro_lucro_regional_centro_lucro FOREIGN KEY ( cod_centr_lucro ) REFERENCES dtb_corporativo.dbo.tbl_centro_lucro( cod_centr_lucro );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_regional_centro_lucro ADD CONSTRAINT frk_regional_regional_centro_lucro FOREIGN KEY ( num_regio ) REFERENCES dtb_corporativo.dbo.tbl_regional( num_regio );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_regional_estado ADD CONSTRAINT fkc_estad_regio_estad FOREIGN KEY ( cod_sigla_estad ) REFERENCES dtb_corporativo.dbo.tbl_estado( cod_sigla_estad );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_regional_estado ADD CONSTRAINT fkc_regio_regio_estad FOREIGN KEY ( num_regio ) REFERENCES dtb_corporativo.dbo.tbl_regional( num_regio );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_regional_risco_cobra ADD CONSTRAINT FK__tbl_regio__num_r__7918A687 FOREIGN KEY ( num_regio ) REFERENCES dtb_corporativo.dbo.tbl_regional( num_regio );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_relac_estrutura_objeto_financiamento_segur ADD CONSTRAINT fkc_estru_objet_finan_relac_estru_objet_segur FOREIGN KEY ( cod_estru_objet ) REFERENCES dtb_corporativo.dbo.tbl_estrutura_objeto_financiamento( cod_estru_objet );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_relac_produto_estrutura_objeto ADD CONSTRAINT fkc_estru_objet_finan_relac_produ_estru_objet FOREIGN KEY ( cod_estru_objet ) REFERENCES dtb_corporativo.dbo.tbl_estrutura_objeto_financiamento( cod_estru_objet );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_relac_produto_estrutura_objeto ADD CONSTRAINT fkc_produ_relac_produ_estru_objet FOREIGN KEY ( num_produ ) REFERENCES dtb_corporativo.dbo.tbl_produto( num_produ );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_relac_visao_produto_financeiro ADD CONSTRAINT fkc_produ_finan_relac_visao_produ_finan FOREIGN KEY ( num_produ_finan ) REFERENCES dtb_corporativo.dbo.tbl_produto_financeiro( num_produ_finan );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_relac_visao_produto_financeiro ADD CONSTRAINT fkc_produ_relac_visao_produ_finan FOREIGN KEY ( num_produ ) REFERENCES dtb_corporativo.dbo.tbl_produto( num_produ );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_relac_visao_produto_financeiro ADD CONSTRAINT fkc_visao_produ_relac_visao_produ_finan FOREIGN KEY ( cod_visao ) REFERENCES dtb_corporativo.dbo.tbl_visao_produto( cod_visao );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_relacionamento_entidade ADD CONSTRAINT frk_relac_entid_infer FOREIGN KEY ( num_entid_infer ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_relacionamento_entidade ADD CONSTRAINT frk_relac_entid_super FOREIGN KEY ( num_entid_super ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_remuneracao_fixa ADD CONSTRAINT fkc_remun_conce FOREIGN KEY ( num_entid_conce ) REFERENCES dtb_corporativo.dbo.tbl_concessionaria( num_entid_conce );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_remuneracao_fixa ADD CONSTRAINT fkc_remun_estru_objet FOREIGN KEY ( cod_estru_objet ) REFERENCES dtb_corporativo.dbo.tbl_estrutura_objeto_financiamento( cod_estru_objet );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_remuneracao_fixa ADD CONSTRAINT fkc_remun_produ FOREIGN KEY ( num_produ ) REFERENCES dtb_corporativo.dbo.tbl_produto( num_produ );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_representante_legal ADD CONSTRAINT fkc_entid_repre_legal_entid FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_representante_legal ADD CONSTRAINT fkc_entid_repre_legal_entid_repre FOREIGN KEY ( num_entid_repre ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_seguro_bem_star_class ADD CONSTRAINT fkc2_cod_tipo_bem_star_class FOREIGN KEY ( cod_tipo_bem_star_class ) REFERENCES dtb_corporativo.dbo.tbl_tipo_bem_star_class( cod_tipo_bem_star_class );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_seras_contra ADD CONSTRAINT fki_cod_statu_seras_contra FOREIGN KEY ( cod_statu_seras_contra ) REFERENCES dtb_corporativo.dbo.tbl_statu_seras_contra( cod_statu_seras_contra );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_sistema_fabrica_bu ADD CONSTRAINT FK__tbl_siste__num_s__163DB573 FOREIGN KEY ( num_seque_siste_fabri ) REFERENCES dtb_corporativo.dbo.tbl_sistema_fabrica( num_seque_siste_fabri );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_socio_entidade ADD CONSTRAINT fkc_entid_socio_entid_1 FOREIGN KEY ( num_entid_socio ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_socio_entidade ADD CONSTRAINT fkc_entid_socio_entid_2 FOREIGN KEY ( num_entid_empre ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_tipo_bem ADD CONSTRAINT FK_tbl_classif_gbf FOREIGN KEY ( cod_class_gbf ) REFERENCES dtb_corporativo.dbo.tbl_classif_gbf( cod_class_gbf );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_tipo_bem ADD CONSTRAINT FK_tbl_tipo_bem_tbl_classif_delinquency FOREIGN KEY ( cod_class_delin ) REFERENCES dtb_corporativo.dbo.tbl_classif_delinquency( cod_class_delin );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_tipo_bem ADD CONSTRAINT FK_tbl_tipo_bem_tbl_classif_delinquency_1 FOREIGN KEY ( cod_class_delin_portf ) REFERENCES dtb_corporativo.dbo.tbl_classif_delinquency( cod_class_delin );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_tipo_bem ADD CONSTRAINT FK_tbl_tipo_bem_tbl_tipo_veiculo FOREIGN KEY ( tip_veicu ) REFERENCES dtb_corporativo.dbo.tbl_tipo_veiculo( tip_veicu );
GO

O trecho de código que você forneceu contém várias instruções SQL do tipo "ALTER TABLE", que adicionam restrições de chave estrangeira (foreign key) a tabelas em um banco de dados SQL Server. Essas restrições são usadas para garantir a integridade referencial dos dados, ou seja, para garantir que os valores em uma coluna que faz referência a outra tabela correspondam aos valores válidos nessa tabela referenciada.

Cada instrução "ALTER TABLE" segue o padrão geral:

```
ALTER TABLE nome_tabela_origem
ADD CONSTRAINT nome_da_chave_estrangeira
FOREIGN KEY (coluna_origem) REFERENCES nome_tabela_destino(coluna_destino);
```

Onde:
- `nome_tabela_origem` é o nome da tabela onde a chave estrangeira será adicionada.
- `nome_da_chave_estrangeira` é um nome descritivo para a restrição de chave estrangeira.
- `coluna_origem` é a coluna na tabela de origem que será a chave estrangeira.
- `nome_tabela_destino` é o nome da tabela que será referenciada pela chave estrangeira.
- `coluna_destino` é a coluna na tabela de destino que será referenciada pela chave estrangeira.

Cada uma das instruções descreve uma relação entre tabelas diferentes no banco de dados. A partir das informações fornecidas, não é possível determinar o entendimento completo do negócio sem conhecer a estrutura das tabelas envolvidas e suas respectivas colunas.

Essas restrições de chave estrangeira são usadas para garantir que os dados relacionados entre as tabelas permaneçam consistentes, evitando, por exemplo, que um registro em uma tabela faça referência a um registro inexistente na tabela relacionada.

Se você tiver alguma dúvida específica sobre o código ou sobre o entendimento do negócio, por favor, forneça mais informações para que eu possa ajudá-lo melhor.

ALTER TABLE dtb_corporativo.dbo.tbl_tipo_bem ADD CONSTRAINT fkc_estru_objet_finan_tipo_bem FOREIGN KEY ( cod_estru_objet ) REFERENCES dtb_corporativo.dbo.tbl_estrutura_objeto_financiamento( cod_estru_objet );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_tipo_entidade_relacionamento ADD CONSTRAINT fk_tpentid FOREIGN KEY ( num_tipo_entid ) REFERENCES dtb_corporativo.dbo.tbl_tipo_entidade( num_tipo_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_tipo_veiculo_fabrica ADD CONSTRAINT fkc_estru_objet_finan_tipo_veicu_fabri FOREIGN KEY ( cod_estru_objet ) REFERENCES dtb_corporativo.dbo.tbl_estrutura_objeto_financiamento( cod_estru_objet );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_validade_parametro_geral ADD CONSTRAINT fkc_param_geral_valid_param_geral FOREIGN KEY ( num_param ) REFERENCES dtb_corporativo.dbo.tbl_parametro_geral( num_param );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_veiculo_entidade ADD CONSTRAINT fkc_entid_veicu_entid FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

ALTER TABLE dtb_corporativo.dbo.tbl_watch_problem_list ADD CONSTRAINT FK_watch_problem_list FOREIGN KEY ( num_entid ) REFERENCES dtb_corporativo.dbo.tbl_entidade( num_entid );
GO

execute [dtb_corporativo].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Numero do produto comercial da tabela dtb_simulacao..tbl_produto_comercial' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbl_tipo_produto_comerical_linha_bndes', @level2type=N'COLUMN',@level2name=N'num_produ_comer';
GO

execute [dtb_corporativo].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Tipo de linha do financiamento do BNDES podendo ser "FIN", "CAMINHAO","ONIBUS"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbl_tipo_produto_comerical_linha_bndes', @level2type=N'COLUMN',@level2name=N'tip_linha_finan';
GO

execute [dtb_corporativo].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Codigo do programa do BNDES, relarionado com a tabela dtb_simulacao..tbl_produto_programa_finame, num_progr_bndes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbl_tipo_produto_comerical_linha_bndes', @level2type=N'COLUMN',@level2name=N'cod_progr';
GO

execute [dtb_corporativo].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Codigo do subprograma do BNDES, relarionado com a tabela dtb_simulacao..tbl_produto_programa_finame, num_subpg_bndes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbl_tipo_produto_comerical_linha_bndes', @level2type=N'COLUMN',@level2name=N'cod_sub_progr';
GO

Esses comandos SQL Server representam a criação de restrições de chave estrangeira (foreign key) e a adição de propriedades estendidas em uma base de dados chamada "dtb_corporativo". Vou explicar o significado em português:

1. Adicionar restrição de chave estrangeira na tabela "tbl_tipo_bem":
   A instrução "ALTER TABLE" está sendo utilizada para adicionar uma restrição de chave estrangeira chamada "fkc_estru_objet_finan_tipo_bem" na coluna "cod_estru_objet" da tabela "tbl_tipo_bem". Essa restrição faz referência à tabela "tbl_estrutura_objeto_financiamento" na coluna "cod_estru_objet", criando assim uma relação entre as duas tabelas.

2. Adicionar restrição de chave estrangeira na tabela "tbl_tipo_entidade_relacionamento":
   Similar ao primeiro comando, esse trecho adiciona uma restrição de chave estrangeira chamada "fk_tpentid" na coluna "num_tipo_entid" da tabela "tbl_tipo_entidade_relacionamento". A chave estrangeira faz referência à coluna "num_tipo_entid" da tabela "tbl_tipo_entidade".

3. Adicionar restrição de chave estrangeira na tabela "tbl_tipo_veiculo_fabrica":
   Este comando adiciona uma restrição de chave estrangeira chamada "fkc_estru_objet_finan_tipo_veicu_fabri" na coluna "cod_estru_objet" da tabela "tbl_tipo_veiculo_fabrica". Essa restrição estabelece uma relação com a tabela "tbl_estrutura_objeto_financiamento" na coluna "cod_estru_objet".

4. Adicionar restrição de chave estrangeira na tabela "tbl_validade_parametro_geral":
   Essa instrução cria uma restrição de chave estrangeira chamada "fkc_param_geral_valid_param_geral" na coluna "num_param" da tabela "tbl_validade_parametro_geral". A chave estrangeira está relacionada com a coluna "num_param" da tabela "tbl_parametro_geral".

5. Adicionar restrição de chave estrangeira na tabela "tbl_veiculo_entidade":
   Esse trecho adiciona uma restrição de chave estrangeira chamada "fkc_entid_veicu_entid" na coluna "num_entid" da tabela "tbl_veiculo_entidade". A chave estrangeira faz referência à coluna "num_entid" da tabela "tbl_entidade".

6. Adicionar restrição de chave estrangeira na tabela "tbl_watch_problem_list":
   Essa instrução adiciona uma restrição de chave estrangeira chamada "FK_watch_problem_list" na coluna "num_entid" da tabela "tbl_watch_problem_list". A chave estrangeira está relacionada com a coluna "num_entid" da tabela "tbl_entidade".

7. Adicionar propriedades estendidas nas colunas da tabela "tbl_tipo_produto_comerical_linha_bndes":
   Estes comandos "execute [dtb_corporativo].sys.sp_addextendedproperty" estão sendo utilizados para adicionar descrições estendidas (metadados) em algumas colunas da tabela "tbl_tipo_produto_comerical_linha_bndes". As descrições estão relacionadas às colunas "num_produ_comer", "tip_linha_finan", "cod_progr" e "cod_sub_progr", e são utilizadas para fornecer informações adicionais sobre o significado e o propósito dessas colunas.

Essas alterações no esquema do banco de dados são importantes para garantir a integridade dos dados e estabelecer relações entre as tabelas, o que é fundamental em bancos de dados relacionais como o SQL Server. As propriedades estendidas adicionam informações adicionais e metadados úteis para a compreensão das tabelas e colunas dentro do banco de dados.