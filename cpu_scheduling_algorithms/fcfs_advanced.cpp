
#include <bits/stdc++.h>
using namespace std;
 
class Process {
private:
    int at;
    int bt;
    int ct;
    int tat;
    int wt;
    int pid;
 
public:
    int& operator[](string var)
    {
        if (var == "at")
            return at;
        if (var == "bt")
            return bt;
        if (var == "ct")
            return ct;
        if (var == "tat")
            return tat;
        if (var == "wt")
            return wt;
        return pid;
    }
 
    void update_after_ct()
    {
        tat = ct - at;
        wt = tat - bt;
    }
 
    void display()
    {
        printf("%d\t%d\t%d\t%d\t%d\t%d\n", pid, at, bt, ct,
               tat, wt);
    }
};
 
float average(vector<Process> P, string var)
{
    int total = 0;
    for (auto temp : P) {
        total += temp[var];
    }
    return (float)total / P.size();
}
 
int main()
{
    int n;
    cin >> n;
    int counter = 0;
    vector<Process> P(n);
    
    printf("\n Enter the Arrival and Burst time of the Processes: \n ");

    for (Process& temp : P) {
        temp["id"] = counter++;
        cin >> temp["at"] >> temp["bt"];
    }
    sort(P.begin(), P.end(),
         [](Process first, Process second) {
             return first["at"] < second["at"];
         });
    printf("pid\tat\tbt\tct\ttat\twt\n");
    P[0]["ct"] = P[0]["at"] + P[0]["bt"];
    P[0].update_after_ct();
    P[0].display();
    for (int i = 1; i < P.size(); i++) {
        if (P[i]["at"] < P[i - 1]["ct"]) {
            P[i]["ct"] = P[i - 1]["ct"] + P[i]["bt"];
        }
        else {
            printf("curr['at'] : %d, prev['ct'] : %d\n",
                   P[i]["at"], P[i - 1]["ct"]);
            P[i]["ct"] = P[i]["at"] + P[i]["bt"];
        }
        P[i].update_after_ct();
        P[i].display();
    }
 
    printf("Average waiting time : %f\n", average(P, "wt"));
    return 0;
}