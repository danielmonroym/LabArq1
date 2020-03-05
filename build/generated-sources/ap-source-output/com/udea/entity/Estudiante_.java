package com.udea.entity;

import com.udea.entity.Matricula;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2020-03-05T06:40:44")
@StaticMetamodel(Estudiante.class)
public class Estudiante_ { 

    public static volatile SingularAttribute<Estudiante, String> password;
    public static volatile SingularAttribute<Estudiante, Integer> estudianteId;
    public static volatile SingularAttribute<Estudiante, String> foto;
    public static volatile ListAttribute<Estudiante, Matricula> matriculaList;
    public static volatile SingularAttribute<Estudiante, String> sexo;
    public static volatile SingularAttribute<Estudiante, Integer> semestre;
    public static volatile SingularAttribute<Estudiante, String> nombre;
    public static volatile SingularAttribute<Estudiante, String> edad;
    public static volatile SingularAttribute<Estudiante, String> facultad;

}