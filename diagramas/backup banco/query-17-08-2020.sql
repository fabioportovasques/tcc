select * FROM departamento;
select * FROM cargo;
select * FROM funcionario;
-------------------------------------------
SELECT nome_func FROM funcionario;
------------------------------------
SELECT nome_func,sobrenome_func , nome_dep,nome_cargo 
FROM funcionario fcnr

INNER JOIN departamento dprt ON fcnr.departamento_cod_dep = dprt.cod_dep INNER JOIN cargo crg ON fcnr.cargo_cod_cargo =  crg.cod_cargo;
----------------------------------------------------------------------------------------------------------------------------------------------------

insert into funcionario (matricula_func,nome_func,sobrenome_func,idade,cpf,rg,telefone1,telefone2,genero,status,data_nascimento,data_admissao,data_demissao,nacionalidade,uf,cidade,bairro,rua,cep,numero_rua,foto_func,senha,departamento_cod_dep,cargo_cod_cargo) values
(null,'Ana  Maria','vasconcelos','43','897979','0989080','53999456712',null,'femenino','ativo','1987-11-17','2020-03-02',null,'brasileiro','rs','candiota','vinte cinco','borges  medeiros','96418260','671',null,'0992','6','6');

