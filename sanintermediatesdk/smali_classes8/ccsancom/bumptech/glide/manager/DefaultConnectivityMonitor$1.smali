.class Lccsancom/bumptech/glide/manager/DefaultConnectivityMonitor$1;
.super Lccsanandroid/content/BroadcastReceiver;
.source "DefaultConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/manager/DefaultConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/bumptech/glide/manager/DefaultConnectivityMonitor;


# direct methods
.method constructor <init>(Lccsancom/bumptech/glide/manager/DefaultConnectivityMonitor;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lccsancom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lccsancom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "intent"    # Lccsanandroid/content/Intent;

    .line 20
    iget-object v0, p0, Lccsancom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lccsancom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-static {v0}, Lccsancom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$000(Lccsancom/bumptech/glide/manager/DefaultConnectivityMonitor;)Z

    move-result v0

    .line 21
    .local v0, "wasConnected":Z
    iget-object v1, p0, Lccsancom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lccsancom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-static {v1, p1}, Lccsancom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$100(Lccsancom/bumptech/glide/manager/DefaultConnectivityMonitor;Lccsanandroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v2}, Lccsancom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$002(Lccsancom/bumptech/glide/manager/DefaultConnectivityMonitor;Z)Z

    .line 22
    iget-object v1, p0, Lccsancom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lccsancom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-static {v1}, Lccsancom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$000(Lccsancom/bumptech/glide/manager/DefaultConnectivityMonitor;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 23
    iget-object v1, p0, Lccsancom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lccsancom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-static {v1}, Lccsancom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$200(Lccsancom/bumptech/glide/manager/DefaultConnectivityMonitor;)Lccsancom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;

    move-result-object v1

    iget-object v2, p0, Lccsancom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lccsancom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-static {v2}, Lccsancom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$000(Lccsancom/bumptech/glide/manager/DefaultConnectivityMonitor;)Z

    move-result v2

    invoke-interface {v1, v2}, Lccsancom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;->onConnectivityChanged(Z)V

    .line 25
    :cond_0
    return-void
.end method
