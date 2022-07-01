.class final Lccsancom/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;
.super Lccsancom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SynchronizedHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1304
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/google/common/util/concurrent/AbstractFuture$AtomicHelper;-><init>(Lccsancom/google/common/util/concurrent/AbstractFuture$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/util/concurrent/AbstractFuture$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/util/concurrent/AbstractFuture$1;

    .line 1304
    invoke-direct {p0}, Lccsancom/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;-><init>()V

    return-void
.end method


# virtual methods
.method casListeners(Lccsancom/google/common/util/concurrent/AbstractFuture;Lccsancom/google/common/util/concurrent/AbstractFuture$Listener;Lccsancom/google/common/util/concurrent/AbstractFuture$Listener;)Z
    .locals 1
    .param p2, "expect"    # Lccsancom/google/common/util/concurrent/AbstractFuture$Listener;
    .param p3, "update"    # Lccsancom/google/common/util/concurrent/AbstractFuture$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/util/concurrent/AbstractFuture<",
            "*>;",
            "Lccsancom/google/common/util/concurrent/AbstractFuture$Listener;",
            "Lccsancom/google/common/util/concurrent/AbstractFuture$Listener;",
            ")Z"
        }
    .end annotation

    .line 1328
    .local p1, "future":Lccsancom/google/common/util/concurrent/AbstractFuture;, "Lccsancom/google/common/util/concurrent/AbstractFuture<*>;"
    monitor-enter p1

    .line 1329
    :try_start_0
    invoke-static {p1}, Lccsancom/google/common/util/concurrent/AbstractFuture;->access$900(Lccsancom/google/common/util/concurrent/AbstractFuture;)Lccsancom/google/common/util/concurrent/AbstractFuture$Listener;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 1330
    invoke-static {p1, p3}, Lccsancom/google/common/util/concurrent/AbstractFuture;->access$902(Lccsancom/google/common/util/concurrent/AbstractFuture;Lccsancom/google/common/util/concurrent/AbstractFuture$Listener;)Lccsancom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 1331
    const/4 v0, 0x1

    monitor-exit p1

    return v0

    .line 1333
    :cond_0
    const/4 v0, 0x0

    monitor-exit p1

    return v0

    .line 1334
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method casValue(Lccsancom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p2, "expect"    # Ljava/lang/Object;
    .param p3, "update"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/util/concurrent/AbstractFuture<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1339
    .local p1, "future":Lccsancom/google/common/util/concurrent/AbstractFuture;, "Lccsancom/google/common/util/concurrent/AbstractFuture<*>;"
    monitor-enter p1

    .line 1340
    :try_start_0
    invoke-static {p1}, Lccsancom/google/common/util/concurrent/AbstractFuture;->access$400(Lccsancom/google/common/util/concurrent/AbstractFuture;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 1341
    invoke-static {p1, p3}, Lccsancom/google/common/util/concurrent/AbstractFuture;->access$402(Lccsancom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    const/4 v0, 0x1

    monitor-exit p1

    return v0

    .line 1344
    :cond_0
    const/4 v0, 0x0

    monitor-exit p1

    return v0

    .line 1345
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method casWaiters(Lccsancom/google/common/util/concurrent/AbstractFuture;Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;)Z
    .locals 1
    .param p2, "expect"    # Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;
    .param p3, "update"    # Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/util/concurrent/AbstractFuture<",
            "*>;",
            "Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;",
            "Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;",
            ")Z"
        }
    .end annotation

    .line 1317
    .local p1, "future":Lccsancom/google/common/util/concurrent/AbstractFuture;, "Lccsancom/google/common/util/concurrent/AbstractFuture<*>;"
    monitor-enter p1

    .line 1318
    :try_start_0
    invoke-static {p1}, Lccsancom/google/common/util/concurrent/AbstractFuture;->access$800(Lccsancom/google/common/util/concurrent/AbstractFuture;)Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 1319
    invoke-static {p1, p3}, Lccsancom/google/common/util/concurrent/AbstractFuture;->access$802(Lccsancom/google/common/util/concurrent/AbstractFuture;Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;)Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 1320
    const/4 v0, 0x1

    monitor-exit p1

    return v0

    .line 1322
    :cond_0
    const/4 v0, 0x0

    monitor-exit p1

    return v0

    .line 1323
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method putNext(Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;)V
    .locals 0
    .param p1, "waiter"    # Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;
    .param p2, "newValue"    # Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 1312
    iput-object p2, p1, Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;->next:Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 1313
    return-void
.end method

.method putThread(Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;Ljava/lang/Thread;)V
    .locals 0
    .param p1, "waiter"    # Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;
    .param p2, "newValue"    # Ljava/lang/Thread;

    .line 1307
    iput-object p2, p1, Lccsancom/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 1308
    return-void
.end method
