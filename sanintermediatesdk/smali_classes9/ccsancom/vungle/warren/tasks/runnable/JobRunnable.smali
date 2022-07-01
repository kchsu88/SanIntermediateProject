.class public Lccsancom/vungle/warren/tasks/runnable/JobRunnable;
.super Lccsancom/vungle/warren/utility/PriorityRunnable;
.source "JobRunnable.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final creator:Lccsancom/vungle/warren/tasks/JobCreator;

.field private final jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;

.field private final jobinfo:Lccsancom/vungle/warren/tasks/JobInfo;

.field private final threadPriorityHelper:Lccsancom/vungle/warren/tasks/utility/ThreadPriorityHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lccsancom/vungle/warren/tasks/runnable/JobRunnable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/tasks/runnable/JobRunnable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsancom/vungle/warren/tasks/JobInfo;Lccsancom/vungle/warren/tasks/JobCreator;Lccsancom/vungle/warren/tasks/JobRunner;Lccsancom/vungle/warren/tasks/utility/ThreadPriorityHelper;)V
    .locals 0
    .param p1, "jobInfo"    # Lccsancom/vungle/warren/tasks/JobInfo;
    .param p2, "jobCreator"    # Lccsancom/vungle/warren/tasks/JobCreator;
    .param p3, "jobRunner"    # Lccsancom/vungle/warren/tasks/JobRunner;
    .param p4, "threadPriorityHelper"    # Lccsancom/vungle/warren/tasks/utility/ThreadPriorityHelper;

    .line 27
    invoke-direct {p0}, Lccsancom/vungle/warren/utility/PriorityRunnable;-><init>()V

    .line 28
    iput-object p1, p0, Lccsancom/vungle/warren/tasks/runnable/JobRunnable;->jobinfo:Lccsancom/vungle/warren/tasks/JobInfo;

    .line 29
    iput-object p2, p0, Lccsancom/vungle/warren/tasks/runnable/JobRunnable;->creator:Lccsancom/vungle/warren/tasks/JobCreator;

    .line 30
    iput-object p3, p0, Lccsancom/vungle/warren/tasks/runnable/JobRunnable;->jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;

    .line 31
    iput-object p4, p0, Lccsancom/vungle/warren/tasks/runnable/JobRunnable;->threadPriorityHelper:Lccsancom/vungle/warren/tasks/utility/ThreadPriorityHelper;

    .line 32
    return-void
.end method


