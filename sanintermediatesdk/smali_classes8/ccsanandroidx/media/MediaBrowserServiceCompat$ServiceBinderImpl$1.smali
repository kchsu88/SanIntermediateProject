.class Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->connect(Ljava/lang/String;IILccsanandroid/os/Bundle;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

.field final synthetic val$callbacks:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

.field final synthetic val$pid:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$rootHints:Lccsanandroid/os/Bundle;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;IILccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "this$1"    # Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 889
    iput-object p1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iput-object p2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$callbacks:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    iput-object p3, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    iput p4, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pid:I

    iput p5, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$uid:I

    iput-object p6, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$rootHints:Lccsanandroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 892
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$callbacks:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    invoke-interface {v0}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;->asBinder()Lccsanandroid/os/IBinder;

    move-result-object v0

    .line 895
    .local v0, "b":Lccsanandroid/os/IBinder;
    iget-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v1, v1, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Lccsanandroidx/media/MediaBrowserServiceCompat;->mConnections:Lccsanandroidx/collection/ArrayMap;

    invoke-virtual {v1, v0}, Lccsanandroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    new-instance v1, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v3, v2, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v4, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    iget v5, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pid:I

    iget v6, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$uid:I

    iget-object v7, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$rootHints:Lccsanandroid/os/Bundle;

    iget-object v8, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$callbacks:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILccsanandroid/os/Bundle;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 899
    .local v1, "connection":Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;
    iget-object v2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v2, v2, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iput-object v1, v2, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 900
    iget-object v2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v2, v2, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v3, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    iget v4, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$uid:I

    iget-object v5, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$rootHints:Lccsanandroid/os/Bundle;

    invoke-virtual {v2, v3, v4, v5}, Lccsanandroidx/media/MediaBrowserServiceCompat;->onGetRoot(Ljava/lang/String;ILccsanandroid/os/Bundle;)Lccsanandroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    move-result-object v2

    iput-object v2, v1, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Lccsanandroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    .line 901
    iget-object v2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v2, v2, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    const/4 v3, 0x0

    iput-object v3, v2, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 904
    iget-object v2, v1, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Lccsanandroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    const-string v3, "MBServiceCompat"

    if-nez v2, :cond_0

    .line 905
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No root for client "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from service "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 905
    invoke-static {v3, v2}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :try_start_0
    iget-object v2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$callbacks:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    invoke-interface {v2}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;->onConnectFailed()V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 909
    :catch_0
    move-exception v2

    .line 910
    .local v2, "ex":Lccsanandroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling onConnectFailed() failed. Ignoring. pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    .end local v2    # "ex":Lccsanandroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 915
    :cond_0
    :try_start_1
    iget-object v2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v2, v2, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Lccsanandroidx/media/MediaBrowserServiceCompat;->mConnections:Lccsanandroidx/collection/ArrayMap;

    invoke-virtual {v2, v0, v1}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lccsanandroid/os/IBinder;->linkToDeath(Lccsanandroid/os/IBinder$DeathRecipient;I)V

    .line 917
    iget-object v2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v2, v2, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Lccsanandroidx/media/MediaBrowserServiceCompat;->mSession:Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v2, :cond_1

    .line 918
    iget-object v2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$callbacks:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    iget-object v4, v1, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Lccsanandroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    invoke-virtual {v4}, Lccsanandroidx/media/MediaBrowserServiceCompat$BrowserRoot;->getRootId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v5, v5, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v5, v5, Lccsanandroidx/media/MediaBrowserServiceCompat;->mSession:Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v6, v1, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->root:Lccsanandroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    .line 919
    invoke-virtual {v6}, Lccsanandroidx/media/MediaBrowserServiceCompat$BrowserRoot;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v6

    .line 918
    invoke-interface {v2, v4, v5, v6}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;->onConnect(Ljava/lang/String;Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;Lccsanandroid/os/Bundle;)V
    :try_end_1
    .catch Lccsanandroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 925
    :cond_1
    goto :goto_1

    .line 921
    :catch_1
    move-exception v2

    .line 922
    .restart local v2    # "ex":Lccsanandroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling onConnect() failed. Dropping client. pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v3, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v3, v3, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v3, v3, Lccsanandroidx/media/MediaBrowserServiceCompat;->mConnections:Lccsanandroidx/collection/ArrayMap;

    invoke-virtual {v3, v0}, Lccsanandroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    .end local v2    # "ex":Lccsanandroid/os/RemoteException;
    :goto_1
    return-void
.end method
