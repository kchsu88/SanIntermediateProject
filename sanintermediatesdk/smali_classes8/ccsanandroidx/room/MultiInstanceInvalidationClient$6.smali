.class Lccsanandroidx/room/MultiInstanceInvalidationClient$6;
.super Lccsanandroidx/room/InvalidationTracker$Observer;
.source "MultiInstanceInvalidationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/room/MultiInstanceInvalidationClient;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroidx/room/InvalidationTracker;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;


# direct methods
.method constructor <init>(Lccsanandroidx/room/MultiInstanceInvalidationClient;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/room/MultiInstanceInvalidationClient;
    .param p2, "tables"    # [Ljava/lang/String;

    .line 170
    iput-object p1, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient$6;->this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;

    invoke-direct {p0, p2}, Lccsanandroidx/room/InvalidationTracker$Observer;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method isRemote()Z
    .locals 1

    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method public onInvalidated(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 173
    .local p1, "tables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient$6;->this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;

    iget-object v0, v0, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    return-void

    .line 177
    :cond_0
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient$6;->this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;

    iget-object v0, v0, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mService:Lccsanandroidx/room/IMultiInstanceInvalidationService;

    .line 178
    .local v0, "service":Lccsanandroidx/room/IMultiInstanceInvalidationService;
    if-eqz v0, :cond_1

    .line 179
    iget-object v1, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient$6;->this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;

    iget v1, v1, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mClientId:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lccsanandroidx/room/IMultiInstanceInvalidationService;->broadcastInvalidation(I[Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v0    # "service":Lccsanandroidx/room/IMultiInstanceInvalidationService;
    :cond_1
    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Lccsanandroid/os/RemoteException;
    const-string v1, "ROOM"

    const-string v2, "Cannot broadcast invalidation"

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    .end local v0    # "e":Lccsanandroid/os/RemoteException;
    :goto_0
    return-void
.end method
