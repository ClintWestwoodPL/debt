package pl.alx.debt.model;

import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;


@Entity
@Table(name = "debtor")
@Getter
@NoArgsConstructor
public class Debtor {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(length =45, unique = true, nullable = false)
    private String email;

    private String password;
    @Column (length = 45, nullable = false)
    private String firstName;
    @Column (length = 45, nullable = false)
    private String lastName;

    public Debtor(String email, String firstName, String lastName) {
        this.email = email;
        this.firstName = firstName;
        this.lastName = lastName;
    }
}
