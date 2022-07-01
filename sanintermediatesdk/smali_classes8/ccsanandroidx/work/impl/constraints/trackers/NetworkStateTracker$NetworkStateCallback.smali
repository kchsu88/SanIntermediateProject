.class Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;
.super Lccsanandroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;->this$0:Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;

    invoke-direct {p0}, Lccsanandroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 153
    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Lccsanandroid/net/Network;Lccsanandroid/net/NetworkCapabilities;)V
    .locals 5
    .param p1, "network"    # Lccsanandroid/net/Network;
    .param p2, "capabilities"    # Lccsanandroid/net/NetworkCapabilities;

    .line 159
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v1, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 161
    const-string v4, "Network capabilities changed: %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    .line 159
    invoke-virtual {v0, v1, v2, v3}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 162
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;->this$0:Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->getActiveNetworkState()Lccsanandroidx/work/impl/constraints/NetworkState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->setState(Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method public onLost(Lccsanandroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Lccsanandroid/net/Network;

    .line 167
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v1, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Throwable;

    const-string v3, "Network connection lost"

    invoke-virtual {v0, v1, v3, v2}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 168
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;->this$0:Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->getActiveNetworkState()Lccsanandroidx/work/impl/constraints/NetworkState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->setState(Ljava/lang/Object;)V

    .line 169
    return-void
.end method