# virtual methods
.method public getPriority()Ljava/lang/Integer;
    .locals 1

    .line 36
    iget-object v0, p0, Lccsancom/vungle/warren/tasks/runnable/JobRunnable;->jobinfo:Lccsancom/vungle/warren/tasks/JobInfo;

    invoke-virtual {v0}, Lccsancom/vungle/warren/tasks/JobInfo;->getPriority()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 10

    .line 42
    iget-object v0, p0, Lccsancom/vungle/warren/tasks/runnable/JobRunnable;->threadPriorityHelper:Lccsancom/vungle/warren/tasks/utility/ThreadPriorityHelper;

    if-eqz v0, :cond_0

    .line 44
    :try_start_0
    iget-object v1, p0, Lccsancom/vungle/warren/tasks/runnable/JobRunnable;->jobinfo:Lccsancom/vungle/warren/tasks/JobInfo;

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/tasks/utility/ThreadPriorityHelper;->makeAndroidThreadPriority(Lccsancom/vungle/warren/tasks/JobInfo;)I

    move-result v0

    .line 45
    .local v0, "targetPriority":I
    invoke-static {v0}, Lccsanandroid/os/Process;->setThreadPriority(I)V

    .line 46
    sget-object v1, Lccsancom/vungle/warren/tasks/runnable/JobRunnable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting process thread prio = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/vungle/warren/tasks/runnable/JobRunnable;->jobinfo:Lccsancom/vungle/warren/tasks/JobInfo;

    invoke-virtual {v3}, Lccsancom/vungle/warren/tasks/JobInfo;->getJobTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    nop

    .end local v0    # "targetPriority":I
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lccsancom/vungle/warren/tasks/runnable/JobRunnable;->TAG:Ljava/lang/String;

    const-string v2, "Error on setting process thread priority"

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lccsancom/vungle/warren/tasks/runnable/JobRunnable;->jobinfo:Lccsancom/vungle/warren/tasks/JobInfo;

    invoke-virtual {v0}, Lccsancom/vungle/warren/tasks/JobInfo;->getJobTag()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "jobTag":Ljava/lang/String;
    iget-object v1, p0, Lccsancom/vungle/warren/tasks/runnable/JobRunnable;->jobinfo:Lccsancom/vungle/warren/tasks/JobInfo;

    invoke-virtual {v1}, Lccsancom/vungle/warren/tasks/JobInfo;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v1

    .line 57
    .local v1, "params":Lccsanandroid/os/Bundle;
    sget-object v2, Lccsancom/vungle/warren/tasks/runnable/JobRunnable;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start job "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v3, p0, Lccsancom/vungle/warren/tasks/runnable/JobRunnable;->creator:Lccsancom/vungle/warren/tasks/JobCreator;

    invoke-interface {v3, v0}, Lccsancom/vungle/warren/tasks/JobCreator;->create(Ljava/lang/String;)Lccsancom/vungle/warren/tasks/Job;

    move-result-object v3

    .line 60
    .local v3, "job":Lccsancom/vungle/warren/tasks/Job;
    iget-object v4, p0, Lccsancom/vungle/warren/tasks/runnable/JobRunnable;->jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;

    invoke-interface {v3, v1, v4}, Lccsancom/vungle/warren/tasks/Job;->onRunJob(Lccsanandroid/os/Bundle;Lccsancom/vungle/warren/tasks/JobRunner;)I

    move-result v4

    .line 61
    .local v4, "result":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "On job finished "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " with result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 64
    iget-object v5, p0, Lccsancom/vungle/warren/tasks/runnable/JobRunnable;->jobinfo:Lccsancom/vungle/warren/tasks/JobInfo;

    invoke-virtual {v5}, Lccsancom/vungle/warren/tasks/JobInfo;->makeNextRescedule()J

    move-result-wide v5

    .line 66
    .local v5, "nextReschedule":J
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    .line 67
    iget-object v7, p0, Lccsancom/vungle/warren/tasks/runnable/JobRunnable;->jobinfo:Lccsancom/vungle/warren/tasks/JobInfo;

    invoke-virtual {v7, v5, v6}, Lccsancom/vungle/warren/tasks/JobInfo;->setDelay(J)Lccsancom/vungle/warren/tasks/JobInfo;

    .line 68
    iget-object v7, p0, Lccsancom/vungle/warren/tasks/runnable/JobRunnable;->jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;

    iget-object v8, p0, Lccsancom/vungle/warren/tasks/runnable/JobRunnable;->jobinfo:Lccsancom/vungle/warren/tasks/JobInfo;

    invoke-interface {v7, v8}, Lccsancom/vungle/warren/tasks/JobRunner;->execute(Lccsancom/vungle/warren/tasks/JobInfo;)V

    .line 69
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rescheduling "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lccsancom/vungle/warren/tasks/UnknownTagException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 76
    .end local v0    # "jobTag":Ljava/lang/String;
    .end local v1    # "params":Lccsanandroid/os/Bundle;
    .end local v3    # "job":Lccsancom/vungle/warren/tasks/Job;
    .end local v4    # "result":I
    .end local v5    # "nextReschedule":J
    :catchall_1
    move-exception v0

    .line 77
    .local v0, "th":Ljava/lang/Throwable;
    sget-object v1, Lccsancom/vungle/warren/tasks/runnable/JobRunnable;->TAG:Ljava/lang/String;

    const-string v2, "Can\'t start job"

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 74
    .end local v0    # "th":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Lccsancom/vungle/warren/tasks/UnknownTagException;
    sget-object v1, Lccsancom/vungle/warren/tasks/runnable/JobRunnable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create job"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsancom/vungle/warren/tasks/UnknownTagException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v0    # "e":Lccsancom/vungle/warren/tasks/UnknownTagException;
    :cond_1
    :goto_1
    nop

    .line 79
    :goto_2
    return-void
.end method
