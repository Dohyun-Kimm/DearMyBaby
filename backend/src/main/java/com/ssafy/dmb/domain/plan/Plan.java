package com.ssafy.dmb.domain.plan;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.ssafy.dmb.domain.user.Family;
import lombok.*;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.Period;
import java.util.ArrayList;
import java.util.List;

@Getter @Setter
@Entity
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class Plan {
    @Id @GeneratedValue
    @Column(name = "plan_id")
    private Long id;

    @Column(nullable = false)
    private String planName;
    @Column(nullable = false)
    private String planDestination;

    @Column(nullable = false)
    private LocalDate startDate;

    @Column(nullable = false)
    private LocalDate endDate;

    @Column(nullable = false)
    private int planPeriod;

    private int currentDay;

    private int planState;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "family_id")
    @JsonBackReference
    private Family family;

    private String planLatitude;

    private String planLongitude;

    @OneToMany(mappedBy = "plan", cascade = CascadeType.ALL)
    private List<Bookmark> bookmarks = new ArrayList<>();

    @OneToMany(mappedBy = "plan", cascade = CascadeType.ALL)
    private List<Day> days = new ArrayList<>();

    @OneToMany(mappedBy = "plan", cascade = CascadeType.ALL)
    private List<Checklist> checklists = new ArrayList<>();


    @Builder
    public Plan(String planLatitude, String planLongitude, String planDestination, LocalDate startDate, LocalDate endDate, Family family, String planName, int planState, int currentDay){
        this.planName = planName;
        this.planDestination = planDestination;
        this.planLatitude = planLatitude;
        this.planLongitude = planLongitude;
        this.startDate = startDate;
        this.endDate = endDate;
        this.planPeriod = Period.between(startDate, endDate).getDays() + 1;
        this.currentDay = currentDay;
        this.family = family;
        this.planState = planState;
    }

}
