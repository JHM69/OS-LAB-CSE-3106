#include <stdio.h>
#include <stdlib.h>

// Process structure
typedef struct {
    int process_id;
    int arrival_time;
    int burst_time;
    int remaining_time;
    int completion_time;
    int waiting_time;
    int turnaround_time;
} Process;

// Function to sort processes by burst time
void sortProcesses(Process *processes, int n) {
    for (int i = 0; i < n - 1; i++) {
        for (int j = 0; j < n - i - 1; j++) {
            if (processes[j].burst_time > processes[j + 1].burst_time) {
                Process temp = processes[j];
                processes[j] = processes[j + 1];
                processes[j + 1] = temp;
            }
        }
    }
}

int main() {
    int n;

    //printf("Enter the number of processes: ");
    scanf("%d", &n);

    Process *processes = (Process *)malloc(n * sizeof(Process));

    printf("\n Enter the Arrival and Burst time of the Processes: \n ");
    // Input process details
    for (int i = 0; i < n; i++) {
        processes[i].process_id = i + 1;
        //printf("Enter arrival time and burst time for process %d: ", i + 1);
        scanf("%d %d", &processes[i].arrival_time, &processes[i].burst_time);
        processes[i].remaining_time = processes[i].burst_time;
    }

    // Sort processes by arrival time
    for (int i = 0; i < n - 1; i++) {
        for (int j = 0; j < n - i - 1; j++) {
            if (processes[j].arrival_time > processes[j + 1].arrival_time) {
                Process temp = processes[j];
                processes[j] = processes[j + 1];
                processes[j + 1] = temp;
            }
        }
    }

    int currentTime = 0;
    int completed = 0;
    float totalWaitingTime = 0;
    float totalTurnaroundTime = 0;

    printf("\nGantt Chart:\n");
    printf("------------------------------------------------\n");
    printf("| Time | Process | Remaining Time |\n");
    printf("------------------------------------------------\n");

    while (completed < n) {
        sortProcesses(processes, n);

        int selectedProcess = -1;
        for (int i = 0; i < n; i++) {
            if (processes[i].arrival_time <= currentTime && processes[i].remaining_time > 0) {
                selectedProcess = i;
                break;
            }
        }

        if (selectedProcess == -1) {
            currentTime++;
            continue;
        }

        processes[selectedProcess].remaining_time--;

        printf("|  %2d  |    P%d    |       %2d       |\n", currentTime, processes[selectedProcess].process_id, processes[selectedProcess].remaining_time);

        if (processes[selectedProcess].remaining_time == 0) {
            completed++;
            processes[selectedProcess].completion_time = currentTime + 1;
            processes[selectedProcess].waiting_time = processes[selectedProcess].completion_time - processes[selectedProcess].arrival_time - processes[selectedProcess].burst_time;
            processes[selectedProcess].turnaround_time = processes[selectedProcess].completion_time - processes[selectedProcess].arrival_time;

            totalWaitingTime += processes[selectedProcess].waiting_time;
            totalTurnaroundTime += processes[selectedProcess].turnaround_time;
        }

        currentTime++;
    }

    printf("------------------------------------------------\n");

    float avgWaitingTime = totalWaitingTime / n;
    float avgTurnaroundTime = totalTurnaroundTime / n;

    printf("\nAverage Waiting Time: %.2f\n", avgWaitingTime);
    printf("Average Turnaround Time: %.2f\n", avgTurnaroundTime);

    free(processes);

    return 0;
}
