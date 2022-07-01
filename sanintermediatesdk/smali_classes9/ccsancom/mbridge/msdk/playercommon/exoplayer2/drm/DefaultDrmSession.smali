.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final MAX_LICENSE_DURATION_TO_RENEW:I = 0x3c

.field private static final MSG_KEYS:I = 0x1

.field private static final MSG_PROVISION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DefaultDrmSession"


# instance fields
.field final callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/MediaDrmCallback;

.field private currentKeyRequest:Ljava/lang/Object;

.field private currentProvisionRequest:Ljava/lang/Object;

.field private final eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;

.field private final initialDrmRequestRetryCount:I

.field private lastException:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession$DrmSessionException;

.field private mediaCrypto:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaCrypto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mediaDrm:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mode:I

.field private offlineLicenseKeySetId:[B

.field private openCount:I

.field private final optionalKeyRequestParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private postRequestHandler:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession<",
            "TT;>.PostRequestHandler;"
        }
    .end annotation
.end field

.field final postResponseHandler:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession<",
            "TT;>.PostResponseHandler;"
        }
    .end annotation
.end field

.field private final provisioningManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$ProvisioningManager<",
            "TT;>;"
        }
    .end annotation
.end field

.field private requestHandlerThread:Lccsanandroid/os/HandlerThread;

.field private final schemeData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData$SchemeData;

