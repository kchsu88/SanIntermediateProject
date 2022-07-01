.class Lccsancom/bumptech/glide/RequestManager$1;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/bumptech/glide/RequestManager;-><init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/manager/Lifecycle;Lccsancom/bumptech/glide/manager/RequestManagerTreeNode;Lccsancom/bumptech/glide/manager/RequestTracker;Lccsancom/bumptech/glide/manager/ConnectivityMonitorFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/bumptech/glide/RequestManager;

.field final synthetic val$lifecycle:Lccsancom/bumptech/glide/manager/Lifecycle;


# direct methods
.method constructor <init>(Lccsancom/bumptech/glide/RequestManager;Lccsancom/bumptech/glide/manager/Lifecycle;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lccsancom/bumptech/glide/RequestManager$1;->this$0:Lccsancom/bumptech/glide/RequestManager;

    iput-object p2, p0, Lccsancom/bumptech/glide/RequestManager$1;->val$lifecycle:Lccsancom/bumptech/glide/manager/Lifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 75
    iget-object v0, p0, Lccsancom/bumptech/glide/RequestManager$1;->val$lifecycle:Lccsancom/bumptech/glide/manager/Lifecycle;

    iget-object v1, p0, Lccsancom/bumptech/glide/RequestManager$1;->this$0:Lccsancom/bumptech/glide/RequestManager;

    invoke-interface {v0, v1}, Lccsancom/bumptech/glide/manager/Lifecycle;->addListener(Lccsancom/bumptech/glide/manager/LifecycleListener;)V

    .line 76
    return-void
.end method
