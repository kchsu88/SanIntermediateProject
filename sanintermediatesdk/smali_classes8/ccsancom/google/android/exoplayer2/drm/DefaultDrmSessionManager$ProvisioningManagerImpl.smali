.class Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProvisioningManagerImpl"
.end annotation


# instance fields
.field private provisioningSession:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;

.field private final sessionsAwaitingProvisioning:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)V
    .locals 0

    .line 855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 856
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    .line 857
    return-void
.end method


# virtual methods
.method public onProvisionCompleted()V
    .locals 3

    .line 872
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 873
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    .line 874
    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 876
    .local v0, "sessionsToNotify":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;>;"
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 877
    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 878
    .local v2, "session":Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;
    invoke-virtual {v2}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;->onProvisionCompleted()V

    .line 879
    .end local v2    # "session":Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;
    goto :goto_0

    .line 880
    :cond_0
    return-void
.end method

.method public onProvisionError(Ljava/lang/Exception;Z)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Exception;
    .param p2, "thrownByExoMediaDrm"    # Z

    .line 884
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 885
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    .line 886
    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 888
    .local v0, "sessionsToNotify":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;>;"
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 889
    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 890
    .local v2, "session":Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;
    invoke-virtual {v2, p1, p2}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;->onProvisionError(Ljava/lang/Exception;Z)V

    .line 891
    .end local v2    # "session":Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;
    goto :goto_0

    .line 892
    :cond_0
    return-void
.end method

.method public onSessionFullyReleased(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;)V
    .locals 1
    .param p1, "session"    # Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 895
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 896
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;

    if-ne v0, p1, :cond_0

    .line 897
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 898
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 901
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 902
    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;->provision()V

    .line 905
    :cond_0
    return-void
.end method

.method public provisionRequired(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;)V
    .locals 1
    .param p1, "session"    # Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 861
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->sessionsAwaitingProvisioning:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 862
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;

    if-eqz v0, :cond_0

    .line 864
    return-void

    .line 866
    :cond_0
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->provisioningSession:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 867
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSession;->provision()V

    .line 868
    return-void
.end method
