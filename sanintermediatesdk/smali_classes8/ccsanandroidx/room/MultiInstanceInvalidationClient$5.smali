.class Lccsanandroidx/room/MultiInstanceInvalidationClient$5;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/room/MultiInstanceInvalidationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;


# direct methods
.method constructor <init>(Lccsanandroidx/room/MultiInstanceInvalidationClient;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/room/MultiInstanceInvalidationClient;

    .line 141
    iput-object p1, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient$5;->this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 144
    iget-object v0, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient$5;->this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;

    iget-object v0, v0, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mInvalidationTracker:Lccsanandroidx/room/InvalidationTracker;

    iget-object v1, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient$5;->this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;

    iget-object v1, v1, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mObserver:Lccsanandroidx/room/InvalidationTracker$Observer;

    invoke-virtual {v0, v1}, Lccsanandroidx/room/InvalidationTracker;->removeObserver(Lccsanandroidx/room/InvalidationTracker$Observer;)V

    .line 146
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient$5;->this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;

    iget-object v0, v0, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mService:Lccsanandroidx/room/IMultiInstanceInvalidationService;

    .line 147
    .local v0, "service":Lccsanandroidx/room/IMultiInstanceInvalidationService;
    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient$5;->this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;

    iget-object v1, v1, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mCallback:Lccsanandroidx/room/IMultiInstanceInvalidationCallback;

    iget-object v2, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient$5;->this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;

    iget v2, v2, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mClientId:I

    invoke-interface {v0, v1, v2}, Lccsanandroidx/room/IMultiInstanceInvalidationService;->unregisterCallback(Lccsanandroidx/room/IMultiInstanceInvalidationCallback;I)V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0    # "service":Lccsanandroidx/room/IMultiInstanceInvalidationService;
    :cond_0
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Lccsanandroid/os/RemoteException;
    const-string v1, "ROOM"

    const-string v2, "Cannot unregister multi-instance invalidation callback"

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    .end local v0    # "e":Lccsanandroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient$5;->this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;

    iget-object v0, v0, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mAppContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient$5;->this$0:Lccsanandroidx/room/MultiInstanceInvalidationClient;

    iget-object v1, v1, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mServiceConnection:Lccsanandroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->unbindService(Lccsanandroid/content/ServiceConnection;)V

    .line 154
    return-void
.end method
