.class public Lccsancom/vungle/warren/tasks/SendReportsJob;
.super Ljava/lang/Object;
.source "SendReportsJob.java"

# interfaces
.implements Lccsancom/vungle/warren/tasks/Job;


# static fields
.field private static final DEFAULT_DELAY:J = 0x7530L

.field static final TAG:Ljava/lang/String;


# instance fields
.field private repository:Lccsancom/vungle/warren/persistence/Repository;

.field private vungleApiClient:Lccsancom/vungle/warren/VungleApiClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lccsancom/vungle/warren/tasks/SendReportsJob;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/tasks/SendReportsJob;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/VungleApiClient;)V
    .locals 0
    .param p1, "repository"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p2, "vungleApiClient"    # Lccsancom/vungle/warren/VungleApiClient;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lccsancom/vungle/warren/tasks/SendReportsJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    .line 31
    iput-object p2, p0, Lccsancom/vungle/warren/tasks/SendReportsJob;->vungleApiClient:Lccsancom/vungle/warren/VungleApiClient;

    .line 32
    return-void
.end method

.method public static makeJobInfo(Z)Lccsancom/vungle/warren/tasks/JobInfo;
    .locals 5
    .param p0, "sendAllReports"    # Z

    .line 35
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 36
    .local v0, "extras":Lccsanandroid/os/Bundle;
    const-string v1, "sendAll"

    invoke-virtual {v0, v1, p0}, Lccsanandroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    new-instance v1, Lccsancom/vungle/warren/tasks/JobInfo;

    sget-object v2, Lccsancom/vungle/warren/tasks/SendReportsJob;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/tasks/JobInfo;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1, v0}, Lccsancom/vungle/warren/tasks/JobInfo;->setExtras(Lccsanandroid/os/Bundle;)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    .line 40
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/tasks/JobInfo;->setPriority(I)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    .line 41
    const-wide/16 v2, 0x7530

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lccsancom/vungle/warren/tasks/JobInfo;->setReschedulePolicy(JI)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    .line 38
    return-object v1
.end method


# virtual methods
.method public onRunJob(Lccsanandroid/os/Bundle;Lccsancom/vungle/warren/tasks/JobRunner;)I
    .locals 13
    .param p1, "params"    # Lccsanandroid/os/Bundle;
    .param p2, "jobRunner"    # Lccsancom/vungle/warren/tasks/JobRunner;

    .line 47
    const-string v0, "sendAll"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 51
    .local v0, "sendAllReports":Z
    if-eqz v0, :cond_0

    .line 52
    iget-object v2, p0, Lccsancom/vungle/warren/tasks/SendReportsJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v2}, Lccsancom/vungle/warren/persistence/Repository;->loadAllReportToSend()Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .local v2, "reportList":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Report;>;"
    goto :goto_0

    .line 54
    .end local v2    # "reportList":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Report;>;"
    :cond_0
    iget-object v2, p0, Lccsancom/vungle/warren/tasks/SendReportsJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v2}, Lccsancom/vungle/warren/persistence/Repository;->loadReadyOrFailedReportToSend()Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 57
    .restart local v2    # "reportList":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Report;>;"
    :goto_0
    const/4 v3, 0x1

    if-nez v2, :cond_1

    return v3

    .line 60
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/vungle/warren/model/Report;

    .line 62
    .local v5, "r":Lccsancom/vungle/warren/model/Report;
    const/4 v6, 0x3

    :try_start_0
    iget-object v7, p0, Lccsancom/vungle/warren/tasks/SendReportsJob;->vungleApiClient:Lccsancom/vungle/warren/VungleApiClient;

    invoke-virtual {v5}, Lccsancom/vungle/warren/model/Report;->toReportBody()Lccsancom/google/gson/JsonObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Lccsancom/vungle/warren/VungleApiClient;->reportAd(Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;

    move-result-object v7

    invoke-interface {v7}, Lccsancom/vungle/warren/network/Call;->execute()Lccsancom/vungle/warren/network/Response;

    move-result-object v7

    .line 63
    .local v7, "response":Lccsancom/vungle/warren/network/Response;
    invoke-virtual {v7}, Lccsancom/vungle/warren/network/Response;->code()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_2

    .line 64
    iget-object v8, p0, Lccsancom/vungle/warren/tasks/SendReportsJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v8, v5}, Lccsancom/vungle/warren/persistence/Repository;->delete(Ljava/lang/Object;)V

    goto :goto_2

    .line 66
    :cond_2
    invoke-virtual {v5, v6}, Lccsancom/vungle/warren/model/Report;->setStatus(I)V

    .line 67
    iget-object v8, p0, Lccsancom/vungle/warren/tasks/SendReportsJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v8, v5}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    .line 68
    iget-object v8, p0, Lccsancom/vungle/warren/tasks/SendReportsJob;->vungleApiClient:Lccsancom/vungle/warren/VungleApiClient;

    invoke-virtual {v8, v7}, Lccsancom/vungle/warren/VungleApiClient;->getRetryAfterHeaderValue(Lccsancom/vungle/warren/network/Response;)J

    move-result-wide v8

    .line 69
    .local v8, "retryAfterHeaderValue":J
    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-lez v12, :cond_3

    .line 70
    invoke-static {v1}, Lccsancom/vungle/warren/tasks/SendReportsJob;->makeJobInfo(Z)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lccsancom/vungle/warren/tasks/JobInfo;->setDelay(J)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    invoke-interface {p2, v1}, Lccsancom/vungle/warren/tasks/JobRunner;->execute(Lccsancom/vungle/warren/tasks/JobInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    return v3

    .line 89
    .end local v7    # "response":Lccsancom/vungle/warren/network/Response;
    .end local v8    # "retryAfterHeaderValue":J
    :cond_3
    :goto_2
    nop

    .line 90
    .end local v5    # "r":Lccsancom/vungle/warren/model/Report;
    goto :goto_1

    .line 87
    .restart local v5    # "r":Lccsancom/vungle/warren/model/Report;
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    return v3

    .line 75
    .end local v1    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    :catch_1
    move-exception v1

    .line 76
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Lccsancom/vungle/warren/tasks/SendReportsJob;->TAG:Ljava/lang/String;

    const-string v7, "SendReportsJob: IOEx"

    invoke-static {v4, v7}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsancom/vungle/warren/model/Report;

    .line 78
    .local v7, "markFail":Lccsancom/vungle/warren/model/Report;
    invoke-virtual {v7, v6}, Lccsancom/vungle/warren/model/Report;->setStatus(I)V

    .line 80
    :try_start_1
    iget-object v8, p0, Lccsancom/vungle/warren/tasks/SendReportsJob;->repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v8, v7}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_1
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1 .. :try_end_1} :catch_2

    .line 83
    nop

    .line 84
    .end local v7    # "markFail":Lccsancom/vungle/warren/model/Report;
    goto :goto_3

    .line 81
    .restart local v7    # "markFail":Lccsancom/vungle/warren/model/Report;
    :catch_2
    move-exception v4

    .line 82
    .local v4, "ignored":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    return v3

    .line 85
    .end local v4    # "ignored":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    .end local v7    # "markFail":Lccsancom/vungle/warren/model/Report;
    :cond_4
    sget-object v3, Lccsancom/vungle/warren/tasks/SendReportsJob;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v3, 0x2

    return v3

    .line 92
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "r":Lccsancom/vungle/warren/model/Report;
    :cond_5
    return v1
.end method
