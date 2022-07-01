.class final Lccsanandroidx/work/impl/utils/futures/AbstractFuture$SynchronizedHelper;
.super Lccsanandroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/work/impl/utils/futures/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SynchronizedHelper"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1135
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsanandroidx/work/impl/utils/futures/AbstractFuture$AtomicHelper;-><init>(Lccsanandroidx/work/impl/utils/futures/AbstractFuture$1;)V

    .line 1136
    return-void
.end method


# virtual methods
.method casListeners(Lccsanandroidx/work/impl/utils/futures/AbstractFuture;Lccsanandroidx/work/impl/utils/futures/AbstractFuture$Listener;Lccsanandroidx/work/impl/utils/futures/AbstractFuture$Listener;)Z
    .locals 1
    .param p2, "expect"    # Lccsanandroidx/work/impl/utils/futures/AbstractFuture$Listener;
    .param p3, "update"    # Lccsanandroidx/work/impl/utils/futures/AbstractFuture$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/work/impl/utils/futures/AbstractFuture<",
            "*>;",
            "Lccsanandroidx/work/impl/utils/futures/AbstractFuture$Listener;",
            "Lccsanandroidx/work/impl/utils/futures/AbstractFuture$Listener;",
            ")Z"
        }
    .end annotation

    .line 1161
    .local p1, "future":Lccsanandroidx/work/impl/utils/futures/AbstractFuture;, "Lccsanandroidx/work/impl/utils/futures/AbstractFuture<*>;"
    monitor-enter p1

    .line 1162
    :try_start_0
    iget-object v0, p1, Lccsanandroidx/work/impl/utils/futures/AbstractFuture;->listeners:Lccsanandroidx/work/impl/utils/futures/AbstractFuture$Listener;

    if-ne v0, p2, :cond_0

    .line 1163
    iput-object p3, p1, Lccsanandroidx/work/impl/utils/futures/AbstractFuture;->listeners:Lccsanandroidx/work/impl/utils/futures/AbstractFuture$Listener;

    .line 1164
    const/4 v0, 0x1

    monitor-exit p1

    return v0

    .line 1166
    :cond_0
    const/4 v0, 0x0

    monitor-exit p1

    return v0

    .line 1167
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method casValue(Lccsanandroidx/work/impl/utils/futures/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p2, "expect"    # Ljava/lang/Object;
    .param p3, "update"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/work/impl/utils/futures/AbstractFuture<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1172
    .local p1, "future":Lccsanandroidx/work/impl/utils/futures/AbstractFuture;, "Lccsanandroidx/work/impl/utils/futures/AbstractFuture<*>;"
    monitor-enter p1

    .line 1173
    :try_start_0
    iget-object v0, p1, Lccsanandroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    .line 1174
    iput-object p3, p1, Lccsanandroidx/work/impl/utils/futures/AbstractFuture;->value:Ljava/lang/Object;

    .line 1175
    const/4 v0, 0x1

    monitor-exit p1

    return v0

    .line 1177
    :cond_0
    const/4 v0, 0x0

    monitor-exit p1

    return v0

    .line 1178
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method casWaiters(Lccsanandroidx/work/impl/utils/futures/AbstractFuture;Lccsanandroidx/work/impl/utils/futures/AbstractFuture$Waiter;Lccsanandroidx/work/impl/utils/futures/AbstractFuture$Waiter;)Z
    .locals 1
    .param p2, "expect"    # Lccsanandroidx/work/impl/utils/futures/AbstractFuture$Waiter;
    .param p3, "update"    # Lccsanandroidx/work/impl/utils/futures/AbstractFuture$Waiter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/work/impl/utils/futures/AbstractFuture<",
            "*>;",
            "Lccsanandroidx/work/impl/utils/futures/AbstractFuture$Waiter;",
            "Lccsanandroidx/work/impl/utils/futures/AbstractFuture$Waiter;",
            ")Z"
        }
    .end annotation

    .line 1150
    .local p1, "future":Lccsanandroidx/work/impl/utils/futures/AbstractFuture;, "Lccsanandroidx/work/impl/utils/futures/AbstractFuture<*>;"
    monitor-enter p1

    .line 1151
    :try_start_0
    iget-object v0, p1, Lccsanandroidx/work/impl/utils/futures/AbstractFuture;->waiters:Lccsanandroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    if-ne v0, p2, :cond_0

    .line 1152
    iput-object p3, p1, Lccsanandroidx/work/impl/utils/futures/AbstractFuture;->waiters:Lccsanandroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    .line 1153
    const/4 v0, 0x1

    monitor-exit p1

    return v0

    .line 1155
    :cond_0
    const/4 v0, 0x0

    monitor-exit p1

    return v0

    .line 1156
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method putNext(Lccsanandroidx/work/impl/utils/futures/AbstractFuture$Waiter;Lccsanandroidx/work/impl/utils/futures/AbstractFuture$Waiter;)V
    .locals 0
    .param p1, "waiter"    # Lccsanandroidx/work/impl/utils/futures/AbstractFuture$Waiter;
    .param p2, "newValue"    # Lccsanandroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    .line 1145
    iput-object p2, p1, Lccsanandroidx/work/impl/utils/futures/AbstractFuture$Waiter;->next:Lccsanandroidx/work/impl/utils/futures/AbstractFuture$Waiter;

    .line 1146
    return-void
.end method

.method putThread(Lccsanandroidx/work/impl/utils/futures/AbstractFuture$Waiter;Ljava/lang/Thread;)V
    .locals 0
    .param p1, "waiter"    # Lccsanandroidx/work/impl/utils/futures/AbstractFuture$Waiter;
    .param p2, "newValue"    # Ljava/lang/Thread;

    .line 1140
    iput-object p2, p1, Lccsanandroidx/work/impl/utils/futures/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 1141
    return-void
.end method
