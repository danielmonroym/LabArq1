package com.udea.entity;

import com.udea.entity.Estudiante;
import com.udea.entity.Materia;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-03-05T06:40:44")
@StaticMetamodel(Matricula.class)
public class Matricula_ { 

    public static volatile SingularAttribute<Matricula, Estudiante> estudianteMatricula;
    public static volatile SingularAttribute<Matricula, Integer> idMatricula;
    public static volatile SingularAttribute<Matricula, Materia> materiaMatricula;

}