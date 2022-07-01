.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;
.super Ljava/lang/Object;
.source "OfflineLicenseHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final conditionVariable:Lccsanandroid/os/ConditionVariable;

.field private final drmSessionManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final handlerThread:Lccsanandroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm<",
            "TT;>;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/MediaDrmCallback;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Lccsanandroid/os/HandlerThread;

    const-string v1, "OfflineLicenseHelper"

    invoke-direct {v0, v1}, Lccsanandroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;->handlerThread:Lccsanandroid/os/HandlerThread;

    .line 123
    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->start()V

    .line 124
    new-instance v1, Lccsanandroid/os/ConditionVariable;

    invoke-direct {v1}, Lccsanandroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;->conditionVariable:Lccsanandroid/os/ConditionVariable;

    .line 125
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper$1;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper$1;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;)V

    .line 147
    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-direct {v2, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;)V

    iput-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;

    .line 149
    new-instance p1, Lccsanandroid/os/Handler;

    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->getLooper()Lccsanandroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    invoke-virtual {v2, p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;->addListener(Lccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener;)V

    .line 150
    return-void
.end method

.method static synthetic access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;)Lccsanandroid/os/ConditionVariable;
    .locals 0

    .line 35
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;->conditionVariable:Lccsanandroid/os/ConditionVariable;

    return-object p0
.end method

.method private blockingKeyRequest(I[BLccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    .line 251
    invoke-direct {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;->openBlockingKeyRequest(I[BLccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    move-result-object p1

    .line 253
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;->getError()Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object p2

    .line 254
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;->getOfflineLicenseKeySetId()[B

    move-result-object p3

    .line 255
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;->releaseSession(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;)V

    .line 256
    if-nez p2, :cond_0

    .line 259
    return-object p3

    .line 257
    :cond_0
    throw p2
.end method

.method public static newWidevineInstance(Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$Factory;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$Factory;",
            ")",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/UnsupportedDrmException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;->newWidevineInstance(Ljava/lang/String;ZLccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$Factory;Ljava/util/HashMap;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;

    move-result-object p0

    return-object p0
.end method

.method public static newWidevineInstance(Ljava/lang/String;ZLccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$Factory;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$Factory;",
            ")",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/UnsupportedDrmException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;->newWidevineInstance(Ljava/lang/String;ZLccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$Factory;Ljava/util/HashMap;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;

    move-result-object p0

    return-object p0
.end method

.method public static newWidevineInstance(Ljava/lang/String;ZLccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$Factory;Ljava/util/HashMap;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$Factory;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/UnsupportedDrmException;
        }
    .end annotation

    .line 100
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;

    sget-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    sget-object v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 101
    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->newInstance(Ljava/util/UUID;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;

    move-result-object v2

    new-instance v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/HttpMediaDrmCallback;

    invoke-direct {v3, p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/HttpMediaDrmCallback;-><init>(Ljava/lang/String;ZLccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/HttpDataSource$Factory;)V

    invoke-direct {v0, v1, v2, v3, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;-><init>(Ljava/util/UUID;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;)V

    .line 100
    return-object v0
.end method

.method private openBlockingKeyRequest(I[BLccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;",
            ")",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession<",
            "TT;>;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;->setMode(I[B)V

    .line 265
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;->conditionVariable:Lccsanandroid/os/ConditionVariable;

    invoke-virtual {p1}, Lccsanandroid/os/ConditionVariable;->close()V

    .line 266
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;

    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;->handlerThread:Lccsanandroid/os/HandlerThread;

    invoke-virtual {p2}, Lccsanandroid/os/HandlerThread;->getLooper()Lccsanandroid/os/Looper;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;->acquireSession(Lccsanandroid/os/Looper;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    move-result-object p1

    .line 269
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;->conditionVariable:Lccsanandroid/os/ConditionVariable;

    invoke-virtual {p2}, Lccsanandroid/os/ConditionVariable;->block()V

    .line 270
    return-object p1
.end method


# virtual methods
.method public final declared-synchronized downloadLicense(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    monitor-enter p0

    .line 188
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 189
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;->blockingKeyRequest(I[BLccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 187
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getLicenseDurationRemainingSec([B)Lccsanandroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    monitor-enter p0

    .line 226
    :try_start_0
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;->openBlockingKeyRequest(I[BLccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;

    move-result-object p1

    .line 229
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;->getError()Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v0

    .line 230
    nop

    .line 231
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/WidevineUtil;->getLicenseDurationRemainingSec(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;)Lccsanandroid/util/Pair;

    move-result-object v1

    .line 232
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;->releaseSession(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;)V

    .line 233
    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession$DrmSessionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/KeysExpiredException;

    if-eqz p1, :cond_0

    .line 235
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lccsanandroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lccsanandroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 237
    :cond_0
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    :cond_1
    monitor-exit p0

    return-object v1

    .line 225
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getPropertyByteArray(Ljava/lang/String;)[B
    .locals 1

    monitor-enter p0

    .line 156
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 156
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 170
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 170
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final release()V
    .locals 1

    .line 246
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;->handlerThread:Lccsanandroid/os/HandlerThread;

    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->quit()Z

    .line 247
    return-void
.end method

.method public final declared-synchronized releaseLicense([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    monitor-enter p0

    .line 213
    :try_start_0
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;->blockingKeyRequest(I[BLccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    return-void

    .line 212
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized renewLicense([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession$DrmSessionException;
        }
    .end annotation

    monitor-enter p0

    .line 201
    :try_start_0
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;->blockingKeyRequest(I[BLccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 200
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setPropertyByteArray(Ljava/lang/String;[B)V
    .locals 1

    monitor-enter p0

    .line 163
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;->setPropertyByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/OfflineLicenseHelper;->drmSessionManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    .line 176
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
