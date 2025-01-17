package library.management.system.domain;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "member")
public class Member {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "firstname", nullable = false)
    private String firstName;

    @Column(name = "lastname", nullable = false)
    private String lastName;

    @Column(name = "age", nullable = false)
    private int age;

    @Column(name = "email")
    private String email;

    @Column(name = "contact")
    private String contact;

    @ManyToMany
    @JoinTable(
            name = "member_books",
            joinColumns = @JoinColumn(name = "member_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "book_id", referencedColumnName = "id")
    )
    private List<Book> books;

    public Member() {}

    public Member(String firstName, String lastName, int age, String email, String contact) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
        this.email = email;
        this.contact = contact;
    }

}
