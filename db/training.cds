namespace com.training;
using {cuid, Country} from '@sap/cds/common';

entity Course : cuid {
    Student : Association to many StudentCourse
                  on Student.Course = $self;
}

entity Student : cuid {
    Course : Association to many StudentCourse
                 on Course.Student = $self;
}

entity StudentCourse : cuid {
    Student : Association to Student;
    Course  : Association to Course;
}

entity Orders {
    key ClientEmail : String(65);
        FirstName   : String(30);
        LastName    : String(30);
        CreatedOn   : Date;
        Reviewed    : Boolean;
        Approved    : Boolean;
        Country     : Country;
        Status      : String(1);
}

// type EmailsAddresses_01 : many {
//     kind  : String;
//     email : String;
// };

// type EmailsAddresses_02 {
//     kind  : String;
//     email : String;
// };

// entity Emails {
//     email_01  :      EmailsAddresses_01;
//     email_02  : many EmailsAddresses_02;
//     email_03  : many {
//         kind  :      String;
//         email :      String;
//     }
// }

// type Gender : String enum {
//     male;
//     female;
// };

// entity Order {
//     clientGender : Gender;
//     status       : Integer enum {
//         submitted = 1;
//         fulfiller = 2;
//         shipped   = 3;
//         cancel    = -1;
//     };
//     priority     : String @assert.range enum {
//         high;
//         medium;
//         low;
//     }
// };

// entity Car {
//     key ID                : UUID;
//         name              : String;
//         virtual dicount_1 : Decimal;
//         @Core.Computed: false
//         virtual dicount_2 : Decimal;
// };

// entity ParamProducts(pName : String)     as
//     select from Products {
//         Name,
//         Price,
//         Quantity
//     }
//     where
//         Name = : pName;

// entity ProjParamProducts(pName : String) as projection on Products where Name = : pName;
