.class final Lccsanokio/AsyncTimeout$Watchdog;
.super Ljava/lang/Thread;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Watchdog"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 304
    const-string v0, "Okio Watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 305
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccsanokio/AsyncTimeout$Watchdog;->setDaemon(Z)V

    .line 306
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 312
    :goto_0
    :try_start_0
    const-class v0, Lccsanokio/AsyncTimeout;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :try_start_1
    invoke-static {}, Lccsanokio/AsyncTimeout;->awaitTimeout()Lccsanokio/AsyncTimeout;

    move-result-object v1

    .line 316
    .local v1, "timedOut":Lccsanokio/AsyncTimeout;
    if-nez v1, :cond_0

    monitor-exit v0

    goto :goto_0

    .line 320
    :cond_0
    sget-object v2, Lccsanokio/AsyncTimeout;->head:Lccsanokio/AsyncTimeout;

    if-ne v1, v2, :cond_1

    .line 321
    const/4 v2, 0x0

    sput-object v2, Lccsanokio/AsyncTimeout;->head:Lccsanokio/AsyncTimeout;

    .line 322
    monitor-exit v0

    return-void

    .line 324
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    :try_start_2
    invoke-virtual {v1}, Lccsanokio/AsyncTimeout;->timedOut()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v1    # "timedOut":Lccsanokio/AsyncTimeout;
    goto :goto_1

    .line 324
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    :goto_1
    goto :goto_0
.end method
