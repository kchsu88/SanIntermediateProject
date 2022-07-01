.class public Lccsancom/vungle/warren/tasks/VungleJobCreator;
.super Ljava/lang/Object;
.source "VungleJobCreator.java"

# interfaces
.implements Lccsancom/vungle/warren/tasks/JobCreator;


# instance fields
.field private final adAnalytics:Lccsancom/vungle/warren/analytics/AdAnalytics;

.field private final adLoader:Lccsancom/vungle/warren/AdLoader;

.field private final apiClient:Lccsancom/vungle/warren/VungleApiClient;

.field private final backgroundExecutor:Ljava/util/concurrent/ExecutorService;

.field private final designer:Lccsancom/vungle/warren/persistence/Designer;

.field private final logManager:Lccsancom/vungle/warren/log/LogManager;

.field private final reconfigCall:Lccsancom/vungle/warren/tasks/ReconfigJob$ReconfigCall;

.field private final repository:Lccsancom/vungle/warren/persistence/Repository;

.field private final vungleApi:Lccsancom/vungle/warren/VungleStaticApi;


# direct methods
.method public constructor <init>(Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/persistence/Designer;Lccsancom/vungle/warren/VungleApiClient;Lccsancom/vungle/warren/analytics/AdAnalytics;Lccsancom/vungle/warren/tasks/ReconfigJob$ReconfigCall;Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/VungleStaticApi;Lccsancom/vungle/warren/log/LogManager;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "repository"    # Lccsancom/vungle/warren/persistence/Repository;
    .param p2, "designer"    # Lccsancom/vungle/warren/persistence/Designer;
    .param p3, "apiClient"    # Lccsancom/vungle/warren/VungleApiClient;
    .param p4, "adAnalytics"    # Lccsancom/vungle/warren/analytics/AdAnalytics;
    .param p5, "reconfigCall"    # Lccsancom/vungle/warren/tasks/ReconfigJob$ReconfigCall;
    .param p6, "adLoader"    # Lccsancom/vungle/warren/AdLoader;
    .param p7, "vungleApi"    # Lccsancom/vungle/warren/VungleStaticApi;
    .param p8, "logManager"    # Lccsancom/vungle/warren/log/LogManager;
    .param p9, "backgroundExecutor"    # Ljava/util/concurrent/ExecutorService;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lccsancom/vungle/warren/tasks/VungleJobCreator;->repository:Lccsancom/vungle/warren/persistence/Repository;

    .line 38
    iput-object p2, p0, Lccsancom/vungle/warren/tasks/VungleJobCreator;->designer:Lccsancom/vungle/warren/persistence/Designer;

    .line 39
    iput-object p5, p0, Lccsancom/vungle/warren/tasks/VungleJobCreator;->reconfigCall:Lccsancom/vungle/warren/tasks/ReconfigJob$ReconfigCall;

    .line 40
    iput-object p3, p0, Lccsancom/vungle/warren/tasks/VungleJobCreator;->apiClient:Lccsancom/vungle/warren/VungleApiClient;

    .line 41
    iput-object p4, p0, Lccsancom/vungle/warren/tasks/VungleJobCreator;->adAnalytics:Lccsancom/vungle/warren/analytics/AdAnalytics;

    .line 42
    iput-object p6, p0, Lccsancom/vungle/warren/tasks/VungleJobCreator;->adLoader:Lccsancom/vungle/warren/AdLoader;

    .line 43
    iput-object p7, p0, Lccsancom/vungle/warren/tasks/VungleJobCreator;->vungleApi:Lccsancom/vungle/warren/VungleStaticApi;

    .line 44
    iput-object p8, p0, Lccsancom/vungle/warren/tasks/VungleJobCreator;->logManager:Lccsancom/vungle/warren/log/LogManager;

    .line 45
    iput-object p9, p0, Lccsancom/vungle/warren/tasks/VungleJobCreator;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 46
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lccsancom/vungle/warren/tasks/Job;
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/vungle/warren/tasks/UnknownTagException;
        }
    .end annotation

    .line 50
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 54
    sget-object v0, Lccsancom/vungle/warren/tasks/ReconfigJob;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Lccsancom/vungle/warren/tasks/ReconfigJob;

    iget-object v1, p0, Lccsancom/vungle/warren/tasks/VungleJobCreator;->reconfigCall:Lccsancom/vungle/warren/tasks/ReconfigJob$ReconfigCall;

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/tasks/ReconfigJob;-><init>(Lccsancom/vungle/warren/tasks/ReconfigJob$ReconfigCall;)V

    return-object v0

    .line 56
    :cond_0
    sget-object v0, Lccsancom/vungle/warren/tasks/DownloadJob;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    new-instance v0, Lccsancom/vungle/warren/tasks/DownloadJob;

    iget-object v1, p0, Lccsancom/vungle/warren/tasks/VungleJobCreator;->adLoader:Lccsancom/vungle/warren/AdLoader;

    iget-object v2, p0, Lccsancom/vungle/warren/tasks/VungleJobCreator;->vungleApi:Lccsancom/vungle/warren/VungleStaticApi;

    invoke-direct {v0, v1, v2}, Lccsancom/vungle/warren/tasks/DownloadJob;-><init>(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/VungleStaticApi;)V

    return-object v0

    .line 58
    :cond_1
    sget-object v0, Lccsancom/vungle/warren/tasks/SendReportsJob;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    new-instance v0, Lccsancom/vungle/warren/tasks/SendReportsJob;

    iget-object v1, p0, Lccsancom/vungle/warren/tasks/VungleJobCreator;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v2, p0, Lccsancom/vungle/warren/tasks/VungleJobCreator;->apiClient:Lccsancom/vungle/warren/VungleApiClient;

    invoke-direct {v0, v1, v2}, Lccsancom/vungle/warren/tasks/SendReportsJob;-><init>(Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/VungleApiClient;)V

    return-object v0

    .line 60
    :cond_2
    sget-object v0, Lccsancom/vungle/warren/tasks/CleanupJob;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    new-instance v0, Lccsancom/vungle/warren/tasks/CleanupJob;

    iget-object v1, p0, Lccsancom/vungle/warren/tasks/VungleJobCreator;->designer:Lccsancom/vungle/warren/persistence/Designer;

    iget-object v2, p0, Lccsancom/vungle/warren/tasks/VungleJobCreator;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v3, p0, Lccsancom/vungle/warren/tasks/VungleJobCreator;->adLoader:Lccsancom/vungle/warren/AdLoader;

    invoke-direct {v0, v1, v2, v3}, Lccsancom/vungle/warren/tasks/CleanupJob;-><init>(Lccsancom/vungle/warren/persistence/Designer;Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/AdLoader;)V

    return-object v0

    .line 62
    :cond_3
    sget-object v0, Lccsancom/vungle/warren/tasks/AnalyticsJob;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    new-instance v0, Lccsancom/vungle/warren/tasks/AnalyticsJob;

    iget-object v1, p0, Lccsancom/vungle/warren/tasks/VungleJobCreator;->adAnalytics:Lccsancom/vungle/warren/analytics/AdAnalytics;

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/tasks/AnalyticsJob;-><init>(Lccsancom/vungle/warren/analytics/AdAnalytics;)V

    return-object v0

    .line 64
    :cond_4
    sget-object v0, Lccsancom/vungle/warren/tasks/SendLogsJob;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65
    new-instance v0, Lccsancom/vungle/warren/tasks/SendLogsJob;

    iget-object v1, p0, Lccsancom/vungle/warren/tasks/VungleJobCreator;->logManager:Lccsancom/vungle/warren/log/LogManager;

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/tasks/SendLogsJob;-><init>(Lccsancom/vungle/warren/log/LogManager;)V

    return-object v0

    .line 66
    :cond_5
    sget-object v0, Lccsancom/vungle/warren/tasks/CacheBustJob;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 67
    new-instance v0, Lccsancom/vungle/warren/tasks/CacheBustJob;

    iget-object v1, p0, Lccsancom/vungle/warren/tasks/VungleJobCreator;->apiClient:Lccsancom/vungle/warren/VungleApiClient;

    iget-object v2, p0, Lccsancom/vungle/warren/tasks/VungleJobCreator;->repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v3, p0, Lccsancom/vungle/warren/tasks/VungleJobCreator;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lccsancom/vungle/warren/tasks/VungleJobCreator;->adLoader:Lccsancom/vungle/warren/AdLoader;

    invoke-direct {v0, v1, v2, v3, v4}, Lccsancom/vungle/warren/tasks/CacheBustJob;-><init>(Lccsancom/vungle/warren/VungleApiClient;Lccsancom/vungle/warren/persistence/Repository;Ljava/util/concurrent/ExecutorService;Lccsancom/vungle/warren/AdLoader;)V

    return-object v0

    .line 69
    :cond_6
    new-instance v0, Lccsancom/vungle/warren/tasks/UnknownTagException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Job Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/tasks/UnknownTagException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_7
    new-instance v0, Lccsancom/vungle/warren/tasks/UnknownTagException;

    const-string v1, "Job tag is null"

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/tasks/UnknownTagException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
