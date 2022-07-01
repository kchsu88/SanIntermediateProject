.class public Lccsanen/hance/launchsdk/LaunchStarter;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanen/hance/launchsdk/ICallback;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Lccsanen/hance/launchsdk/CommonConfigs;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lccsanen/hance/launchsdk/LaunchStarter;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lccsanen/hance/launchsdk/LaunchStarter;->b:Ljava/util/List;

    .line 5
    const/4 v0, 0x0

    sput-object v0, Lccsanen/hance/launchsdk/LaunchStarter;->c:Lccsanen/hance/launchsdk/CommonConfigs;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCallback(Lccsanen/hance/launchsdk/ICallback;)V
    .locals 1

    .line 1
    sget-object v0, Lccsanen/hance/launchsdk/LaunchStarter;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    const-string p0, "add callback failed: LaunchSdk not initialized"

    invoke-static {p0}, Lccsanenhance/g/e;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 6
    const-string p0, "add callback failed: callback is null"

    invoke-static {p0}, Lccsanenhance/g/e;->b(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    sget-object v0, Lccsanen/hance/launchsdk/LaunchStarter;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    const-string p0, "add callback failed: callback has added"

    invoke-static {p0}, Lccsanenhance/g/e;->b(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_2
    sget-object v0, Lccsanen/hance/launchsdk/LaunchStarter;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static declared-synchronized enqueue(Lccsanen/hance/launchsdk/task/LaunchTask;Lccsanen/hance/launchsdk/ICallback;)V
    .locals 2

    const-class v0, Lccsanen/hance/launchsdk/LaunchStarter;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lccsanen/hance/launchsdk/LaunchStarter;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "enqueue failed: LaunchSdk not initialized"

    .line 2
    invoke-static {p0}, Lccsanenhance/g/e;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    :try_start_1
    sget-object v1, Lccsanen/hance/launchsdk/LaunchStarter;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    sget-object v1, Lccsanen/hance/launchsdk/LaunchStarter;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    invoke-static {}, Lccsanenhance/a/e;->a()Lccsanenhance/a/e;

    move-result-object p1

    invoke-virtual {p1, p0}, Lccsanenhance/a/e;->a(Lccsanenhance/f/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    .line 0
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Lccsanandroid/content/Context;Lccsanen/hance/launchsdk/CommonConfigs;)V
    .locals 3

    const-class v0, Lccsanen/hance/launchsdk/LaunchStarter;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lccsanen/hance/launchsdk/LaunchStarter;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    if-nez p0, :cond_1

    :try_start_1
    const-string p0, "LaunchSdk initialize failed: application is null"

    .line 6
    invoke-static {p0}, Lccsanenhance/g/e;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :cond_1
    if-nez p1, :cond_2

    :try_start_2
    const-string p0, "LaunchSdk initialize failed: commonConfigs is null"

    .line 11
    invoke-static {p0}, Lccsanenhance/g/e;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    .line 15
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Lccsanen/hance/launchsdk/CommonConfigs;->getTracker()Lccsanen/hance/launchsdk/ITracker;

    move-result-object v2

    if-nez v2, :cond_3

    const-string p0, "LaunchSdk initialize failed: tracker is null"

    .line 17
    invoke-static {p0}, Lccsanenhance/g/e;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-void

    .line 20
    :cond_3
    :try_start_4
    invoke-virtual {p1}, Lccsanen/hance/launchsdk/CommonConfigs;->getCloudConfig()Lccsanen/hance/launchsdk/ICloudConfig;

    move-result-object v2

    if-nez v2, :cond_4

    const-string p0, "LaunchSdk initialize failed: cloudConfig is null"

    .line 22
    invoke-static {p0}, Lccsanenhance/g/e;->b(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-void

    .line 26
    :cond_4
    :try_start_5
    sput-object p1, Lccsanen/hance/launchsdk/LaunchStarter;->c:Lccsanen/hance/launchsdk/CommonConfigs;

    .line 27
    invoke-static {p0}, Lccsanenhance/g/b;->a(Lccsanandroid/content/Context;)V

    .line 28
    new-instance p1, Lccsanenhance/a/c;

    invoke-direct {p1}, Lccsanenhance/a/c;-><init>()V

    .line 29
    iget-object v2, p1, Lccsanenhance/a/c;->a:Lccsanandroid/content/IntentFilter;

    invoke-virtual {p0, p1, v2}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    const/4 p0, 0x0

    const/4 p1, 0x1

    .line 31
    invoke-virtual {v1, p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    const-string p0, "LaunchSdk initialize succeed"

    .line 32
    invoke-static {p0}, Lccsanenhance/g/e;->a(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v0

    return-void

    .line 0
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
