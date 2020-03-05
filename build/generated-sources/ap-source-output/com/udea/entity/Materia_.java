package com.udea.entity;

import com.udea.entity.Matricula;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-03-05T06:40:44")
@StaticMetamodel(Materia.class)
public class Materia_ { 

    public static volatile SingularAttribute<Materia, Integer> idMateria;
    public static volatile SingularAttribute<Materia, String> nombreProfesor;
    public static volatile ListAttribute<Materia, Matricula> matriculaList;
    public static volatile SingularAttribute<Materia, Integer> creditos;
    public static volatile SingularAttribute<Materia, String> nombre;

}