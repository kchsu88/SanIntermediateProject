.class Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDrmEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;


# direct methods
.method private constructor <init>(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)V
    .locals 0

    .line 950
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
    .param p2, "x1"    # Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$1;

    .line 950
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;-><init>(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)V

    return-void
.end method


# virtual methods
.method public onEvent(Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm;[BII[B)V
    .locals 1
    .param p1, "md"    # Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm;
    .param p2, "sessionId"    # [B
    .param p3, "event"    # I
    .param p4, "extra"    # I
    .param p5, "data"    # [B

    .line 955
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;->this$0:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    iget-object v0, v0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrmHandler:Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;

    invoke-virtual {v0, p3, p2}, Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/Message;->sendToTarget()V

    .line 956
    return-void
.end method
