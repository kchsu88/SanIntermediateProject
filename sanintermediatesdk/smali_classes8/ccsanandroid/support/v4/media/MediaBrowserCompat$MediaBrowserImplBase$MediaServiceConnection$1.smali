.class Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->onServiceConnected(Lccsanandroid/content/ComponentName;Lccsanandroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

.field final synthetic val$binder:Lccsanandroid/os/IBinder;

.field final synthetic val$name:Lccsanandroid/content/ComponentName;


# direct methods
.method constructor <init>(Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;Lccsanandroid/content/ComponentName;Lccsanandroid/os/IBinder;)V
    .locals 0
    .param p1, "this$1"    # Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    .line 1502
    iput-object p1, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->this$1:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iput-object p2, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->val$name:Lccsanandroid/content/ComponentName;

    iput-object p3, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->val$binder:Lccsanandroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1505
    const-string v0, "ServiceCallbacks.onConnect..."

    sget-boolean v1, Lccsanandroid/support/v4/media/MediaBrowserCompat;->DEBUG:Z

    const-string v2, "MediaBrowserCompat"

    if-eqz v1, :cond_0

    .line 1506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaServiceConnection.onServiceConnected name="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->val$name:Lccsanandroid/content/ComponentName;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " binder="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->val$binder:Lccsanandroid/os/IBinder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    iget-object v1, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->this$1:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iget-object v1, v1, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-virtual {v1}, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->dump()V

    .line 1513
    :cond_0
    iget-object v1, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->this$1:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    const-string v3, "onServiceConnected"

    invoke-virtual {v1, v3}, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->isCurrent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1514
    return-void

    .line 1518
    :cond_1
    iget-object v1, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->this$1:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iget-object v1, v1, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    new-instance v3, Lccsanandroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v4, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->val$binder:Lccsanandroid/os/IBinder;

    iget-object v5, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->this$1:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iget-object v5, v5, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v5, v5, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mRootHints:Lccsanandroid/os/Bundle;

    invoke-direct {v3, v4, v5}, Lccsanandroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;-><init>(Lccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;)V

    iput-object v3, v1, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Lccsanandroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    .line 1522
    iget-object v1, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->this$1:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iget-object v1, v1, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    new-instance v3, Lccsanandroid/os/Messenger;

    iget-object v4, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->this$1:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iget-object v4, v4, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v4, v4, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Lccsanandroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    invoke-direct {v3, v4}, Lccsanandroid/os/Messenger;-><init>(Lccsanandroid/os/Handler;)V

    iput-object v3, v1, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Lccsanandroid/os/Messenger;

    .line 1523
    iget-object v1, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->this$1:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iget-object v1, v1, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v1, v1, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mHandler:Lccsanandroid/support/v4/media/MediaBrowserCompat$CallbackHandler;

    iget-object v3, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->this$1:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iget-object v3, v3, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v3, v3, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Lccsanandroid/os/Messenger;

    invoke-virtual {v1, v3}, Lccsanandroid/support/v4/media/MediaBrowserCompat$CallbackHandler;->setCallbacksMessenger(Lccsanandroid/os/Messenger;)V

    .line 1525
    iget-object v1, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->this$1:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iget-object v1, v1, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    const/4 v3, 0x2

    iput v3, v1, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    .line 1530
    :try_start_0
    sget-boolean v1, Lccsanandroid/support/v4/media/MediaBrowserCompat;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 1531
    invoke-static {v2, v0}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iget-object v1, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->this$1:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iget-object v1, v1, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-virtual {v1}, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->dump()V

    .line 1534
    :cond_2
    iget-object v1, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->this$1:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iget-object v1, v1, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v1, v1, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Lccsanandroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->this$1:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iget-object v3, v3, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v3, v3, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mContext:Lccsanandroid/content/Context;

    iget-object v4, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->this$1:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iget-object v4, v4, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v4, v4, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Lccsanandroid/os/Messenger;

    invoke-virtual {v1, v3, v4}, Lccsanandroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->connect(Lccsanandroid/content/Context;Lccsanandroid/os/Messenger;)V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1545
    goto :goto_0

    .line 1535
    :catch_0
    move-exception v1

    .line 1540
    .local v1, "ex":Lccsanandroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException during connect for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->this$1:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iget-object v4, v4, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v4, v4, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Lccsanandroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    sget-boolean v3, Lccsanandroid/support/v4/media/MediaBrowserCompat;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 1542
    invoke-static {v2, v0}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1;->this$1:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    iget-object v0, v0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-virtual {v0}, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->dump()V

    .line 1546
    .end local v1    # "ex":Lccsanandroid/os/RemoteException;
    :cond_3
    :goto_0
    return-void
.end method
