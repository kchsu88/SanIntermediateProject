.class public Lccsancom/vungle/warren/CacheBustManager;
.super Ljava/lang/Object;
.source "CacheBustManager.java"

# interfaces
.implements Lccsancom/vungle/warren/CacheBustCallback;


# static fields
.field public static final CACHE_BUST_INTERVAL:Ljava/lang/String; = "cache_bust_interval"

.field private static final DEFAULT_REFRESH_RATE:I = 0x0

.field static final MINIMUM_REFRESH_RATE:J = 0xdbba0L

.field public static final NEXT_CACHE_BUST:Ljava/lang/String; = "next_cache_bust"

.field public static final NO_VALUE:I = -0x80000000


# instance fields
.field private hasStopped:Z

.field private jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;

.field private overrideRefreshRate:J

.field refreshRate:J


# direct methods
.method protected constructor <init>(Lccsancom/vungle/warren/tasks/JobRunner;)V
    .locals 3
    .param p1, "runner"    # Lccsancom/vungle/warren/tasks/JobRunner;

    .line 30
    const-class v0, Lccsancom/vungle/warren/CacheBustManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lccsancom/vungle/warren/CacheBustManager;->refreshRate:J

    .line 25
    const-wide/32 v1, -0x80000000

    iput-wide v1, p0, Lccsancom/vungle/warren/CacheBustManager;->overrideRefreshRate:J

    .line 31
    iput-object p1, p0, Lccsancom/vungle/warren/CacheBustManager;->jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;

    .line 32
    invoke-static {}, Lccsancom/vungle/warren/utility/ActivityManager;->getInstance()Lccsancom/vungle/warren/utility/ActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/vungle/warren/utility/ActivityManager;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-direct {p0}, Lccsancom/vungle/warren/CacheBustManager;->setLifecycleListener()V

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No lifecycle listener set"

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#deliverError"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lccsancom/vungle/warren/CacheBustManager;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/CacheBustManager;

    .line 16
    iget-boolean v0, p0, Lccsancom/vungle/warren/CacheBustManager;->hasStopped:Z

    return v0
.end method

.method static synthetic access$002(Lccsancom/vungle/warren/CacheBustManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/CacheBustManager;
    .param p1, "x1"    # Z

    .line 16
    iput-boolean p1, p0, Lccsancom/vungle/warren/CacheBustManager;->hasStopped:Z

    return p1
.end method

.method static synthetic access$100(Lccsancom/vungle/warren/CacheBustManager;)Lccsancom/vungle/warren/tasks/JobRunner;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/CacheBustManager;

    .line 16
    iget-object v0, p0, Lccsancom/vungle/warren/CacheBustManager;->jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;

    return-object v0
.end method

.method private setLifecycleListener()V
    .locals 2

    .line 77
    invoke-static {}, Lccsancom/vungle/warren/utility/ActivityManager;->getInstance()Lccsancom/vungle/warren/utility/ActivityManager;

    move-result-object v0

    new-instance v1, Lccsancom/vungle/warren/CacheBustManager$1;

    invoke-direct {v1, p0}, Lccsancom/vungle/warren/CacheBustManager$1;-><init>(Lccsancom/vungle/warren/CacheBustManager;)V

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/utility/ActivityManager;->addListener(Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;)V

    .line 103
    return-void
.end method


# virtual methods
.method public onCacheBust()V
    .locals 2

    .line 73
    iget-object v0, p0, Lccsancom/vungle/warren/CacheBustManager;->jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;

    invoke-static {}, Lccsancom/vungle/warren/tasks/CleanupJob;->makeJobInfo()Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/tasks/JobRunner;->execute(Lccsancom/vungle/warren/tasks/JobInfo;)V

    .line 74
    return-void
.end method

.method overrideRefreshRate(J)V
    .locals 0
    .param p1, "refreshRate"    # J

    .line 59
    iput-wide p1, p0, Lccsancom/vungle/warren/CacheBustManager;->overrideRefreshRate:J

    .line 60
    iput-wide p1, p0, Lccsancom/vungle/warren/CacheBustManager;->refreshRate:J

    .line 61
    return-void
.end method

.method public setRefreshRate(J)V
    .locals 5
    .param p1, "refreshRate"    # J

    .line 64
    iget-wide v0, p0, Lccsancom/vungle/warren/CacheBustManager;->overrideRefreshRate:J

    const-wide/32 v2, -0x80000000

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 65
    iput-wide v0, p0, Lccsancom/vungle/warren/CacheBustManager;->refreshRate:J

    .line 66
    return-void

    .line 68
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    const-wide/32 v0, 0xdbba0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_1
    iput-wide v0, p0, Lccsancom/vungle/warren/CacheBustManager;->refreshRate:J

    .line 69
    return-void
.end method

.method public startBust()V
    .locals 6

    .line 42
    iget-wide v0, p0, Lccsancom/vungle/warren/CacheBustManager;->refreshRate:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 43
    iget-object v0, p0, Lccsancom/vungle/warren/CacheBustManager;->jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;

    invoke-static {}, Lccsancom/vungle/warren/tasks/CacheBustJob;->makeJobInfo()Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/tasks/JobRunner;->execute(Lccsancom/vungle/warren/tasks/JobInfo;)V

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 46
    .local v0, "bundle":Lccsanandroid/os/Bundle;
    iget-wide v1, p0, Lccsancom/vungle/warren/CacheBustManager;->refreshRate:J

    const-string v3, "cache_bust_interval"

    invoke-virtual {v0, v3, v1, v2}, Lccsanandroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 47
    nop

    .line 48
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lccsancom/vungle/warren/CacheBustManager;->refreshRate:J

    add-long/2addr v1, v3

    .line 47
    const-string v3, "next_cache_bust"

    invoke-virtual {v0, v3, v1, v2}, Lccsanandroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 49
    iget-object v1, p0, Lccsancom/vungle/warren/CacheBustManager;->jobRunner:Lccsancom/vungle/warren/tasks/JobRunner;

    .line 50
    invoke-static {}, Lccsancom/vungle/warren/tasks/CacheBustJob;->makeJobInfo()Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v2

    iget-wide v3, p0, Lccsancom/vungle/warren/CacheBustManager;->refreshRate:J

    const/4 v5, 0x0

    .line 51
    invoke-virtual {v2, v3, v4, v5}, Lccsancom/vungle/warren/tasks/JobInfo;->setReschedulePolicy(JI)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v2

    .line 52
    invoke-virtual {v2, v0}, Lccsancom/vungle/warren/tasks/JobInfo;->setExtras(Lccsanandroid/os/Bundle;)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v2

    .line 49
    invoke-interface {v1, v2}, Lccsancom/vungle/warren/tasks/JobRunner;->execute(Lccsancom/vungle/warren/tasks/JobInfo;)V

    .line 55
    .end local v0    # "bundle":Lccsanandroid/os/Bundle;
    :goto_0
    return-void
.end method
