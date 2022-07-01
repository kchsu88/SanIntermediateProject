.class Lccsancom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lccsancom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestManagerConnectivityListener"
.end annotation


# instance fields
.field private final requestTracker:Lccsancom/bumptech/glide/manager/RequestTracker;


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/manager/RequestTracker;)V
    .locals 0
    .param p1, "requestTracker"    # Lccsancom/bumptech/glide/manager/RequestTracker;

    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 793
    iput-object p1, p0, Lccsancom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;->requestTracker:Lccsancom/bumptech/glide/manager/RequestTracker;

    .line 794
    return-void
.end method


# virtual methods
.method public onConnectivityChanged(Z)V
    .locals 1
    .param p1, "isConnected"    # Z

    .line 798
    if-eqz p1, :cond_0

    .line 799
    iget-object v0, p0, Lccsancom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;->requestTracker:Lccsancom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/manager/RequestTracker;->restartRequests()V

    .line 801
    :cond_0
    return-void
.end method
