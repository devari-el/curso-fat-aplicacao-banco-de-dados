CREATE TABLE Colaboradores (
    id_colaborador INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(80) NOT NULL,
    salario DECIMAL(10, 2),
    data_contratacao DATE
); -- 50 registros

select * from Colaboradores;

select nome, salario, cargo, -- Cria a exibição da coluna nivel com condições
	case
		when salario < 4000 then 'Junior'
        when salario < 6500 then 'Pleno'
        else 'Sênior' end nivel
from Colaboradores order by salario asc;

--função para calcular encargos
delimiter $$

create function calcular_encargos(salario decimal(10,2))
returns decimal(10,2)
deterministic

begin
	declare salario_liq decimal(10,2);
	set salario_liq = case
		when salario < 4000 then salario*0.85
        when salario < 6500 then salario*0.80
        else salario*0.73
	end;
    
    return salario_liq;
end$$
    
delimiter ;

select nome, cargo, salario as salario_bruto, 
	calcular_encargos(salario) as salario_liquido
from Colaboradores order by salario_liquido asc;

delimiter $$

create function isDiretor(salario decimal(10,2))
returns varchar(15)
deterministic

begin
	return if(
		salario > 13000, 'Diretor', 'Colaborador');
end$$

delimiter ;

select nome, isDiretor(salario) as cargo
from Colaboradores order by salario desc
limit 10;

drop function isDiretor;