.field private sessionId:[B

.field private state:I

.field final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData$SchemeData;I[BLjava/util/HashMap;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/MediaDrmCallback;Lccsanandroid/os/Looper;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm<",
            "TT;>;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$ProvisioningManager<",
            "TT;>;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData$SchemeData;",
            "I[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/MediaDrmCallback;",
            "Lccsanandroid/os/Looper;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;",
            "I)V"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    .line 134
    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    .line 135
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;

    .line 136
    iput p5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->mode:I

    .line 137
    iput-object p6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    .line 138
    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    iput-object p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->schemeData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData$SchemeData;

    .line 139
    iput-object p7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->optionalKeyRequestParameters:Ljava/util/HashMap;

    .line 140
    iput-object p8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/MediaDrmCallback;

    .line 141
    iput p11, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->initialDrmRequestRetryCount:I

    .line 142
    iput-object p10, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;

    .line 143
    const/4 p1, 0x2

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 145
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;

    invoke-direct {p1, p0, p9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;Lccsanandroid/os/Looper;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->postResponseHandler:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;

    .line 146
    new-instance p1, Lccsanandroid/os/HandlerThread;

    const-string p2, "DrmRequestHandler"

    invoke-direct {p1, p2}, Lccsanandroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Lccsanandroid/os/HandlerThread;

    .line 147
    invoke-virtual {p1}, Lccsanandroid/os/HandlerThread;->start()V

    .line 148
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Lccsanandroid/os/HandlerThread;

    invoke-virtual {p2}, Lccsanandroid/os/HandlerThread;->getLooper()Lccsanandroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;Lccsanandroid/os/Looper;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->postRequestHandler:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    .line 149
    return-void
.end method

.method static synthetic access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->onProvisionResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->onKeyResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;)I
    .locals 0

    .line 42
    iget p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->initialDrmRequestRetryCount:I

    return p0
.end method

.method private doLicense(Z)V
    .locals 7

    .line 320
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->mode:I

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 353
    :pswitch_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->restoreKeys()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 354
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->postKeyRequest(IZ)V

    goto :goto_1

    .line 341
    :pswitch_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-nez v0, :cond_0

    .line 342
    invoke-direct {p0, v1, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->postKeyRequest(IZ)V

    goto :goto_1

    .line 345
    :cond_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->restoreKeys()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 346
    invoke-direct {p0, v1, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->postKeyRequest(IZ)V

    goto :goto_1

    .line 323
    :pswitch_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-nez v0, :cond_1

    .line 324
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->postKeyRequest(IZ)V

    goto :goto_1

    .line 325
    :cond_1
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->restoreKeys()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 326
    :cond_2
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->getLicenseDurationRemainingSec()J

    move-result-wide v3

    .line 327
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->mode:I

    if-nez v0, :cond_3

    const-wide/16 v5, 0x3c

    cmp-long v0, v3, v5

    if-gtz v0, :cond_3

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offline license has expired or will expire soon. Remaining seconds: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DefaultDrmSession"

    invoke-static {v2, v0}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-direct {p0, v1, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->postKeyRequest(IZ)V

    goto :goto_0

    .line 332
    :cond_3
    const-wide/16 v0, 0x0

    cmp-long p1, v3, v0

    if-gtz p1, :cond_4

    .line 333
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/KeysExpiredException;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/KeysExpiredException;-><init>()V

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 335
    :cond_4
    iput v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 336
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;->drmKeysRestored()V

    .line 338
    :goto_0
    nop

    .line 360
    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLicenseDurationRemainingSec()J
    .locals 5

    .line 374
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 377
    :cond_0
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/WidevineUtil;->getLicenseDurationRemainingSec(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;)Lccsanandroid/util/Pair;

    move-result-object v0

    .line 378
    iget-object v1, v0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private isOpen()Z
    .locals 2

    .line 457
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private onError(Ljava/lang/Exception;)V
    .locals 1

    .line 449
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession$DrmSessionException;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->lastException:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 450
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;->drmSessionManagerError(Ljava/lang/Exception;)V

    .line 451
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 452
    const/4 p1, 0x1

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 454
    :cond_0
    return-void
.end method

.method private onKeyResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 402
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->currentKeyRequest:Ljava/lang/Object;

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->isOpen()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    .line 406
    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->currentKeyRequest:Ljava/lang/Object;

    .line 408
    instance-of p1, p2, Ljava/lang/Exception;

    if-eqz p1, :cond_1

    .line 409
    check-cast p2, Ljava/lang/Exception;

    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;)V

    .line 410
    return-void

    .line 414
    :cond_1
    :try_start_0
    check-cast p2, [B

    .line 415
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->mode:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 416
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-interface {p1, v0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    .line 417
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;->drmKeysRemoved()V

    goto :goto_0

    .line 419
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {p1, v0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    move-result-object p1

    .line 420
    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->mode:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    if-nez p2, :cond_4

    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-eqz p2, :cond_4

    :cond_3
    if-eqz p1, :cond_4

    array-length p2, p1

    if-eqz p2, :cond_4

    .line 423
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    .line 425
    :cond_4
    const/4 p1, 0x4

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 426
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;->drmKeysLoaded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_0
    goto :goto_1

    .line 428
    :catch_0
    move-exception p1

    .line 429
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;)V

    .line 431
    :goto_1
    return-void

    .line 404
    :cond_5
    :goto_2
    return-void
.end method

.method private onKeysError(Ljava/lang/Exception;)V
    .locals 1

    .line 441
    instance-of v0, p1, Lccsanandroid/media/NotProvisionedException;

    if-eqz v0, :cond_0

    .line 442
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;)V

    goto :goto_0

    .line 444
    :cond_0
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    .line 446
    :goto_0
    return-void
.end method

.method private onKeysExpired()V
    .locals 2

    .line 434
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 435
    const/4 v0, 0x3

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 436
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/KeysExpiredException;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/KeysExpiredException;-><init>()V

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    .line 438
    :cond_0
    return-void
.end method

.method private onProvisionResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 298
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->currentProvisionRequest:Ljava/lang/Object;

    if-ne p1, v0, :cond_2

    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->isOpen()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->currentProvisionRequest:Ljava/lang/Object;

    .line 304
    instance-of p1, p2, Ljava/lang/Exception;

    if-eqz p1, :cond_1

    .line 305
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    check-cast p2, Ljava/lang/Exception;

    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->onProvisionError(Ljava/lang/Exception;)V

    .line 306
    return-void

    .line 310
    :cond_1
    :try_start_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;

    check-cast p2, [B

    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;->provideProvisionResponse([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    nop

    .line 316
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->onProvisionCompleted()V

    .line 317
    return-void

    .line 311
    :catch_0
    move-exception p1

    .line 312
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {p2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->onProvisionError(Ljava/lang/Exception;)V

    .line 313
    return-void

    .line 300
    :cond_2
    :goto_0
    return-void
.end method

.method private openInternal(Z)Z
    .locals 3

    .line 274
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 276
    return v1

    .line 280
    :cond_0
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;->openSession()[B

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    .line 281
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;->createMediaCrypto([B)Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaCrypto;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->mediaCrypto:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaCrypto;

    .line 282
    const/4 v0, 0x3

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->state:I
    :try_end_0
    .catch Lccsanandroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    return v1

    .line 290
    :catch_0
    move-exception p1

    .line 291
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 284
    :catch_1
    move-exception v0

    .line 285
    if-eqz p1, :cond_1

    .line 286
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;)V

    goto :goto_0

    .line 288
    :cond_1
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    .line 292
    :goto_0
    nop

    .line 294
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method private postKeyRequest(IZ)V
    .locals 8

    .line 382
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    :goto_0
    move-object v2, v0

    .line 383
    nop

    .line 384
    nop

    .line 385
    nop

    .line 386
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->schemeData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData$SchemeData;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    .line 388
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->schemeData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData$SchemeData;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    .line 389
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->schemeData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData$SchemeData;

    iget-object v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    move-object v4, v1

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_1

    .line 386
    :cond_1
    move-object v0, v1

    move-object v3, v0

    move-object v4, v3

    .line 392
    :goto_1
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;

    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->optionalKeyRequestParameters:Ljava/util/HashMap;

    .line 393
    move v5, p1

    invoke-interface/range {v1 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    move-result-object p1

    .line 394
    invoke-static {p1, v0}, Lccsanandroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lccsanandroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->currentKeyRequest:Ljava/lang/Object;

    .line 395
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->postRequestHandler:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->post(ILjava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    goto :goto_2

    .line 396
    :catch_0
    move-exception p1

    .line 397
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;)V

    .line 399
    :goto_2
    return-void
.end method

.method private restoreKeys()Z
    .locals 3

    .line 364
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;->restoreKeys([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    const/4 v0, 0x1

    return v0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    const-string v1, "DefaultDrmSession"

    const-string v2, "Error trying to restore Widevine keys."

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    .line 370
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public acquire()V
    .locals 2

    .line 154
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->openCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->openCount:I

    if-ne v0, v1, :cond_1

    .line 155
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->state:I

    if-ne v0, v1, :cond_0

    .line 156
    return-void

    .line 158
    :cond_0
    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->openInternal(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->doLicense(Z)V

    .line 162
    :cond_1
    return-void
.end method

.method public final getError()Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession$DrmSessionException;
    .locals 2

    .line 247
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->lastException:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession$DrmSessionException;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getMediaCrypto()Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaCrypto;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->mediaCrypto:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaCrypto;

    return-object v0
.end method

.method public getOfflineLicenseKeySetId()[B
    .locals 1

    .line 262
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .line 242
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->state:I

    return v0
.end method

.method public hasInitData([B)Z
    .locals 1

    .line 189
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->schemeData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData$SchemeData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public hasSessionId([B)Z
    .locals 1

    .line 193
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public onMediaDrmEvent(I)V
    .locals 1

    .line 198
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    return-void

    .line 201
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 209
    :pswitch_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->onKeysExpired()V

    .line 210
    goto :goto_0

    .line 203
    :pswitch_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->doLicense(Z)V

    .line 204
    goto :goto_0

    .line 212
    :pswitch_2
    const/4 p1, 0x3

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 213
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;)V

    .line 214
    nop

    .line 218
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onProvisionCompleted()V
    .locals 1

    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->openInternal(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->doLicense(Z)V

    .line 231
    :cond_0
    return-void
.end method

.method public onProvisionError(Ljava/lang/Exception;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    .line 235
    return-void
.end method

.method public provision()V
    .locals 4

    .line 223
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;->getProvisionRequest()Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->currentProvisionRequest:Ljava/lang/Object;

    .line 224
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->postRequestHandler:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->post(ILjava/lang/Object;Z)V

    .line 225
    return-void
.end method

.method public queryKeyStatus()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;->queryKeyStatus([B)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public release()Z
    .locals 4

    .line 168
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->openCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->openCount:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 169
    iput v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 170
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->postResponseHandler:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->postRequestHandler:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 172
    iput-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->postRequestHandler:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    .line 173
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Lccsanandroid/os/HandlerThread;

    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->quit()Z

    .line 174
    iput-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Lccsanandroid/os/HandlerThread;

    .line 175
    iput-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->mediaCrypto:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaCrypto;

    .line 176
    iput-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->lastException:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 177
    iput-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->currentKeyRequest:Ljava/lang/Object;

    .line 178
    iput-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->currentProvisionRequest:Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    if-eqz v0, :cond_0

    .line 180
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v3, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;->closeSession([B)V

    .line 181
    iput-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    .line 183
    :cond_0
    return v1

    .line 185
    :cond_1
    return v2
.end method
