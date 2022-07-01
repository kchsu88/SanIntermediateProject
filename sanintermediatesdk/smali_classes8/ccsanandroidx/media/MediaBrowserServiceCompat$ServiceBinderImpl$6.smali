.class Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->registerCallbacks(Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;IILccsanandroid/os/Bundle;)V
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

    .line 1013
    iput-object p1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iput-object p2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$callbacks:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    iput-object p3, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$pkg:Ljava/lang/String;

    iput p4, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$pid:I

    iput p5, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$uid:I

    iput-object p6, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$rootHints:Lccsanandroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1016
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$callbacks:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    invoke-interface {v0}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;->asBinder()Lccsanandroid/os/IBinder;

    move-result-object v0

    .line 1018
    .local v0, "b":Lccsanandroid/os/IBinder;
    iget-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v1, v1, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Lccsanandroidx/media/MediaBrowserServiceCompat;->mConnections:Lccsanandroidx/collection/ArrayMap;

    invoke-virtual {v1, v0}, Lccsanandroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    new-instance v1, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v3, v2, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v4, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$pkg:Ljava/lang/String;

    iget v5, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$pid:I

    iget v6, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$uid:I

    iget-object v7, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$rootHints:Lccsanandroid/os/Bundle;

    iget-object v8, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->val$callbacks:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILccsanandroid/os/Bundle;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    .line 1022
    .local v1, "connection":Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;
    iget-object v2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v2, v2, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Lccsanandroidx/media/MediaBrowserServiceCompat;->mConnections:Lccsanandroidx/collection/ArrayMap;

    invoke-virtual {v2, v0, v1}, Lccsanandroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v1, v2}, Lccsanandroid/os/IBinder;->linkToDeath(Lccsanandroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1027
    goto :goto_0

    .line 1025
    :catch_0
    move-exception v2

    .line 1026
    .local v2, "e":Lccsanandroid/os/RemoteException;
    const-string v3, "MBServiceCompat"

    const-string v4, "IBinder is already dead."

    invoke-static {v3, v4}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    .end local v2    # "e":Lccsanandroid/os/RemoteException;
    :goto_0
    return-void
.end method
