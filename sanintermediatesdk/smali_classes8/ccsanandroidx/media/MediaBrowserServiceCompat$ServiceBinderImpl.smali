.class Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceBinderImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Lccsanandroidx/media/MediaBrowserServiceCompat;)V
    .locals 0

    .line 878
    iput-object p1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 879
    return-void
.end method


# virtual methods
.method public addSubscription(Ljava/lang/String;Lccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "token"    # Lccsanandroid/os/IBinder;
    .param p3, "options"    # Lccsanandroid/os/Bundle;
    .param p4, "callbacks"    # Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 949
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mHandler:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v7, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$3;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;Lccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;)V

    invoke-virtual {v0, v7}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    .line 965
    return-void
.end method

.method public connect(Ljava/lang/String;IILccsanandroid/os/Bundle;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "rootHints"    # Lccsanandroid/os/Bundle;
    .param p5, "callbacks"    # Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 884
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    invoke-virtual {v0, p1, p3}, Lccsanandroidx/media/MediaBrowserServiceCompat;->isValidPackage(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mHandler:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v8, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$1;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;IILccsanandroid/os/Bundle;)V

    invoke-virtual {v0, v8}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    .line 929
    return-void

    .line 885
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package/uid mismatch: uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disconnect(Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .locals 2
    .param p1, "callbacks"    # Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 932
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mHandler:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v1, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$2;

    invoke-direct {v1, p0, p1}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$2;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    invoke-virtual {v0, v1}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    .line 945
    return-void
.end method

.method public getMediaItem(Ljava/lang/String;Lccsanandroid/support/v4/os/ResultReceiver;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "receiver"    # Lccsanandroid/support/v4/os/ResultReceiver;
    .param p3, "callbacks"    # Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 991
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 995
    :cond_0
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mHandler:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v1, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$5;

    invoke-direct {v1, p0, p3, p1, p2}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$5;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;Lccsanandroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {v0, v1}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    .line 1008
    return-void

    .line 992
    :cond_1
    :goto_0
    return-void
.end method

.method public registerCallbacks(Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;IILccsanandroid/os/Bundle;)V
    .locals 9
    .param p1, "callbacks"    # Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "rootHints"    # Lccsanandroid/os/Bundle;

    .line 1013
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mHandler:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v8, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$6;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;IILccsanandroid/os/Bundle;)V

    invoke-virtual {v0, v8}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    .line 1030
    return-void
.end method

.method public removeSubscription(Ljava/lang/String;Lccsanandroid/os/IBinder;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "token"    # Lccsanandroid/os/IBinder;
    .param p3, "callbacks"    # Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 969
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mHandler:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v1, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$4;

    invoke-direct {v1, p0, p3, p1, p2}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$4;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;Lccsanandroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    .line 987
    return-void
.end method

.method public search(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroid/support/v4/os/ResultReceiver;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .locals 8
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;
    .param p3, "receiver"    # Lccsanandroid/support/v4/os/ResultReceiver;
    .param p4, "callbacks"    # Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 1048
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1052
    :cond_0
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mHandler:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v7, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$8;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$8;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {v0, v7}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    .line 1065
    return-void

    .line 1049
    :cond_1
    :goto_0
    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroid/support/v4/os/ResultReceiver;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .locals 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Lccsanandroid/os/Bundle;
    .param p3, "receiver"    # Lccsanandroid/support/v4/os/ResultReceiver;
    .param p4, "callbacks"    # Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 1069
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1073
    :cond_0
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mHandler:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v7, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$9;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {v0, v7}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    .line 1087
    return-void

    .line 1070
    :cond_1
    :goto_0
    return-void
.end method

.method public unregisterCallbacks(Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
    .locals 2
    .param p1, "callbacks"    # Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;

    .line 1034
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mHandler:Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;

    new-instance v1, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$7;

    invoke-direct {v1, p0, p1}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl$7;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceBinderImpl;Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceCallbacks;)V

    invoke-virtual {v0, v1}, Lccsanandroidx/media/MediaBrowserServiceCompat$ServiceHandler;->postOrRun(Ljava/lang/Runnable;)V

    .line 1044
    return-void
.end method
