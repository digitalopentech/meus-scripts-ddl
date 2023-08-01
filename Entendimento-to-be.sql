IF NOT EXISTS(SELECT * FROM sys.databases WHERE name='dtb_pega')
BEGIN
CREATE DATABASE [dtb_pega]
END;
GO

USE [dtb_pega];
GO

CREATE SCHEMA [ClientOnboarding];
GO

CREATE SEQUENCE SEQCONJUGE START WITH 1 INCREMENT BY 1;
GO

CREATE SEQUENCE SEQPROCURADOR START WITH 1 INCREMENT BY 1;
GO

CREATE SEQUENCE SeqPessoa START WITH 1 INCREMENT BY 1;
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblCBO ( 
	CodCBO               int      NOT NULL,
	DsCBO                varchar(200)      NOT NULL,
	IsAtivo              bit  DEFAULT 0    NOT NULL,
	DsOperador           varchar(70)      NOT NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	CONSTRAINT PK_tblCbo PRIMARY KEY  ( CodCBO ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblCNAESessao ( 
	CodCNAESessao        int    IDENTITY(1,1)  NOT NULL,
	DsSigla              char(1)      NOT NULL,
	DsDescricao          varchar(200)      NOT NULL,
	DsOperador           varchar(70)      NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	CONSTRAINT PK_tblCNAESessao PRIMARY KEY  ( CodCNAESessao ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblContatoClientePj ( 
	Codcontato           int    IDENTITY  NOT NULL,
	CodClientePJ         int      NOT NULL,
	DsDdd                int      NULL,
	DsTelefone           varchar(10)      NULL,
	DsEmail              varchar(100)      NULL,
	DsRecebeBoleto       bit  DEFAULT 0    NULL,
	DsContatoPrincipal   bit  DEFAULT 0    NULL,
	DsOperador           varchar(70)      NOT NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	DsDescricaoContato   varchar(150)      NULL,
	DatAlteracao         datetime      NULL,
	DsUsuario            varchar(50)      NULL,
	SysStartTime         datetime2  DEFAULT sysutcdatetime()    NOT NULL,
	SysEndTime           datetime2  DEFAULT CONVERT([datetime2](7),'9999-12-31 23:59:59.9999999')    NOT NULL,
	IsConsultaSms        bit  DEFAULT 0    NULL,
	CONSTRAINT PK_tblContatoClientePj PRIMARY KEY  ( Codcontato ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblCriterioObjetivo ( 
	CodCriterioObjetivo  int    IDENTITY  NOT NULL,
	DsCriterioObjetivo   varchar(30)      NOT NULL,
	DsOperador           varchar(70)      NOT NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	CONSTRAINT PK_tblCriterioObjetivo PRIMARY KEY  ( CodCriterioObjetivo ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblEstadoCivil ( 
	CodEstadoCivil       int    IDENTITY  NOT NULL,
	DsEstadoCivil        varchar(50)      NULL,
	DsOperador           varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	CONSTRAINT PK_tblEstadoCivil PRIMARY KEY  ( CodEstadoCivil ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblGenero ( 
	CodGenero            int    IDENTITY  NOT NULL,
	DsGenero             varchar(100)      NOT NULL,
	DsOperador           varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	CONSTRAINT PK_tblGenero PRIMARY KEY  ( CodGenero ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblGerente ( 
	CodGerente           int    IDENTITY  NOT NULL,
	DsNomeGerente        varchar(80)      NOT NULL,
	DsOperador           varchar(70)      NULL,
	DatUltimaAtualizacao datetime      NULL,
	DatInclusao          datetime      NOT NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	CONSTRAINT PK_tblGerente PRIMARY KEY  ( CodGerente ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblMes ( 
	CodMes               int      NOT NULL,
	DsMes                varchar(35)      NULL,
	CONSTRAINT PK_tblMes PRIMARY KEY  ( CodMes ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblMotivoROB ( 
	CodMotivoROB         int    IDENTITY  NOT NULL,
	DsMotivoROB          varchar(150)      NOT NULL,
	CONSTRAINT PK_tblMotivoROB PRIMARY KEY  ( CodMotivoROB ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblNaturezaJuridica ( 
	CodNaturezaJuridica  int    IDENTITY  NOT NULL,
	DsCodigoNaturezaJuridica varchar(8)      NULL,
	DsNaturezaJuridica   varchar(150)      NOT NULL,
	DsOperador           varchar(70)      NOT NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	CONSTRAINT PK_tblNaturezaJuridica PRIMARY KEY  ( CodNaturezaJuridica ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblPactoNupcial ( 
	CodPactoNupcial      int    IDENTITY  NOT NULL,
	DsPactoNupcial       varchar(35)      NULL,
	DsOperador           varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	CONSTRAINT PK_tblPactoNupcial PRIMARY KEY  ( CodPactoNupcial ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblPais ( 
	CodPais              int      NOT NULL,
	DsPais               varchar(150)      NOT NULL,
	DsSigla              varchar(5)      NULL,
	DsOperador           varchar(50)      NOT NULL,
	DsOperadorAtualizacao datetime      NULL,
	DatInclusao          datetime      NOT NULL,
	DatUltimaAtualizacao datetime      NULL,
	CONSTRAINT PK_tblPais PRIMARY KEY  ( CodPais ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblPeriodoFaturamento ( 
	CodPeriodoFaturamento int    IDENTITY  NOT NULL,
	DsPeriodoFaturamento varchar(25)      NULL,
	CONSTRAINT PK_tblPeriodoFaturamento PRIMARY KEY  ( CodPeriodoFaturamento ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblPessoa ( 
	CodPessoa            int      NOT NULL,
	CodTipoPessoa        int      NOT NULL,
	DsDocumento          bigint      NOT NULL,
	DsNome               varchar(100)      NOT NULL,
	DsAutorizaBacen      bit  DEFAULT 0    NULL,
	IsAtivo              bit      NOT NULL,
	DsOperador           varchar(70)      NOT NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	CONSTRAINT pk_tblPessoa PRIMARY KEY  ( CodPessoa ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblPessoaConcessionaria ( 
	CodConcessionaria    int    IDENTITY  NOT NULL,
	CodPessoa            int      NOT NULL,
	CodRegional          int      NOT NULL,
	DsStatus             bit  DEFAULT 0    NOT NULL,
	DsGerenteDeNegocio   varchar(70)      NULL,
	DsApelidoInterno     varchar(70)      NULL,
	DsCBFC               varchar(30)      NULL,
	DsBPMStar            varchar(30)      NULL,
	CodAnalistaWholeSale varchar(20)      NULL,
	DsNomeAnalistaWholeSale varchar(70)      NULL,
	DsFinancialHold      bit      NULL,
	DsDesenbolsoZero     bit      NULL,
	DsCredenciada        bit      NULL,
	DsOperador           varchar(70)      NOT NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	CONSTRAINT PK_tblPessoaConcessionaria PRIMARY KEY  ( CodConcessionaria ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblPessoaContato ( 
	CodContato           int    IDENTITY(1,1)  NOT NULL,
	CodPessoa            int      NOT NULL,
	IsContatoPrincipal   bit      NOT NULL,
	DsDescricaoContato   varchar(150)      NULL,
	DsDDD                smallint      NULL,
	DsTelefone           varchar(30)      NULL,
	DsEmail              varchar(100)      NULL,
	IsRecebeBoleto       bit      NOT NULL,
	IsConsultaSms        bit      NOT NULL,
	DsOperador           varchar(70)      NOT NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	CONSTRAINT pk_tblPessoaContato PRIMARY KEY  ( CodContato ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblPessoaDadosReceitaFederal ( 
	CodDadosRF           int    IDENTITY(1,1)  NOT NULL,
	CodPessoa            int      NOT NULL,
	CodSituacaoCadastralRF int      NULL,
	DsSituacaoCadastralRF varchar(50)      NULL,
	DatUltimaConsultaRF  datetime      NULL,
	DsSituacaoEspecialRF varchar(150)      NULL,
	DsMotivoRF           varchar(100)      NULL,
	DsResultadoConsulta  varchar(5000)      NULL,
	DsOperador           varchar(70)      NOT NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	CONSTRAINT pk_tblPessoaDadosReceitaFederal PRIMARY KEY  ( CodDadosRF ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblPessoaFaturamentoPJ ( 
	Codfaturamento       int    IDENTITY  NOT NULL,
	CodPessoa            int      NOT NULL,
	CodPeriodoFaturamento int      NULL,
	CodMes               int      NOT NULL,
	DsAno                int      NOT NULL,
	VlFaturamento        decimal(18,2)      NULL,
	DsOperador           varchar(70)      NOT NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	CONSTRAINT PK_tblPessoaFaturamentoPJ PRIMARY KEY  ( Codfaturamento ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblPessoaQuadroSocietario ( 
	CodQuadroSocietario  int    IDENTITY(1,1)  NOT NULL,
	CodEmpresa           int      NOT NULL,
	CodMembro            int      NOT NULL,
	VlParticipacao       decimal(18,6)      NULL,
	DatEntrada           date      NULL,
	IsSocioAdministrador bit      NOT NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DsOperador           varchar(70)      NOT NULL,
	CONSTRAINT pk_tblPessoaQuadroSocietario PRIMARY KEY  ( CodQuadroSocietario ) ,
	CONSTRAINT unq_tblPessoaQuadroSocietario UNIQUE ( CodEmpresa, CodMembro ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblPessoaRepresentanteLegal ( 
	CodPessoaRepresentanteLegal int    IDENTITY  NOT NULL,
	CodPessoa            int      NOT NULL,
	CodRepresentante     int      NOT NULL,
	DsOperador           varchar(70)      NOT NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	CONSTRAINT PK_tblPessoaRepresentanteLegal PRIMARY KEY  ( CodPessoaRepresentanteLegal ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblRegimeCasamento ( 
	CodRegimeCasamento   int    IDENTITY  NOT NULL,
	DsRegimeCasamento    varchar(35)      NOT NULL,
	DsOperador           varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	CONSTRAINT PK_tblRegimeCasamento PRIMARY KEY  ( CodRegimeCasamento ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblRegimeTributario ( 
	CodRegimeTributario  int    IDENTITY  NOT NULL,
	DsRegimeTributario   varchar(150)      NULL,
	CONSTRAINT PK_tblRegimeTributario PRIMARY KEY  ( CodRegimeTributario ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblTamanhoConcessionaria ( 
	CodTamanhoConcessionaria int    IDENTITY  NOT NULL,
	DsTamanhoConcessionaria varchar(35)      NOT NULL,
	CONSTRAINT PK_tblTamanhoConcessionaria PRIMARY KEY  ( CodTamanhoConcessionaria ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblTipoCliente ( 
	CodTipoCliente       int    IDENTITY  NOT NULL,
	DsTipoCliente        varchar(30)      NOT NULL,
	CONSTRAINT PK_tblTipoCliente PRIMARY KEY  ( CodTipoCliente ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblTipoContato ( 
	CodTipoContato       int    IDENTITY(1,1)  NOT NULL,
	DsTipoContato        varchar(50)      NOT NULL,
	DsOperador           varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	CONSTRAINT pk_tblTipoContato PRIMARY KEY  ( CodTipoContato ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblTipoEndereco ( 
	CodTipoEndereco      int    IDENTITY  NOT NULL,
	DsTipoEndereco       varchar(35)      NOT NULL,
	EnderecoFichaPF      bit  DEFAULT 0    NOT NULL,
	EnderecoFichaPJ      bit      NOT NULL,
	DsOperador           varchar(70)      NOT NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	CONSTRAINT PK_tblTipoEndereco PRIMARY KEY  ( CodTipoEndereco ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblTipoIntegrante ( 
	CodTipoIntegrante    int    IDENTITY  NOT NULL,
	DsTipoIntegrante     varchar(30)      NOT NULL,
	DsOperador           varchar(50)      NULL,
	DsOperadorAtualizacao varchar(50)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	CONSTRAINT PK_tblTipoIntegrante PRIMARY KEY  ( CodTipoIntegrante ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblTipoReceita ( 
	CodTipoReceita       int    IDENTITY  NOT NULL,
	DsTipoReceita        varchar(35)      NOT NULL,
	CONSTRAINT PK_tblTipoReceita PRIMARY KEY  ( CodTipoReceita ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblTipoRetencao ( 
	CodTipoRetencao      int    IDENTITY  NOT NULL,
	DsTipoRetencao       varchar(35)      NULL,
	CONSTRAINT PK_tblTipoRetencao PRIMARY KEY  ( CodTipoRetencao ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblTipoTransporte ( 
	CodTipoDeTransporte  int    IDENTITY  NOT NULL,
	DsTipoTransporte     varchar(70)      NOT NULL,
	DsOperador           varchar(70)      NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	CONSTRAINT PK_tblTipoTransporte PRIMARY KEY  ( CodTipoDeTransporte ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblVendedor ( 
	CodGerente           int      NOT NULL,
	CodVendedor          int    IDENTITY  NOT NULL,
	DsNomeVendedor       varchar(80)      NOT NULL,
	DsOperador           varchar(70)      NULL,
	DatUltimaAtualizacao datetime      NULL,
	DatInclusao          datetime      NOT NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	CONSTRAINT PK_tblVendedor PRIMARY KEY  ( CodVendedor ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblCNAEDivisao ( 
	CodCNAEDivisao       int      NOT NULL,
	CodCNAESessao        int      NOT NULL,
	DsDescricao          varchar(200)      NOT NULL,
	DsOperador           varchar(70)      NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	CodCNAEGrupo         int      NOT NULL,
	CONSTRAINT PK_tblCNAEDivisao PRIMARY KEY  ( CodCNAEDivisao ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblCNAEGrupo ( 
	CodCNAEGrupo         int      NOT NULL,
	CodCNAEDivisao       int      NOT NULL,
	DsDescricao          varchar(200)      NOT NULL,
	DsOperador           varchar(70)      NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	CONSTRAINT PK_tblCNAEGrupo PRIMARY KEY  ( CodCNAEGrupo ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblCliente ( 
	CodCliente           int    IDENTITY(1,1)  NOT NULL,
	CodPessoa            int      NOT NULL,
	CodGrupoEconomico    int      NULL,
	CodSegmento          int      NULL,
	CodTipoReceita       int      NULL,
	CodMotivoROB         int      NULL,
	VlROB                decimal(18,2)      NULL,
	DatReferenciaROB     date      NULL,
	DsObservacaoROB      varchar(500)      NULL,
	ParteCalculoROB      bit  DEFAULT 0    NULL,
	IsLider              bit  DEFAULT 0    NULL,
	DsOperador           varchar(70)      NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	CONSTRAINT pk_tblCliente PRIMARY KEY  ( CodCliente ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblConcessionaria ( 
	CodConcessionaria    int    IDENTITY  NOT NULL,
	CodPessoa            int      NOT NULL,
	CodRegional          int      NOT NULL,
	DsStatus             bit  DEFAULT 0    NOT NULL,
	DsOperador           varchar(70)      NOT NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	CONSTRAINT PK_tblConcessionaria PRIMARY KEY  ( CodConcessionaria ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblConcessionariaEnquadramentoBem ( 
	CodConcessionariaEnquadramentoBem int    IDENTITY(1,1)  NOT NULL,
	CodConcessionaria    int      NOT NULL,
	CodEnquadramentoBem  int      NOT NULL,
	DsOperador           varchar(70)      NOT NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	CONSTRAINT pk_tblEnquadramentoBem PRIMARY KEY  ( CodConcessionariaEnquadramentoBem ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblConcessionariaGerente ( 
	CodConcessionariaGerente int    IDENTITY(1,1)  NOT NULL,
	CodConcessionaria    int      NOT NULL,
	CodGerente           int      NOT NULL,
	DsOperador           varchar(50)      NULL,
	DatUltimaAtualizacao datetime      NULL,
	DatInclusao          datetime      NOT NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	CONSTRAINT pk_tblConcessionariaGerente PRIMARY KEY  ( CodConcessionariaGerente ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblConcessionariaQuadroSocietario ( 
	CodQuadroSocietario  int      NOT NULL,
	CodConcessionaria    int      NULL,
	CodAtuacao           int      NULL,
	DatEntrada           datetime  DEFAULT getdate()    NOT NULL,
	VlParticipacao       decimal(18,6)      NULL,
	DsOperador           varchar(70)      NOT NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	CONSTRAINT PK_tblConcessionariaQuadroSocietario PRIMARY KEY  ( CodQuadroSocietario ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblConcessionariaTipoBem ( 
	CodConcessionaria    int      NOT NULL,
	CodTipoBem           int      NOT NULL,
	DsOperador           varchar(70)      NOT NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	CONSTRAINT pk_tblConcessionariaTipoBem PRIMARY KEY  ( CodConcessionaria, CodTipoBem ) 
 );
GO

O script fornecido é uma série de comandos SQL para criar um banco de dados chamado "dtb_pega" e várias tabelas dentro dele. Esse banco de dados parece estar relacionado a um sistema de "Client Onboarding" (Integração de Clientes). Abaixo está o entendimento do negócio, com base nos comandos SQL fornecidos:

1. Criação do banco de dados:
O script inicia verificando se o banco de dados "dtb_pega" já existe. Se não existir, ele cria o banco de dados.

2. Utilização do banco de dados criado:
O script usa o banco de dados "dtb_pega" criado anteriormente, para que todas as tabelas subsequentes sejam criadas nesse banco de dados.

3. Criação das tabelas:
A seguir, várias tabelas são criadas no banco de dados "dtb_pega", todas elas pertencentes ao esquema (schema) "ClientOnboarding". Aqui estão algumas das tabelas criadas:

- Tabela "tblCBO": Armazena informações sobre Códigos Brasileiros de Ocupação (CBO).
- Tabela "tblCNAESessao": Contém informações sobre Códigos Nacionais de Atividade Econômica (CNAE) - Sessão.
- Tabela "tblContatoClientePj": Armazena informações de contatos para clientes Pessoa Jurídica.
- Tabela "tblPessoa": Contém informações sobre pessoas (indivíduos ou empresas).
- Tabela "tblCliente": Armazena informações específicas sobre clientes do sistema.

Cada tabela possui uma série de colunas com tipos de dados específicos para armazenar os dados relevantes.

Além das tabelas, há também algumas sequências criadas ("SEQCONJUGE", "SEQPROCURADOR" e "SeqPessoa") que são usadas para gerar automaticamente valores numéricos ao adicionar registros em algumas tabelas.

Em resumo, o script cria um banco de dados com várias tabelas e sequências relacionadas à integração de clientes. Essas tabelas são usadas para armazenar informações sobre clientes, contatos, atividades econômicas, entre outros detalhes relevantes para o processo de onboarding de clientes. Certamente, há outras partes do sistema que interagem com essas tabelas e complementam o funcionamento geral do sistema de integração de clientes.

CREATE  TABLE dtb_pega.ClientOnboarding.tblEstado ( 
	CodEstado            int    IDENTITY  NOT NULL,
	CodPais              int      NOT NULL,
	CodIbgeUf            int      NOT NULL,
	DsUf                 varchar(2)      NOT NULL,
	DsNomeEstado         varchar(50)      NOT NULL,
	DsOperador           varchar(50)      NOT NULL,
	DsOperadorAtualizacao datetime      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime      NULL,
	CONSTRAINT PK_tblEstado PRIMARY KEY  ( CodEstado ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblGrupoEconomico ( 
	CodGrupoEconomico    int    IDENTITY  NOT NULL,
	DsNome               varchar(150)      NOT NULL,
	CodSegmento          int      NOT NULL,
	CodRegional          int      NOT NULL,
	CodCriterioObjetivo  int      NULL,
	CodTipoReceita       int      NULL,
	CodMotivoROB         int      NULL,
	DsCriterioSubjetivo  varchar(150)      NULL,
	DatReferenciaROB     datetime      NULL,
	DsDescritivoGrupoEconomico varchar(300)      NULL,
	VlROB                decimal(18,2)      NULL,
	DsOperador           varchar(70)      NOT NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	CONSTRAINT PK_tblGrupoEconomico PRIMARY KEY  ( CodGrupoEconomico ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblMembroGrupoEconomico ( 
	CodMembroGrupoEconomico int    IDENTITY  NOT NULL,
	CodGrupoEconomico    int      NOT NULL,
	DsOperador           varchar(70)      NOT NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	CONSTRAINT PK_tblMembroGrupoEconomico PRIMARY KEY  ( CodMembroGrupoEconomico ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblPessoaDadosPJ ( 
	CodDadosPJ           int    IDENTITY  NOT NULL,
	CodPessoa            int      NOT NULL,
	DsNomeFantasia       varchar(200)      NULL,
	DatFundacao          date      NULL,
	CodPaisSede          int      NOT NULL,
	VlPatrimonioEstimado decimal(18,2)      NULL,
	DsJustificativaFaturamento varchar(150)      NULL,
	DsOperador           varchar(70)      NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	CodNaturezaJuridica  int      NULL,
	CodRegimeTributario  int      NULL,
	VlCapitalSocial      decimal(18,2)  DEFAULT 0    NOT NULL,
	QtFuncionario        int      NULL,
	CONSTRAINT PK_tblPessoaDadosPJ PRIMARY KEY  ( CodDadosPJ ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblPessoaOcupacaoPF ( 
	CodOcupacaoPF        int    IDENTITY  NOT NULL,
	CodPessoa            int      NOT NULL,
	CodTipoDeTransporte  int      NULL,
	CodCBO               int      NULL,
	DsCBO                varchar(200)      NULL,
	DsNumeroANTT         varchar(20)      NULL,
	IsCooperativa        bit  DEFAULT 0    NULL,
	VlRenda              decimal(18,2)      NULL,
	DatInicioAtividade   date      NULL,
	DsOperador           varchar(70)      NOT NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	CONSTRAINT PK_tblPessoaOcupacaoPF PRIMARY KEY  ( CodOcupacaoPF ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblPessoaRelacaoConjugal ( 
	CodRelacaoConjugal   int    IDENTITY  NOT NULL,
	CodPessoa            int      NOT NULL,
	CodPessoaConjuge     int      NOT NULL,
	CodRegimeCasamento   int      NULL,
	DsPactoAntiNupcial   bit  DEFAULT 0    NULL,
	DsOperador           varchar(70)      NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	CONSTRAINT pk_PessoaRelacaoConjugal PRIMARY KEY  ( CodRelacaoConjugal ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblWholeSale ( 
	CodWholeSale         int    IDENTITY  NOT NULL,
	CodConcessionaria    int      NOT NULL,
	CodTipoRetencao      int      NULL,
	CodTamanhoConcessionaria int      NOT NULL,
	DsGerenteDeNegocio   varchar(70)      NOT NULL,
	DsApelidoInterno     varchar(70)      NOT NULL,
	DsCBFC               varchar(30)      NULL,
	DsBPMStar            varchar(30)      NULL,
	CodAnalistaWholeSale varchar(20)      NULL,
	DsNomeAnalistaWholeSale varchar(70)      NULL,
	DsFinancialHold      bit      NULL,
	DsCredenciada        bit      NULL,
	DsDesenbolsoZero     bit      NULL,
	CONSTRAINT PK_tblWholesale PRIMARY KEY  ( CodWholeSale ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblAnalistaWholeSale ( 
	CodAnalistaWholeSale int    IDENTITY  NOT NULL,
	CodWholeSale         int      NOT NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatAlteracao         datetime      NULL,
	DsUsuario            varchar(50)      NULL,
	SysStartTime         datetime2  DEFAULT sysutcdatetime()    NOT NULL,
	SysEndTime           datetime2  DEFAULT CONVERT([datetime2](7),'9999-12-31 23:59:59.9999999')    NOT NULL,
	DsOperador           varchar(70)      NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatUltimaAtualizacao datetime      NULL,
	CONSTRAINT pk_tblAnalistaWholeSale PRIMARY KEY  ( CodAnalistaWholeSale, CodWholeSale ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblCNAEClasse ( 
	CodCNAEClasse        int      NOT NULL,
	DsDescricao          varchar(200)      NOT NULL,
	DsOperador           varchar(70)      NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	CodCNAEGrupo         int      NOT NULL,
	CONSTRAINT PK_tblCNAEClasse PRIMARY KEY  ( CodCNAEClasse ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblCidade ( 
	CodCidade            int    IDENTITY  NOT NULL,
	CodEstado            int      NULL,
	CodIbgeUf            int      NOT NULL,
	CodIbge              int      NOT NULL,
	DsUf                 varchar(2)      NOT NULL,
	DsMunicipio          varchar(50)      NOT NULL,
	DsOperador           varchar(50)      NOT NULL,
	DsOperadorAtualizacao datetime      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime      NULL,
	CONSTRAINT PK_tblCidade PRIMARY KEY  ( CodCidade ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblPessoaDadosPF ( 
	CodDadosPF           int    IDENTITY  NOT NULL,
	CodPessoa            int      NOT NULL,
	DsNomeSocial         varchar(200)      NULL,
	DatNascimento        date      NULL,
	CodGenero            int      NULL,
	CodPais              int      NULL,
	CodEstado            int      NULL,
	CodCidade            int      NULL,
	CodEstadoCivil       int      NOT NULL,
	DsNomeMae            varchar(200)      NULL,
	DsOperador           varchar(70)      NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime      NULL,
	CONSTRAINT PK_tblPessoaDadosPF PRIMARY KEY  ( CodDadosPF ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblPessoaEndereco ( 
	CodEndereco          int    IDENTITY  NOT NULL,
	CodTipoEndereco      int      NOT NULL,
	CodPessoa            int      NOT NULL,
	CodPais              int      NULL,
	CodEstado            int      NULL,
	CodCidade            int      NULL,
	CodCEP               int      NOT NULL,
	DsUF                 varchar(2)      NULL,
	DsCidade             varchar(100)      NULL,
	DsBairro             varchar(100)      NULL,
	DsLogradouro         varchar(100)      NULL,
	DsNumero             varchar(15)  DEFAULT 'S/N'    NULL,
	DsComplemento        varchar(100)      NULL,
	IsSemNumero          bit  DEFAULT 0    NULL,
	IsEndercoPrincipal   bit  DEFAULT 0    NULL,
	IsCEPEcontrado       bit  DEFAULT 0    NOT NULL,
	DsOperador           varchar(70)      NOT NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	CONSTRAINT PK_tblPessoaEndereco PRIMARY KEY  ( CodEndereco ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblCNAE ( 
	CodCNAE              int      NOT NULL,
	CodCNAEDivisao       int      NOT NULL,
	CodCNAEGrupo         int      NOT NULL,
	CodCNAEClasse        int      NOT NULL,
	DsSiglaSessao        char(1)      NOT NULL,
	DsDescricao          varchar(200)      NOT NULL,
	DsOperador           varchar(70)      NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	CONSTRAINT PK_tblCnae PRIMARY KEY  ( CodCNAE ) 
 );
GO

CREATE  TABLE dtb_pega.ClientOnboarding.tblPessoaCNAE ( 
	CodPessoaCNAE        int    IDENTITY(1,1)  NOT NULL,
	CodPessoa            int      NOT NULL,
	CodCNAE              int      NOT NULL,
	IsCNAEPrincipal      bit      NOT NULL,
	DsOperador           varchar(70)      NOT NULL,
	DsOperadorAtualizacao varchar(70)      NULL,
	DatInclusao          datetime  DEFAULT getdate()    NOT NULL,
	DatUltimaAtualizacao datetime  DEFAULT getdate()    NULL,
	CONSTRAINT pk_tblPessoaCNAE PRIMARY KEY  ( CodPessoaCNAE ) 
 );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblAnalistaWholeSale ADD CONSTRAINT fk_AnalistaWholeSale_WholeSale_CodWholeSale FOREIGN KEY ( CodWholeSale ) REFERENCES dtb_pega.ClientOnboarding.tblWholeSale( CodWholeSale );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblCNAE ADD CONSTRAINT fk_CNAE_CNAEClasse FOREIGN KEY ( CodCNAEClasse ) REFERENCES dtb_pega.ClientOnboarding.tblCNAEClasse( CodCNAEClasse );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblCNAE ADD CONSTRAINT fk_CNAE_CNAEGrupo FOREIGN KEY ( CodCNAEGrupo ) REFERENCES dtb_pega.ClientOnboarding.tblCNAEGrupo( CodCNAEGrupo );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblCNAE ADD CONSTRAINT fk_CNAE_CNAEDivisao FOREIGN KEY ( CodCNAEDivisao ) REFERENCES dtb_pega.ClientOnboarding.tblCNAEDivisao( CodCNAEDivisao );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblCNAE ADD CONSTRAINT fk_CNAE_CNAESessao FOREIGN KEY ( DsSiglaSessao ) REFERENCES dtb_pega.ClientOnboarding.tblCNAESessao( DsSigla );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblCNAEClasse ADD CONSTRAINT fk_CNAEClasse_CNAEGrupo FOREIGN KEY ( CodCNAEGrupo ) REFERENCES dtb_pega.ClientOnboarding.tblCNAEGrupo( CodCNAEGrupo );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblCNAEDivisao ADD CONSTRAINT fk_CNAEDivisao_CNAESessao FOREIGN KEY ( CodCNAESessao ) REFERENCES dtb_pega.ClientOnboarding.tblCNAESessao( CodCNAESessao );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblCNAEGrupo ADD CONSTRAINT fk_CNAEGrupo_CNAEDivisao FOREIGN KEY ( CodCNAEDivisao ) REFERENCES dtb_pega.ClientOnboarding.tblCNAEDivisao( CodCNAEDivisao );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblCidade ADD CONSTRAINT fk_Cidade_Estado_CodEstado FOREIGN KEY ( CodEstado ) REFERENCES dtb_pega.ClientOnboarding.tblEstado( CodEstado );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblCliente ADD CONSTRAINT fk_Cliente_Pessoa FOREIGN KEY ( CodPessoa ) REFERENCES dtb_pega.ClientOnboarding.tblPessoa( CodPessoa );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblCliente ADD CONSTRAINT fk_Cliente_MotivoROB FOREIGN KEY ( CodMotivoROB ) REFERENCES dtb_pega.ClientOnboarding.tblMotivoROB( CodMotivoROB );
GO

O código fornecido é um script de criação de tabelas para um banco de dados no SQL Server. As tabelas fazem parte de um sistema chamado "Client Onboarding" (ou "Cadastro de Clientes", em português), que parece estar relacionado a informações cadastrais e de relacionamento entre clientes de uma empresa.

As tabelas criadas são as seguintes:

1. `dtb_pega.ClientOnboarding.tblEstado`: Armazena informações sobre os estados (UFs) do país, como código do estado, código do país, código IBGE do estado, sigla do estado, nome do estado, operador responsável e datas de inclusão/atualização.

2. `dtb_pega.ClientOnboarding.tblGrupoEconomico`: Armazena informações sobre grupos econômicos, como código do grupo, nome do grupo, segmento, regional, critério objetivo, tipo de receita, motivo ROB, critério subjetivo, data de referência ROB, descritivo do grupo, valor ROB, operadores responsáveis e datas de inclusão/atualização.

3. `dtb_pega.ClientOnboarding.tblMembroGrupoEconomico`: Armazena informações sobre os membros de um grupo econômico, como código do membro, código do grupo, operadores responsáveis e datas de inclusão/atualização.

4. `dtb_pega.ClientOnboarding.tblPessoaDadosPJ`: Armazena dados de pessoas jurídicas, como código dos dados, código da pessoa, nome fantasia, data de fundação, código do país sede, valor do patrimônio estimado, justificativa de faturamento, operadores responsáveis e datas de inclusão/atualização.

5. `dtb_pega.ClientOnboarding.tblPessoaOcupacaoPF`: Armazena dados de ocupações de pessoas físicas, como código da ocupação, código da pessoa, código do tipo de transporte, código CBO, número ANTT, se é cooperativa, renda, data de início de atividade, operadores responsáveis e datas de inclusão/atualização.

6. `dtb_pega.ClientOnboarding.tblPessoaRelacaoConjugal`: Armazena informações sobre a relação conjugal de uma pessoa, como código da relação conjugal, código da pessoa, código do cônjuge, código do regime de casamento, se há pacto antinupcial, operadores responsáveis e datas de inclusão/atualização.

7. `dtb_pega.ClientOnboarding.tblWholeSale`: Armazena informações sobre vendas no atacado, como código da venda no atacado, código da concessionária, código do tipo de retenção, tamanho da concessionária, gerente de negócio, apelido interno, CBFC, BPMStar, analista de vendas no atacado, nome do analista, informações financeiras, informações de credenciamento e informações de desembolso.

8. `dtb_pega.ClientOnboarding.tblAnalistaWholeSale`: Armazena informações sobre analistas de vendas no atacado, como código do analista, código da venda no atacado, informações de data e operadores responsáveis.

9. `dtb_pega.ClientOnboarding.tblCNAEClasse`: Armazena informações sobre classes do CNAE (Classificação Nacional de Atividades Econômicas), como código da classe, descrição, operadores responsáveis e datas de inclusão/atualização.

10. `dtb_pega.ClientOnboarding.tblCidade`: Armazena informações sobre cidades, como código da cidade, código do estado, código IBGE do estado, código IBGE da cidade, sigla do estado, nome da cidade, operadores responsáveis e datas de inclusão/atualização.

11. `dtb_pega.ClientOnboarding.tblPessoaDadosPF`: Armazena dados de pessoas físicas, como código dos dados, código da pessoa, nome social, data de nascimento, gênero, código do país, código do estado, código da cidade, código do estado civil, nome da mãe, operadores responsáveis e datas de inclusão/atualização.

12. `dtb_pega.ClientOnboarding.tblPessoaEndereco`: Armazena informações sobre endereços de pessoas, como código do endereço, código do tipo de endereço, código da pessoa, código do país, código do estado, código da cidade, CEP, UF, cidade, bairro, logradouro, número, complemento, informações sobre número sem endereço, endereço principal e CEP encontrado, operadores responsáveis e datas de inclusão/atualização.

13. `dtb_pega.ClientOnboarding.tblCNAE`: Armazena informações sobre códigos CNAE, como código do CNAE, código da divisão, código do grupo, código da classe, sigla da sessão, descrição, operadores responsáveis e datas de inclusão/atualização.

14. `dtb_pega.ClientOnboarding.tblPessoaCNAE`: Armazena informações sobre os CNAEs associados a uma pessoa, como código da relação CNAE-pessoa, código da pessoa, código do CNAE, se é o CNAE principal, operadores responsáveis e datas de inclusão/atualização.

As demais instruções (`ALTER TABLE`) são comandos para adicionar chaves estrangeiras (foreign keys) que estabelecem relações entre algumas das tabelas.

É importante observar que o script cria as tabelas com determinados campos, restrições e chaves primárias, mas não fornece detalhes sobre o contexto específico do negócio ou a finalidade do banco de dados. Para entender completamente o significado das tabelas e como elas se relacionam, seria necessário ter mais informações sobre o propósito do sistema e suas regras de negócio.

ALTER TABLE dtb_pega.ClientOnboarding.tblCliente ADD CONSTRAINT fk_Cliente_TipoReceita FOREIGN KEY ( CodTipoReceita ) REFERENCES dtb_pega.ClientOnboarding.tblTipoReceita( CodTipoReceita );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblConcessionaria ADD CONSTRAINT fk_Concessionaria_Pessoa FOREIGN KEY ( CodPessoa ) REFERENCES dtb_pega.ClientOnboarding.tblPessoa( CodPessoa );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblConcessionariaEnquadramentoBem ADD CONSTRAINT fk_ConcessionariaEnquadramentoBem_Concessionaria_CodConcessionaria FOREIGN KEY ( CodConcessionaria ) REFERENCES dtb_pega.ClientOnboarding.tblConcessionaria( CodConcessionaria );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblConcessionariaEnquadramentoBem ADD CONSTRAINT fk_ConcessionariaEnquadramentoBem_EnquadramentoBem_CodEnquadramentoBem FOREIGN KEY ( CodEnquadramentoBem ) REFERENCES dtb_pega.Simulation.tblEnquadramentoBem( CodEnquadramentoBem );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblConcessionariaGerente ADD CONSTRAINT fk_ConcessionariaGerente_Concessionaria_CodConcessionaria FOREIGN KEY ( CodConcessionaria ) REFERENCES dtb_pega.ClientOnboarding.tblConcessionaria( CodConcessionaria );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblConcessionariaGerente ADD CONSTRAINT fk_ConcessionariaGerente_Gerente_CodGerente FOREIGN KEY ( CodGerente ) REFERENCES dtb_pega.ClientOnboarding.tblGerente( CodGerente );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblConcessionariaQuadroSocietario ADD CONSTRAINT fk_ConcessionariaQuadroSocietario_CodConcessionaria FOREIGN KEY ( CodConcessionaria ) REFERENCES dtb_pega.ClientOnboarding.tblConcessionaria( CodConcessionaria );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblConcessionariaTipoBem ADD CONSTRAINT fk_tblConcessionariaTipoBem_tblConcessionaria FOREIGN KEY ( CodConcessionaria ) REFERENCES dtb_pega.ClientOnboarding.tblConcessionaria( CodConcessionaria );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblConcessionariaTipoBem ADD CONSTRAINT fk_ConcessionariaTipoBem_TipoBem_CodTipoBem FOREIGN KEY ( CodTipoBem ) REFERENCES dtb_pega.Simulation.tblTipoBem( CodTipoBem );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblEstado ADD CONSTRAINT FK_Estado_Pais_CodPais FOREIGN KEY ( CodPais ) REFERENCES dtb_pega.ClientOnboarding.tblPais( CodPais );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblGrupoEconomico ADD CONSTRAINT fk_GrupoEconomico_CodCriterioObjetivo FOREIGN KEY ( CodCriterioObjetivo ) REFERENCES dtb_pega.ClientOnboarding.tblCriterioObjetivo( CodCriterioObjetivo );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblGrupoEconomico ADD CONSTRAINT fk_MotivoROB_GrupoEconomico_CodMotivoROB FOREIGN KEY ( CodMotivoROB ) REFERENCES dtb_pega.ClientOnboarding.tblMotivoROB( CodMotivoROB );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblGrupoEconomico ADD CONSTRAINT fk_GrupoEconomico_Segmento_CodSegmento FOREIGN KEY ( CodSegmento ) REFERENCES dtb_pega.Proposal.tblSegmento( CodSegmento );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblGrupoEconomico ADD CONSTRAINT fk_TipoReceita_GrupoEconomico_CodTipoReceita FOREIGN KEY ( CodTipoReceita ) REFERENCES dtb_pega.ClientOnboarding.tblTipoReceita( CodTipoReceita );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblGrupoEconomico ADD CONSTRAINT fk_GrupoEconomico_Regional FOREIGN KEY ( CodRegional ) REFERENCES dtb_pega.Simulation.tblRegional( CodRegional );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblMembroGrupoEconomico ADD CONSTRAINT fk_MembroGrupoEconomico_GrupoEconomico_CodGrupoEconomico FOREIGN KEY ( CodGrupoEconomico ) REFERENCES dtb_pega.ClientOnboarding.tblGrupoEconomico( CodGrupoEconomico );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaCNAE ADD CONSTRAINT fk_PessoaCNAE_CNAE FOREIGN KEY ( CodCNAE ) REFERENCES dtb_pega.ClientOnboarding.tblCNAE( CodCNAE );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaCNAE ADD CONSTRAINT fk_PessoaCNAE_Pessoa FOREIGN KEY ( CodPessoa ) REFERENCES dtb_pega.ClientOnboarding.tblPessoa( CodPessoa );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaConcessionaria ADD CONSTRAINT fk_Concessionaria_Regional_Cod_Regional FOREIGN KEY ( CodRegional ) REFERENCES dtb_pega.Simulation.tblRegional( CodRegional );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaConcessionaria ADD CONSTRAINT fk_PessoaConcessionaria_Pessoa FOREIGN KEY ( CodPessoa ) REFERENCES dtb_pega.ClientOnboarding.tblPessoa( CodPessoa );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaContato ADD CONSTRAINT fk_PessoaContato_Pessoa_CodPessoa FOREIGN KEY ( CodPessoa ) REFERENCES dtb_pega.ClientOnboarding.tblPessoa( CodPessoa );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaDadosPF ADD CONSTRAINT FK_PessoaDadosPF_Estado_CodEstado FOREIGN KEY ( CodEstado ) REFERENCES dtb_pega.ClientOnboarding.tblEstado( CodEstado );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaDadosPF ADD CONSTRAINT FK_PessoaDadosPF_EstadoCivil_CodEstadoCivil FOREIGN KEY ( CodEstadoCivil ) REFERENCES dtb_pega.ClientOnboarding.tblEstadoCivil( CodEstadoCivil );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaDadosPF ADD CONSTRAINT FK_PessoaDadosPF_Genero_CodGenero FOREIGN KEY ( CodGenero ) REFERENCES dtb_pega.ClientOnboarding.tblGenero( CodGenero );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaDadosPF ADD CONSTRAINT FK_PessoaDadosPF_Pais_CodPais FOREIGN KEY ( CodPais ) REFERENCES dtb_pega.ClientOnboarding.tblPais( CodPais );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaDadosPF ADD CONSTRAINT fk_PessoaDadosPF_Pessoa_CodPessoa FOREIGN KEY ( CodPessoa ) REFERENCES dtb_pega.ClientOnboarding.tblPessoa( CodPessoa );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaDadosPF ADD CONSTRAINT fk_PessoaDadosPF_Cidade_CodCidade FOREIGN KEY ( CodCidade ) REFERENCES dtb_pega.ClientOnboarding.tblCidade( CodCidade );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaDadosPJ ADD CONSTRAINT fk_PessoaDadosPJ_Pessoa_CodPessoa FOREIGN KEY ( CodPessoa ) REFERENCES dtb_pega.ClientOnboarding.tblPessoa( CodPessoa );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaDadosPJ ADD CONSTRAINT fk_PessoaDadosPJ_Pais_CodPais FOREIGN KEY ( CodPaisSede ) REFERENCES dtb_pega.ClientOnboarding.tblPais( CodPais );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaDadosPJ ADD CONSTRAINT fk_PessoaDadosPJ_NaturezaJuridica FOREIGN KEY ( CodNaturezaJuridica ) REFERENCES dtb_pega.ClientOnboarding.tblNaturezaJuridica( CodNaturezaJuridica );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaDadosPJ ADD CONSTRAINT fk_PessoaDadosPJ_RegimeTributario FOREIGN KEY ( CodRegimeTributario ) REFERENCES dtb_pega.ClientOnboarding.tblRegimeTributario( CodRegimeTributario );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaDadosReceitaFederal ADD CONSTRAINT fk_PessoaDadosRF_Pessoa FOREIGN KEY ( CodPessoa ) REFERENCES dtb_pega.ClientOnboarding.tblPessoa( CodPessoa );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaEndereco ADD CONSTRAINT FK_PessoaEndereco_Estado_CodEstado FOREIGN KEY ( CodEstado ) REFERENCES dtb_pega.ClientOnboarding.tblEstado( CodEstado );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaEndereco ADD CONSTRAINT FK_PessoaEndereco_Pais_CodPais FOREIGN KEY ( CodPais ) REFERENCES dtb_pega.ClientOnboarding.tblPais( CodPais );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaEndereco ADD CONSTRAINT fk_PessoaEndereco_Pessoa_CodPessoa FOREIGN KEY ( CodPessoa ) REFERENCES dtb_pega.ClientOnboarding.tblPessoa( CodPessoa );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaEndereco ADD CONSTRAINT fk_PessoaEndereco_Cidade_CodCidade FOREIGN KEY ( CodCidade ) REFERENCES dtb_pega.ClientOnboarding.tblCidade( CodCidade );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaEndereco ADD CONSTRAINT fk_PessoaEndereco_TipoEndereco_CodTipoEndereco FOREIGN KEY ( CodTipoEndereco ) REFERENCES dtb_pega.ClientOnboarding.tblTipoEndereco( CodTipoEndereco );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaFaturamentoPJ ADD CONSTRAINT FK_PessoaFaturamentoPJ_Mes_CodMes FOREIGN KEY ( CodMes ) REFERENCES dtb_pega.ClientOnboarding.tblMes( CodMes );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaFaturamentoPJ ADD CONSTRAINT fk_PessoaFaturamentoPJ_Pessoa_CodPessoa FOREIGN KEY ( CodPessoa ) REFERENCES dtb_pega.ClientOnboarding.tblPessoa( CodPessoa );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaOcupacaoPF ADD CONSTRAINT fk_PessoaOcupacao_CBO FOREIGN KEY ( CodCBO ) REFERENCES dtb_pega.ClientOnboarding.tblCBO( CodCBO );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaOcupacaoPF ADD CONSTRAINT fk_PessoaOcupacao_TipoTransporte FOREIGN KEY ( CodTipoDeTransporte ) REFERENCES dtb_pega.ClientOnboarding.tblTipoTransporte( CodTipoDeTransporte );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaOcupacaoPF ADD CONSTRAINT fk_PessoaOcupacaoPF_Pessoa_CodPessoa FOREIGN KEY ( CodPessoa ) REFERENCES dtb_pega.ClientOnboarding.tblPessoa( CodPessoa );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaQuadroSocietario ADD CONSTRAINT fk_PessoaQuadroSocietario_Pessoa_CodEmpresa FOREIGN KEY ( CodEmpresa ) REFERENCES dtb_pega.ClientOnboarding.tblPessoa( CodPessoa );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaQuadroSocietario ADD CONSTRAINT fk_PessoaQuadroSocietario_Pessoa_CodMembro FOREIGN KEY ( CodMembro ) REFERENCES dtb_pega.ClientOnboarding.tblPessoa( CodPessoa );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaRelacaoConjugal ADD CONSTRAINT fk_PessoaRelacaoConjugal_Pessoa_CodPessoa FOREIGN KEY ( CodPessoa ) REFERENCES dtb_pega.ClientOnboarding.tblPessoa( CodPessoa );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaRelacaoConjugal ADD CONSTRAINT fk_PessoaRelacaoConjugal_Pessoa_CodPessoaConjuge FOREIGN KEY ( CodPessoaConjuge ) REFERENCES dtb_pega.ClientOnboarding.tblPessoa( CodPessoa );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaRelacaoConjugal ADD CONSTRAINT fk_PessoaRelacaoConjugal_RegimeCasamento_CodRegimeCasamento FOREIGN KEY ( CodRegimeCasamento ) REFERENCES dtb_pega.ClientOnboarding.tblRegimeCasamento( CodRegimeCasamento );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaRepresentanteLegal ADD CONSTRAINT fk_PessoaRepresentanteLegal_Pessoa_CodPessoa FOREIGN KEY ( CodPessoa ) REFERENCES dtb_pega.ClientOnboarding.tblPessoa( CodPessoa );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblPessoaRepresentanteLegal ADD CONSTRAINT fk_PessoaRepresentanteLegal_Pessoa_CodRepresentante FOREIGN KEY ( CodRepresentante ) REFERENCES dtb_pega.ClientOnboarding.tblPessoa( CodPessoa );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblVendedor ADD CONSTRAINT fk_Vendedor_Gerente_CodGerente FOREIGN KEY ( CodGerente ) REFERENCES dtb_pega.ClientOnboarding.tblGerente( CodGerente );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblWholeSale ADD CONSTRAINT fk_WholeSale_CodConcessionaria FOREIGN KEY ( CodConcessionaria ) REFERENCES dtb_pega.ClientOnboarding.tblConcessionaria( CodConcessionaria );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblWholeSale ADD CONSTRAINT fk_WholeSale_CodTamanhoConcessionaria FOREIGN KEY ( CodTamanhoConcessionaria ) REFERENCES dtb_pega.ClientOnboarding.tblTamanhoConcessionaria( CodTamanhoConcessionaria );
GO

ALTER TABLE dtb_pega.ClientOnboarding.tblWholeSale ADD CONSTRAINT fk_WholeSale_CodTipoRetencao FOREIGN KEY ( CodTipoRetencao ) REFERENCES dtb_pega.ClientOnboarding.tblTipoRetencao( CodTipoRetencao );
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCBO', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCBO', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCBO', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante da última atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCBO', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCNAESessao', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCNAESessao', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCNAESessao', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante da última atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCNAESessao', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Dados de contato do Cliente Pessoa Juridica' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblContatoClientePj';;
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código de identificação da tabela (valor sequencial)' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblContatoClientePj', @level2type=N'COLUMN',@level2name=N'Codcontato';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código do Cliente PJ' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblContatoClientePj', @level2type=N'COLUMN',@level2name=N'CodClientePJ';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'DDD do telefone' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblContatoClientePj', @level2type=N'COLUMN',@level2name=N'DsDdd';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Número do telefone' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblContatoClientePj', @level2type=N'COLUMN',@level2name=N'DsTelefone';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblContatoClientePj', @level2type=N'COLUMN',@level2name=N'DsEmail';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Define se o contato recebe boleto\n1 - Sim\n0 - Não' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblContatoClientePj', @level2type=N'COLUMN',@level2name=N'DsRecebeBoleto';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Define se o contato é principal\n1 - Sim\n0 - Não' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblContatoClientePj', @level2type=N'COLUMN',@level2name=N'DsContatoPrincipal';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblContatoClientePj', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblContatoClientePj', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblContatoClientePj', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante da última atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblContatoClientePj', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Descritivo do contato' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblContatoClientePj', @level2type=N'COLUMN',@level2name=N'DsDescricaoContato';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCriterioObjetivo', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCriterioObjetivo', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Data da ultima atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCriterioObjetivo', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblEstadoCivil', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblEstadoCivil', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblGenero', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblGenero', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código de Identificação da tabela (valor sequencial)' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblGerente', @level2type=N'COLUMN',@level2name=N'CodGerente';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Nome do gerente' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblGerente', @level2type=N'COLUMN',@level2name=N'DsNomeGerente';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblGerente', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

Essas instruções de ALTER TABLE estão adicionando CONSTRAINTS (restrições) de chave estrangeira (FOREIGN KEY) em várias tabelas do banco de dados denominado "dtb_pega" e schema "ClientOnboarding". Essas CONSTRAINTS garantem a integridade referencial entre as tabelas, vinculando colunas em uma tabela a chaves primárias em outras tabelas. Em resumo, elas estabelecem relacionamentos entre diferentes tabelas, tornando possível consultar e acessar informações em várias tabelas de maneira organizada e estruturada.

Cada bloco de código representa uma instrução ALTER TABLE específica para uma tabela e uma chave estrangeira específica. A estrutura geral de cada instrução é a seguinte:

```
ALTER TABLE schema.tabela ADD CONSTRAINT nome_constraint FOREIGN KEY (coluna_atual) REFERENCES schema.tabela_referenciada(coluna_referenciada);
GO
```

Por exemplo, a primeira instrução:

```
ALTER TABLE dtb_pega.ClientOnboarding.tblCliente ADD CONSTRAINT fk_Cliente_TipoReceita FOREIGN KEY (CodTipoReceita) REFERENCES dtb_pega.ClientOnboarding.tblTipoReceita(CodTipoReceita);
GO
```

Adiciona uma CONSTRAINT de chave estrangeira chamada "fk_Cliente_TipoReceita" na tabela "dtb_pega.ClientOnboarding.tblCliente". Essa CONSTRAINT liga a coluna "CodTipoReceita" na tabela "dtb_pega.ClientOnboarding.tblCliente" à coluna "CodTipoReceita" na tabela "dtb_pega.ClientOnboarding.tblTipoReceita".

As demais instruções seguem o mesmo padrão, mas referem-se a diferentes tabelas e chaves estrangeiras.

Além disso, há algumas instruções adicionais que usam a função "sp_addextendedproperty" para adicionar descrições (comentários) a algumas colunas das tabelas. Essas descrições são úteis para documentar o propósito ou o significado das colunas e podem ajudar os desenvolvedores a entender melhor a estrutura do banco de dados.

Lembrando que o contexto da estrutura do banco de dados e o significado específico das tabelas e colunas podem depender do domínio do negócio ao qual o banco de dados se refere. Sem mais informações sobre o contexto específico, é difícil fornecer detalhes adicionais sobre o entendimento do negócio em relação a essas instruções.

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Data da ultima atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblGerente', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblGerente', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblGerente', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código de Identificação do mês' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblMes', @level2type=N'COLUMN',@level2name=N'CodMes';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Descrição do Nome do mês' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblMes', @level2type=N'COLUMN',@level2name=N'DsMes';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código de Identificação da tabela (valor sequencial)' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblMotivoROB', @level2type=N'COLUMN',@level2name=N'CodMotivoROB';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código de Identificação da tabela (valor sequencial)' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblNaturezaJuridica', @level2type=N'COLUMN',@level2name=N'CodNaturezaJuridica';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Codigo da natureza jurídica de uma empresa é o seu regime jurídico, fornecido com string na origem' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblNaturezaJuridica', @level2type=N'COLUMN',@level2name=N'DsCodigoNaturezaJuridica';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'A natureza jurídica de uma empresa é o seu regime jurídico' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblNaturezaJuridica', @level2type=N'COLUMN',@level2name=N'DsNaturezaJuridica';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblNaturezaJuridica', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblNaturezaJuridica', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblNaturezaJuridica', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Data da ultima atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblNaturezaJuridica', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'TODO: Remover' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPactoNupcial';;
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPactoNupcial', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPactoNupcial', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPais', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPais', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Data da ultima atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPais', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'TODO: Remover' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPeriodoFaturamento';;
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código de Identificação da tabela (valor sequencial)' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPeriodoFaturamento', @level2type=N'COLUMN',@level2name=N'CodPeriodoFaturamento';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Descrição do periodo de Faturamento' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPeriodoFaturamento', @level2type=N'COLUMN',@level2name=N'DsPeriodoFaturamento';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Codigo de identificação do tipo de pessoa' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoa', @level2type=N'COLUMN',@level2name=N'CodPessoa';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Codigo de identificação do tipo de pessoa' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoa', @level2type=N'COLUMN',@level2name=N'CodTipoPessoa';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Descrição do niumero de documento' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoa', @level2type=N'COLUMN',@level2name=N'DsDocumento';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Nome do Cliente' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoa', @level2type=N'COLUMN',@level2name=N'DsNome';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Indica se o registro está ativo no sistema' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoa', @level2type=N'COLUMN',@level2name=N'IsAtivo';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoa', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoa', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoa', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante da última atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoa', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código de Identificação da tabela (valor sequencial)' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaConcessionaria', @level2type=N'COLUMN',@level2name=N'CodConcessionaria';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Codigo de identificação do tipo de pessoa' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaConcessionaria', @level2type=N'COLUMN',@level2name=N'CodPessoa';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Codigo de regime tributario' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaConcessionaria', @level2type=N'COLUMN',@level2name=N'CodRegional';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Indica se o registro está ativo no sistema\n0 - Inativo\n1 - Ativo' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaConcessionaria', @level2type=N'COLUMN',@level2name=N'DsStatus';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaConcessionaria', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaConcessionaria', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Data da ultima atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaConcessionaria', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Identificação do contanto auto incremento' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaContato', @level2type=N'COLUMN',@level2name=N'CodContato';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Codigo de identificação do tipo de pessoa' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaContato', @level2type=N'COLUMN',@level2name=N'CodPessoa';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Define se é o contato principal\n1 - Sim\n0 - Não' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaContato', @level2type=N'COLUMN',@level2name=N'IsContatoPrincipal';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Descritivo do contato' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaContato', @level2type=N'COLUMN',@level2name=N'DsDescricaoContato';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'NUmero de DDD' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaContato', @level2type=N'COLUMN',@level2name=N'DsDDD';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Numero de Telefone' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaContato', @level2type=N'COLUMN',@level2name=N'DsTelefone';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Informação de Email' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaContato', @level2type=N'COLUMN',@level2name=N'DsEmail';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Recebe boleto ?\n1 - Sim\n0 - Não' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaContato', @level2type=N'COLUMN',@level2name=N'IsRecebeBoleto';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Flag de autorização envio Sms' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaContato', @level2type=N'COLUMN',@level2name=N'IsConsultaSms';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaContato', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaContato', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaContato', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante da última atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaContato', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Codigo de identificação do tipo de pessoa' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosReceitaFederal', @level2type=N'COLUMN',@level2name=N'CodPessoa';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código da consulta cadastral na Receita Federal' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosReceitaFederal', @level2type=N'COLUMN',@level2name=N'CodSituacaoCadastralRF';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Descritivo do resultado da consulta na Receita Federal' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosReceitaFederal', @level2type=N'COLUMN',@level2name=N'DsSituacaoCadastralRF';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante da consulta situação cadastral da Receita Federal' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosReceitaFederal', @level2type=N'COLUMN',@level2name=N'DatUltimaConsultaRF';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Descrição de retorno da consulta situação especial da Receita Federal' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosReceitaFederal', @level2type=N'COLUMN',@level2name=N'DsSituacaoEspecialRF';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosReceitaFederal', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosReceitaFederal', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosReceitaFederal', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Data da ultima atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosReceitaFederal', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Dados de faturamento do Cliente PJ' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaFaturamentoPJ';;
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código de identificação da tabela (valor sequencial)' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaFaturamentoPJ', @level2type=N'COLUMN',@level2name=N'Codfaturamento';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Codigo de identificação do tipo de pessoa' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaFaturamentoPJ', @level2type=N'COLUMN',@level2name=N'CodPessoa';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código do periodo de faturamento' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaFaturamentoPJ', @level2type=N'COLUMN',@level2name=N'CodPeriodoFaturamento';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Mês de referencia' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaFaturamentoPJ', @level2type=N'COLUMN',@level2name=N'CodMes';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Ano de referência' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaFaturamentoPJ', @level2type=N'COLUMN',@level2name=N'DsAno';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Valor do faturamento' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaFaturamentoPJ', @level2type=N'COLUMN',@level2name=N'VlFaturamento';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaFaturamentoPJ', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaFaturamentoPJ', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaFaturamentoPJ', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Data da ultima atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaFaturamentoPJ', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código de identificação do Sócio (valor sequencial)' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaQuadroSocietario', @level2type=N'COLUMN',@level2name=N'CodQuadroSocietario';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Valor de participação em porcentagem' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaQuadroSocietario', @level2type=N'COLUMN',@level2name=N'VlParticipacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante da última atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaQuadroSocietario', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaQuadroSocietario', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaQuadroSocietario', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaQuadroSocietario', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Ficha reduzida do representante legal' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaRepresentanteLegal';;
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código de identificação da tabela (valor sequencial)' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaRepresentanteLegal', @level2type=N'COLUMN',@level2name=N'CodPessoaRepresentanteLegal';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaRepresentanteLegal', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

O trecho de código fornecido parece ser um conjunto de scripts SQL utilizados para adicionar descrições a algumas tabelas e colunas de um banco de dados no contexto de um negócio chamado "ClientOnboarding". Essas descrições são úteis para documentar o significado e a finalidade das tabelas e colunas, facilitando o entendimento do banco de dados por parte dos desenvolvedores e usuários.

As instruções utilizam a função "sys.sp_addextendedproperty" para adicionar as descrições estendidas (extended properties) às tabelas e colunas. Cada instrução segue o mesmo padrão, indicando o nome da propriedade "MS_Description" (descrição da Microsoft), o valor da descrição e a localização (nível) da propriedade (tabela e coluna).

Por exemplo, a primeira instrução pode ser traduzida para:

```sql
-- Adiciona uma descrição à coluna "DatUltimaAtualizacao" da tabela "tblGerente"
-- Essa descrição indica que a coluna representa a data da última atualização do registro.
execute [dtb_pega].sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data da última atualização do registro', @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblGerente', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
```

O restante das instruções segue a mesma estrutura, adicionando descrições a várias outras tabelas e colunas relacionadas ao negócio "ClientOnboarding". As descrições incluem informações como data de inclusão do registro, usuário do sistema responsável pela última atualização, códigos de identificação, descrições de natureza jurídica, entre outras.

Essas descrições são úteis para melhorar a documentação do banco de dados, tornando-o mais compreensível e facilitando a manutenção do sistema ao longo do tempo. As informações fornecidas ajudam os desenvolvedores e usuários a entenderem o propósito de cada tabela e coluna, bem como os significados dos dados armazenados.

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaRepresentanteLegal', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaRepresentanteLegal', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante da última atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaRepresentanteLegal', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblRegimeCasamento', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblRegimeCasamento', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código de Identificação da tabela (valor sequencial)' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblRegimeTributario', @level2type=N'COLUMN',@level2name=N'CodRegimeTributario';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'O enquadramento define quais obrigações deverão ser cumpridas pelas organizações.\n\n1-	Lucro Presumido\n2-	Lucro Real\n3-	Simples Nacional' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblRegimeTributario', @level2type=N'COLUMN',@level2name=N'DsRegimeTributario';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Descrição do tamanho da concessionaria' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblTamanhoConcessionaria', @level2type=N'COLUMN',@level2name=N'DsTamanhoConcessionaria';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'TODO: Remover' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblTipoContato';;
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblTipoContato', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblTipoContato', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblTipoEndereco', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código de Identificação da tabela (valor sequencial)' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblTipoReceita', @level2type=N'COLUMN',@level2name=N'CodTipoReceita';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Identificação do Gerente da concessionaria relacionada' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblVendedor', @level2type=N'COLUMN',@level2name=N'CodGerente';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Identificação do vendedor da concessionaria relacionada' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblVendedor', @level2type=N'COLUMN',@level2name=N'CodVendedor';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Nome do vendedor' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblVendedor', @level2type=N'COLUMN',@level2name=N'DsNomeVendedor';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblVendedor', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Data da ultima atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblVendedor', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblVendedor', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblVendedor', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCNAEDivisao', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCNAEDivisao', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCNAEDivisao', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante da última atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCNAEDivisao', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCNAEGrupo', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCNAEGrupo', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCNAEGrupo', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante da última atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCNAEGrupo', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Codigo de identificação do tipo de pessoa' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCliente', @level2type=N'COLUMN',@level2name=N'CodPessoa';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Grupo economico caso o cliente pj faça parte' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCliente', @level2type=N'COLUMN',@level2name=N'CodGrupoEconomico';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Segmento do cliente PJ' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCliente', @level2type=N'COLUMN',@level2name=N'CodSegmento';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Tipo de Receita' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCliente', @level2type=N'COLUMN',@level2name=N'CodTipoReceita';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Motivo do ROB' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCliente', @level2type=N'COLUMN',@level2name=N'CodMotivoROB';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Valor do ROB' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCliente', @level2type=N'COLUMN',@level2name=N'VlROB';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Data de referência do Rob' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCliente', @level2type=N'COLUMN',@level2name=N'DatReferenciaROB';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Observação sobre o rob informado' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCliente', @level2type=N'COLUMN',@level2name=N'DsObservacaoROB';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Líder do grupo econômico ?\n1 - Sim\n0 - Não' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCliente', @level2type=N'COLUMN',@level2name=N'IsLider';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCliente', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCliente', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCliente', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante da última atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCliente', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código de Identificação da tabela (valor sequencial)' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionaria', @level2type=N'COLUMN',@level2name=N'CodConcessionaria';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Codigo de identificação do tipo de pessoa' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionaria', @level2type=N'COLUMN',@level2name=N'CodPessoa';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Codigo de regime tributario' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionaria', @level2type=N'COLUMN',@level2name=N'CodRegional';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Indica se o registro está ativo no sistema\n0 - Inativo\n1 - Ativo' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionaria', @level2type=N'COLUMN',@level2name=N'DsStatus';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionaria', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionaria', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Data da ultima atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionaria', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'1-	PC-	Carro de Passeio\n2-	CV-	Veículo Comercial\n3-	NON-AUTO-	Não automotivo' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionariaEnquadramentoBem';;
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Id da tabela' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionariaEnquadramentoBem', @level2type=N'COLUMN',@level2name=N'CodConcessionariaEnquadramentoBem';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código da Concessionária na tblConcessionaria' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionariaEnquadramentoBem', @level2type=N'COLUMN',@level2name=N'CodConcessionaria';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Tipo de enquadramento de Bem da tabela EnquadramentoBem' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionariaEnquadramentoBem', @level2type=N'COLUMN',@level2name=N'CodEnquadramentoBem';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas que inseriu o registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionariaEnquadramentoBem', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionariaEnquadramentoBem', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Data de inclusão do Registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionariaEnquadramentoBem', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Data da ultima atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionariaEnquadramentoBem', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionariaGerente', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Data da ultima atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionariaGerente', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionariaGerente', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionariaGerente', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código de identicação do sócio no quadro societário' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionariaQuadroSocietario', @level2type=N'COLUMN',@level2name=N'CodQuadroSocietario';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código de Identificação da Concessionaria' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionariaQuadroSocietario', @level2type=N'COLUMN',@level2name=N'CodConcessionaria';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'A Classificação Brasileira de Ocupações (CBO) é um documento que retrata a realidade das profissões do mercado de trabalho brasileiro.' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionariaQuadroSocietario', @level2type=N'COLUMN',@level2name=N'CodAtuacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Valor de participação em porcentagem' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionariaQuadroSocietario', @level2type=N'COLUMN',@level2name=N'VlParticipacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas que inseriu o registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionariaQuadroSocietario', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionariaQuadroSocietario', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Data de inclusão do Registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionariaQuadroSocietario', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Data da ultima atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionariaQuadroSocietario', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código de Identificação da Concessionaria' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionariaTipoBem', @level2type=N'COLUMN',@level2name=N'CodConcessionaria';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas que inseriu o registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionariaTipoBem', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionariaTipoBem', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Data da ultima atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionariaTipoBem', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

O código fornecido parece ser uma série de instruções SQL para adicionar descrições a várias colunas em uma base de dados SQL Server. Essas descrições são úteis para fornecer informações sobre o conteúdo das colunas, o que pode ser útil para os desenvolvedores e usuários entenderem o propósito e o significado de cada coluna.

Pelo que posso entender, a base de dados em questão é chamada de "ClientOnboarding" e faz parte de um sistema relacionado a uma concessionária de veículos. Ela contém várias tabelas, como "tblPessoaRepresentanteLegal", "tblRegimeCasamento", "tblRegimeTributario", "tblTamanhoConcessionaria", "tblTipoContato", "tblTipoEndereco", "tblTipoReceita", "tblVendedor", "tblCNAEDivisao", "tblCNAEGrupo", "tblCliente", "tblConcessionaria", "tblConcessionariaEnquadramentoBem", "tblConcessionariaGerente" e "tblConcessionariaQuadroSocietario".

As descrições adicionadas às colunas parecem fornecer informações sobre os seguintes aspectos:

- Identificação de usuários e operadores do sistema.
- Datas de inclusão e última atualização de registros.
- Códigos de identificação de tabelas e valores sequenciais.
- Descrições de registros específicos, como regime tributário, tamanho da concessionária, tipo de receita, enquadramento de veículos, etc.
- Informações sobre representantes legais, vendedores e quadro societário da concessionária.

As descrições adicionadas usando as instruções "sp_addextendedproperty" fornecem um contexto valioso para o conteúdo das colunas da base de dados, o que pode ajudar a melhorar a compreensão e a manutenção do sistema.

É importante ressaltar que essas descrições fornecidas nas propriedades estendidas são úteis principalmente para fins de documentação e entendimento do negócio, mas não têm impacto direto no funcionamento ou desempenho do sistema.

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Data de inclusão do Registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblConcessionariaTipoBem', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblEstado', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblEstado', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Data da ultima atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblEstado', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código de Identificação da tabela (valor sequencial)' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblGrupoEconomico', @level2type=N'COLUMN',@level2name=N'CodGrupoEconomico';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Codigo de identificação do tipo de receita' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblGrupoEconomico', @level2type=N'COLUMN',@level2name=N'CodTipoReceita';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblGrupoEconomico', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblGrupoEconomico', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Data da ultima atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblGrupoEconomico', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'TODO: Precisamos dessa tabela?' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblMembroGrupoEconomico';;
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblMembroGrupoEconomico', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblMembroGrupoEconomico', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Data da ultima atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblMembroGrupoEconomico', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Ficha cadastral cliente pessoa juridica' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosPJ';;
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código de identificação da tabela (valor sequencial)' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosPJ', @level2type=N'COLUMN',@level2name=N'CodDadosPJ';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Codigo de identificação da pessoa' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosPJ', @level2type=N'COLUMN',@level2name=N'CodPessoa';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Nome Fantasia' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosPJ', @level2type=N'COLUMN',@level2name=N'DsNomeFantasia';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Data de Fundação' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosPJ', @level2type=N'COLUMN',@level2name=N'DatFundacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código do País Sede' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosPJ', @level2type=N'COLUMN',@level2name=N'CodPaisSede';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Valor do patrimonio estimado' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosPJ', @level2type=N'COLUMN',@level2name=N'VlPatrimonioEstimado';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Justificativa do valor do faturamento' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosPJ', @level2type=N'COLUMN',@level2name=N'DsJustificativaFaturamento';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosPJ', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosPJ', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosPJ', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante da última atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosPJ', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Regime tributário' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosPJ', @level2type=N'COLUMN',@level2name=N'CodRegimeTributario';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaOcupacaoPF', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaOcupacaoPF', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaOcupacaoPF', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante da última atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaOcupacaoPF', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Relaçao Conjugal entre Pessoas Físicas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaRelacaoConjugal';;
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Codigo Sequencial identificador da tabela' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaRelacaoConjugal', @level2type=N'COLUMN',@level2name=N'CodRelacaoConjugal';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código do Conjuge' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaRelacaoConjugal', @level2type=N'COLUMN',@level2name=N'CodPessoa';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Codigo que identifica a Conjuge da pessoa' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaRelacaoConjugal', @level2type=N'COLUMN',@level2name=N'CodPessoaConjuge';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Regime de casamento' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaRelacaoConjugal', @level2type=N'COLUMN',@level2name=N'CodRegimeCasamento';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Descrição do pacto Nupcial' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaRelacaoConjugal', @level2type=N'COLUMN',@level2name=N'DsPactoAntiNupcial';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaRelacaoConjugal', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaRelacaoConjugal', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaRelacaoConjugal', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante da última atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaRelacaoConjugal', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código de Identificação da tabela (valor sequencial)' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblWholeSale', @level2type=N'COLUMN',@level2name=N'CodWholeSale';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código de Identificação da Concessionaria' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblWholeSale', @level2type=N'COLUMN',@level2name=N'CodConcessionaria';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCNAEClasse', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCNAEClasse', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCNAEClasse', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante da última atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCNAEClasse', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Dados gerais de Pessoa Física' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosPF';;
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código de Identificação da tabela (valor sequencial)' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosPF', @level2type=N'COLUMN',@level2name=N'CodDadosPF';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Codigo de identificação da pessoa' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosPF', @level2type=N'COLUMN',@level2name=N'CodPessoa';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Nome social' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosPF', @level2type=N'COLUMN',@level2name=N'DsNomeSocial';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'data de nascimento' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosPF', @level2type=N'COLUMN',@level2name=N'DatNascimento';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Codigo identificador de Genero' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosPF', @level2type=N'COLUMN',@level2name=N'CodGenero';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Pais de origem' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosPF', @level2type=N'COLUMN',@level2name=N'CodPais';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Estado de origem' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosPF', @level2type=N'COLUMN',@level2name=N'CodEstado';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Cidade de origem' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosPF', @level2type=N'COLUMN',@level2name=N'CodCidade';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Estado civil' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosPF', @level2type=N'COLUMN',@level2name=N'CodEstadoCivil';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Nome da mãe' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosPF', @level2type=N'COLUMN',@level2name=N'DsNomeMae';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosPF', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosPF', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosPF', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante da última atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaDadosPF', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Dados dos endereços do Cliente' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaEndereco';;
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código de identificação da tabela (valor sequencial)' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaEndereco', @level2type=N'COLUMN',@level2name=N'CodEndereco';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Tipo de endereço' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaEndereco', @level2type=N'COLUMN',@level2name=N'CodTipoEndereco';
GO

Essas linhas de código estão adicionando descrições estendidas (MS_Description) a várias colunas e tabelas em um banco de dados SQL Server. As descrições são em português e provavelmente foram adicionadas para fornecer informações adicionais sobre cada coluna e tabela, facilitando o entendimento do negócio e auxiliando no desenvolvimento e manutenção do banco de dados. Abaixo está o entendimento do negócio em português para cada uma dessas descrições:

1. **tblConcessionariaTipoBem**
   - Coluna: DatInclusao
   - Descrição: Data de inclusão do Registro.

2. **tblEstado**
   - Coluna: DsOperador
   - Descrição: Usuário de sistemas.

3. **tblEstado**
   - Coluna: DsOperadorAtualizacao
   - Descrição: Usuário do sistema que implementou a última atualização no registro.

4. **tblEstado**
   - Coluna: DatUltimaAtualizacao
   - Descrição: Data da última atualização do registro.

5. **tblGrupoEconomico**
   - Coluna: CodGrupoEconomico
   - Descrição: Código de Identificação da tabela (valor sequencial).

6. **tblGrupoEconomico**
   - Coluna: CodTipoReceita
   - Descrição: Código de identificação do tipo de receita.

7. **tblGrupoEconomico**
   - Coluna: DsOperador
   - Descrição: Usuário de sistemas.

8. **tblGrupoEconomico**
   - Coluna: DsOperadorAtualizacao
   - Descrição: Usuário do sistema que implementou a última atualização no registro.

9. **tblGrupoEconomico**
   - Coluna: DatUltimaAtualizacao
   - Descrição: Data da última atualização do registro.

10. **tblMembroGrupoEconomico**
    - Descrição: TODO: Precisamos dessa tabela?

11. **tblMembroGrupoEconomico**
    - Coluna: DsOperador
    - Descrição: Usuário de sistemas.

12. **tblMembroGrupoEconomico**
    - Coluna: DsOperadorAtualizacao
    - Descrição: Usuário do sistema que implementou a última atualização no registro.

13. **tblMembroGrupoEconomico**
    - Coluna: DatUltimaAtualizacao
    - Descrição: Data da última atualização do registro.

14. **tblPessoaDadosPJ**
    - Descrição: Ficha cadastral cliente pessoa jurídica.

15. **tblPessoaDadosPJ**
    - Coluna: CodDadosPJ
    - Descrição: Código de Identificação da tabela (valor sequencial).

16. **tblPessoaDadosPJ**
    - Coluna: CodPessoa
    - Descrição: Código de identificação da pessoa.

17. **tblPessoaDadosPJ**
    - Coluna: DsNomeFantasia
    - Descrição: Nome Fantasia.

18. **tblPessoaDadosPJ**
    - Coluna: DatFundacao
    - Descrição: Data de Fundação.

19. **tblPessoaDadosPJ**
    - Coluna: CodPaisSede
    - Descrição: Código do País Sede.

20. **tblPessoaDadosPJ**
    - Coluna: VlPatrimonioEstimado
    - Descrição: Valor do patrimônio estimado.

21. **tblPessoaDadosPJ**
    - Coluna: DsJustificativaFaturamento
    - Descrição: Justificativa do valor do faturamento.

22. **tblPessoaDadosPJ**
    - Coluna: DsOperador
    - Descrição: Usuário de sistemas.

23. **tblPessoaDadosPJ**
    - Coluna: DsOperadorAtualizacao
    - Descrição: Usuário do sistema que implementou a última atualização no registro.

24. **tblPessoaDadosPJ**
    - Coluna: DatInclusao
    - Descrição: Instante de inclusão do registro.

25. **tblPessoaDadosPJ**
    - Coluna: DatUltimaAtualizacao
    - Descrição: Instante da última atualização do registro.

26. **tblPessoaDadosPJ**
    - Coluna: CodRegimeTributario
    - Descrição: Regime tributário.

27. **tblPessoaOcupacaoPF**
    - Coluna: DsOperador
    - Descrição: Usuário de sistemas.

28. **tblPessoaOcupacaoPF**
    - Coluna: DsOperadorAtualizacao
    - Descrição: Usuário do sistema que implementou a última atualização no registro.

29. **tblPessoaOcupacaoPF**
    - Coluna: DatInclusao
    - Descrição: Instante de inclusão do registro.

30. **tblPessoaOcupacaoPF**
    - Coluna: DatUltimaAtualizacao
    - Descrição: Instante da última atualização do registro.

31. **tblPessoaRelacaoConjugal**
    - Descrição: Relação Conjugal entre Pessoas Físicas.

32. **tblPessoaRelacaoConjugal**
    - Coluna: CodRelacaoConjugal
    - Descrição: Código Sequencial identificador da tabela.

33. **tblPessoaRelacaoConjugal**
    - Coluna: CodPessoa
    - Descrição: Código do Conjuge.

34. **tblPessoaRelacaoConjugal**
    - Coluna: CodPessoaConjuge
    - Descrição: Código que identifica a Conjuge da pessoa.

35. **tblPessoaRelacaoConjugal**
    - Coluna: CodRegimeCasamento
    - Descrição: Regime de casamento.

36. **tblPessoaRelacaoConjugal**
    - Coluna: DsPactoAntiNupcial
    - Descrição: Descrição do pacto Nupcial.

37. **tblPessoaRelacaoConjugal**
    - Coluna: DsOperador
    - Descrição: Usuário de sistemas.

38. **tblPessoaRelacaoConjugal**
    - Coluna: DsOperadorAtualizacao
    - Descrição: Usuário do sistema que implementou a última atualização no registro.

39. **tblPessoaRelacaoConjugal**
    - Coluna: DatInclusao
    - Descrição: Instante de inclusão do registro.

40. **tblPessoaRelacaoConjugal**
    - Coluna: DatUltimaAtualizacao
    - Descrição: Instante da última atualização do registro.

41. **tblWholeSale**
    - Coluna: Cod

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'CEP endereço comercial' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaEndereco', @level2type=N'COLUMN',@level2name=N'DsCEPEndComercial';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Logradouro endereço comercial' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaEndereco', @level2type=N'COLUMN',@level2name=N'DsLogradouroEndComercial';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Número endereço comercial' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaEndereco', @level2type=N'COLUMN',@level2name=N'DsNumeroEndComercial';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Complemento endereço comercial' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaEndereco', @level2type=N'COLUMN',@level2name=N'DsComplementoEndComercial';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Bairro endereço comercial' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaEndereco', @level2type=N'COLUMN',@level2name=N'DsBairroEndComercial';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Cidade endereço comercial' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N't

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Código do cliente' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaEndereco', @level2type=N'COLUMN',@level2name=N'CodPessoa';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Estado' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaEndereco', @level2type=N'COLUMN',@level2name=N'CodEstado';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Cidade' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaEndereco', @level2type=N'COLUMN',@level2name=N'CodCidade';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'CEP' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaEndereco', @level2type=N'COLUMN',@level2name=N'CodCEP';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Unidade Federativa' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaEndereco', @level2type=N'COLUMN',@level2name=N'DsUF';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Cidade' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaEndereco', @level2type=N'COLUMN',@level2name=N'DsCidade';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Bairro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaEndereco', @level2type=N'COLUMN',@level2name=N'DsBairro';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Endereço' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaEndereco', @level2type=N'COLUMN',@level2name=N'DsLogradouro';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Número' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaEndereco', @level2type=N'COLUMN',@level2name=N'DsNumero';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Complemento' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaEndereco', @level2type=N'COLUMN',@level2name=N'DsComplemento';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Define sem não tem número\n1 - Sim\n0 - Não' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaEndereco', @level2type=N'COLUMN',@level2name=N'IsSemNumero';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaEndereco', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaEndereco', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaEndereco', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante da última atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaEndereco', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCNAE', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCNAE', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCNAE', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante da última atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblCNAE', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Codigo de identificação da pessoa' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaCNAE', @level2type=N'COLUMN',@level2name=N'CodPessoa';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário de sistemas' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaCNAE', @level2type=N'COLUMN',@level2name=N'DsOperador';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Usuário do sistema que implementou a última atualização no registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaCNAE', @level2type=N'COLUMN',@level2name=N'DsOperadorAtualizacao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Instante de inclusão do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaCNAE', @level2type=N'COLUMN',@level2name=N'DatInclusao';
GO

execute [dtb_pega].sys.sp_addextendedproperty  @name=N'MS_Description', @value=N'Data da ultima atualização do registro' , @level0type=N'SCHEMA',@level0name=N'ClientOnboarding', @level1type=N'TABLE',@level1name=N'tblPessoaCNAE', @level2type=N'COLUMN',@level2name=N'DatUltimaAtualizacao';
GO

Essas instruções SQL adicionam descrições estendidas a algumas colunas de tabelas no banco de dados chamado "dtb_pega" do esquema "ClientOnboarding". Essas descrições servem para fornecer informações sobre o significado e o propósito de cada coluna. Aqui está o entendimento do negócio em Português:

1. Tabela "tblPessoaEndereco":
   - Coluna "CodPessoa": Representa o código do cliente.
   - Coluna "CodEstado": Representa o código do estado.
   - Coluna "CodCidade": Representa o código da cidade.
   - Coluna "CodCEP": Representa o CEP (Código de Endereçamento Postal).
   - Coluna "DsUF": Representa a Unidade Federativa (estado).
   - Coluna "DsCidade": Representa o nome da cidade.
   - Coluna "DsBairro": Representa o nome do bairro.
   - Coluna "DsLogradouro": Representa o endereço.
   - Coluna "DsNumero": Representa o número do endereço.
   - Coluna "DsComplemento": Representa o complemento do endereço.
   - Coluna "IsSemNumero": Define se o endereço não possui número. Valor 1 significa "Sim" e valor 0 significa "Não".
   - Coluna "DsOperador": Representa o usuário de sistemas.
   - Coluna "DsOperadorAtualizacao": Representa o usuário do sistema que implementou a última atualização no registro.
   - Coluna "DatInclusao": Representa o instante de inclusão do registro.
   - Coluna "DatUltimaAtualizacao": Representa o instante da última atualização do registro.

2. Tabela "tblCNAE":
   - Coluna "DsOperador": Representa o usuário de sistemas.
   - Coluna "DsOperadorAtualizacao": Representa o usuário do sistema que implementou a última atualização no registro.
   - Coluna "DatInclusao": Representa o instante de inclusão do registro.
   - Coluna "DatUltimaAtualizacao": Representa o instante da última atualização do registro.

3. Tabela "tblPessoaCNAE":
   - Coluna "CodPessoa": Representa o código de identificação da pessoa.
   - Coluna "DsOperador": Representa o usuário de sistemas.
   - Coluna "DsOperadorAtualizacao": Representa o usuário do sistema que implementou a última atualização no registro.
   - Coluna "DatInclusao": Representa o instante de inclusão do registro.
   - Coluna "DatUltimaAtualizacao": Representa a data da última atualização do registro.

Essas descrições estendidas facilitam o entendimento e a manutenção do banco de dados, permitindo que os desenvolvedores e administradores compreendam melhor o propósito de cada coluna nas respectivas tabelas.