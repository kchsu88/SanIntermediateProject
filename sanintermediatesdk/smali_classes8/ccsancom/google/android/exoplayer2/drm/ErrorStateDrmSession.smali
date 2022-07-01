.class public final Lccsancom/google/android/exoplayer2/drm/ErrorStateDrmSession;
.super Ljava/lang/Object;
.source "ErrorStateDrmSession.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/drm/DrmSession;


# instance fields
.field private final error:Lccsancom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;


# direct methods
.method public constructor <init>(Lccsancom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;)V
    .locals 1
    .param p1, "error"    # Lccsancom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/drm/ErrorStateDrmSession;->error:Lccsancom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 32
    return-void
.end method


# virtual methods
.method public acquire(Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0
    .param p1, "eventDispatcher"    # Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 81
    return-void
.end method

.method public getCryptoConfig()Lccsancom/google/android/exoplayer2/decoder/CryptoConfig;
    .locals 1

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public getError()Lccsancom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    .locals 1

    .line 47
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/drm/ErrorStateDrmSession;->error:Lccsancom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    return-object v0
.end method

.method public getOfflineLicenseKeySetId()[B
    .locals 1

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSchemeUuid()Ljava/util/UUID;
    .locals 1

    .line 52
    sget-object v0, Lccsancom/google/android/exoplayer2/C;->UUID_NIL:Ljava/util/UUID;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public playClearSamplesWithoutKeys()Z
    .locals 1

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public queryKeyStatus()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public release(Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0
    .param p1, "eventDispatcher"    # Lccsancom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 86
    return-void
.end method

.method public requiresSecureDecoder(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    return v0
.end method
