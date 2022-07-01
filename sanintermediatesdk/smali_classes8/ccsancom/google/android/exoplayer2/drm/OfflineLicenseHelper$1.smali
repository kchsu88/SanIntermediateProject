.class Lccsancom/google/android/exoplayer2/drm/OfflineLicenseHelper$1;
.super Ljava/lang/Object;
.source "OfflineLicenseHelper.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/exoplayer2/drm/OfflineLicenseHelper;-><init>(Lccsancom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/exoplayer2/drm/OfflineLicenseHelper;


# direct methods
.method constructor <init>(Lccsancom/google/android/exoplayer2/drm/OfflineLicenseHelper;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    .line 159
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/drm/OfflineLicenseHelper$1;->this$0:Lccsancom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrmKeysLoaded(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 162
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/OfflineLicenseHelper$1;->this$0:Lccsancom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/drm/OfflineLicenseHelper;->access$000(Lccsancom/google/android/exoplayer2/drm/OfflineLicenseHelper;)Lccsanandroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/ConditionVariable;->open()V

    .line 163
    return-void
.end method

.method public onDrmKeysRemoved(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 178
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/OfflineLicenseHelper$1;->this$0:Lccsancom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/drm/OfflineLicenseHelper;->access$000(Lccsancom/google/android/exoplayer2/drm/OfflineLicenseHelper;)Lccsanandroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/ConditionVariable;->open()V

    .line 179
    return-void
.end method

.method public onDrmKeysRestored(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 173
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/OfflineLicenseHelper$1;->this$0:Lccsancom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/drm/OfflineLicenseHelper;->access$000(Lccsancom/google/android/exoplayer2/drm/OfflineLicenseHelper;)Lccsanandroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/ConditionVariable;->open()V

    .line 174
    return-void
.end method

.method public synthetic onDrmSessionAcquired(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$-CC;->$default$onDrmSessionAcquired(Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public synthetic onDrmSessionAcquired(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$-CC;->$default$onDrmSessionAcquired(Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;I)V

    return-void
.end method

.method public onDrmSessionManagerError(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "e"    # Ljava/lang/Exception;

    .line 168
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/OfflineLicenseHelper$1;->this$0:Lccsancom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/drm/OfflineLicenseHelper;->access$000(Lccsancom/google/android/exoplayer2/drm/OfflineLicenseHelper;)Lccsanandroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/ConditionVariable;->open()V

    .line 169
    return-void
.end method

.method public synthetic onDrmSessionReleased(ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$-CC;->$default$onDrmSessionReleased(Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener;ILccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-void
.end method
