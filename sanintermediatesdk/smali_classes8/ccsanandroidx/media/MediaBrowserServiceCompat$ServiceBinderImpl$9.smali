.class Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->sendCustomAction(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroid/support/v4/os/ResultReceiver;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$callbacks:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

.field final synthetic val$extras:Lccsanandroid/os/Bundle;

.field final synthetic val$receiver:Lccsanandroid/support/v4/os/ResultReceiver;


# direct methods
.method constructor <init>(Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroid/support/v4/os/ResultReceiver;)V
    .locals 0
    .param p1, "this$1"    # Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    .line 1073
    iput-object p1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iput-object p2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$callbacks:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    iput-object p3, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$action:Ljava/lang/String;

    iput-object p4, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$extras:Lccsanandroid/os/Bundle;

    iput-object p5, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$receiver:Lccsanandroid/support/v4/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1076
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$callbacks:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    invoke-interface {v0}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;->asBinder()Lccsanandroid/os/IBinder;

    move-result-object v0

    .line 1078
    .local v0, "b":Lccsanandroid/os/IBinder;
    iget-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v1, v1, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v1, v1, Lccsanandroidx/media/MediaBrowserServiceCompat;->mConnections:Lccsanandroidx/collection/ArrayMap;

    invoke-virtual {v1, v0}, Lccsanandroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 1079
    .local v1, "connection":Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;
    if-nez v1, :cond_0

    .line 1080
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendCustomAction for callback that isn\'t registered action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$action:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", extras="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$extras:Lccsanandroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MBServiceCompat"

    invoke-static {v3, v2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    return-void

    .line 1084
    :cond_0
    iget-object v2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;

    iget-object v2, v2, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v3, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$action:Ljava/lang/String;

    iget-object v4, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$extras:Lccsanandroid/os/Bundle;

    iget-object v5, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;->val$receiver:Lccsanandroid/support/v4/os/ResultReceiver;

    invoke-virtual {v2, v3, v4, v1, v5}, Lccsanandroidx/media/MediaBrowserServiceCompat;->performCustomAction(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;Lccsanandroid/support/v4/os/ResultReceiver;)V

    .line 1085
    return-void
.end method
