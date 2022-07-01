.class final Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;
.super Lccsanandroid/net/ConnectivityManager$NetworkCallback;
.source "RequirementsWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NetworkCallback"
.end annotation


# instance fields
.field private networkValidated:Z

.field private receivedCapabilitiesChange:Z

.field final synthetic this$0:Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher;


# direct methods
.method private constructor <init>(Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->this$0:Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    invoke-direct {p0}, Lccsanandroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher;Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher;
    .param p2, "x1"    # Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher$1;

    .line 183
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;-><init>(Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher;)V

    return-void
.end method

.method private postCheckRequirements()V
    .locals 2

    .line 219
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->this$0:Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher;->access$300(Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher;)Lccsanandroid/os/Handler;

    move-result-object v0

    new-instance v1, Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback$$ExternalSyntheticLambda0;-><init>(Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    return-void
.end method

.method private postRecheckNotMetNetworkRequirements()V
    .locals 2

    .line 228
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->this$0:Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher;->access$300(Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher;)Lccsanandroid/os/Handler;

    move-result-object v0

    new-instance v1, Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback$$ExternalSyntheticLambda1;-><init>(Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 234
    return-void
.end method


# virtual methods
.method public synthetic lambda$postCheckRequirements$0$com-google-android-exoplayer2-scheduler-RequirementsWatcher$NetworkCallback()V
    .locals 1

    .line 221
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->this$0:Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher;->access$400(Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher;)Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->this$0:Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher;->access$200(Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher;)V

    .line 224
    :cond_0
    return-void
.end method

.method public synthetic lambda$postRecheckNotMetNetworkRequirements$1$com-google-android-exoplayer2-scheduler-RequirementsWatcher$NetworkCallback()V
    .locals 1

    .line 230
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->this$0:Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher;->access$400(Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher;)Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->this$0:Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher;->access$500(Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher;)V

    .line 233
    :cond_0
    return-void
.end method

.method public onAvailable(Lccsanandroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Lccsanandroid/net/Network;

    .line 190
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->postCheckRequirements()V

    .line 191
    return-void
.end method

.method public onBlockedStatusChanged(Lccsanandroid/net/Network;Z)V
    .locals 0
    .param p1, "network"    # Lccsanandroid/net/Network;
    .param p2, "blocked"    # Z

    .line 200
    if-nez p2, :cond_0

    .line 201
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->postRecheckNotMetNetworkRequirements()V

    .line 203
    :cond_0
    return-void
.end method

.method public onCapabilitiesChanged(Lccsanandroid/net/Network;Lccsanandroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "network"    # Lccsanandroid/net/Network;
    .param p2, "networkCapabilities"    # Lccsanandroid/net/NetworkCapabilities;

    .line 207
    nop

    .line 208
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Lccsanandroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    .line 209
    .local v0, "networkValidated":Z
    iget-boolean v1, p0, Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->receivedCapabilitiesChange:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->networkValidated:Z

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    if-eqz v0, :cond_2

    .line 214
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->postRecheckNotMetNetworkRequirements()V

    goto :goto_1

    .line 210
    :cond_1
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->receivedCapabilitiesChange:Z

    .line 211
    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->networkValidated:Z

    .line 212
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->postCheckRequirements()V

    .line 216
    :cond_2
    :goto_1
    return-void
.end method

.method public onLost(Lccsanandroid/net/Network;)V
    .locals 0
    .param p1, "network"    # Lccsanandroid/net/Network;

    .line 195
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/scheduler/RequirementsWatcher$NetworkCallback;->postCheckRequirements()V

    .line 196
    return-void
.end method
