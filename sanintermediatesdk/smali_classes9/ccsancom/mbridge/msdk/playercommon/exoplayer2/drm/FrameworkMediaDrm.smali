.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;
.super Ljava/lang/Object;
.source "FrameworkMediaDrm.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm<",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
        ">;"
    }
.end annotation


# static fields
.field private static final CENC_SCHEME_MIME_TYPE:Ljava/lang/String; = "cenc"


# instance fields
.field private final mediaDrm:Lccsanandroid/media/MediaDrm;

.field private final uuid:Ljava/util/UUID;


# direct methods
.method private constructor <init>(Ljava/util/UUID;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Use C.CLEARKEY_UUID instead"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 73
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1b

    if-ge v0, v1, :cond_0

    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    .line 74
    :cond_0
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    .line 75
    new-instance v0, Lccsanandroid/media/MediaDrm;

    invoke-direct {v0, p1}, Lccsanandroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Lccsanandroid/media/MediaDrm;

    .line 76
    sget-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v1, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->needsForceL3Workaround()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 77
    const-string p1, "securityLevel"

    const-string v1, "L3"

    invoke-virtual {v0, p1, v1}, Lccsanandroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_1
    return-void
.end method

.method private static needsForceL3Workaround()Z
    .locals 2

    .line 236
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "ASUS_Z00AD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static newInstance(Ljava/util/UUID;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/UnsupportedDrmException;
        }
    .end annotation

    .line 60
    :try_start_0
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catch Lccsanandroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 63
    :catch_0
    move-exception p0

    .line 64
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/UnsupportedDrmException;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    throw v0

    .line 61
    :catch_1
    move-exception p0

    .line 62
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/UnsupportedDrmException;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    throw v0
.end method


# virtual methods
.method public final closeSession([B)V
    .locals 1

    .line 122
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Lccsanandroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Lccsanandroid/media/MediaDrm;->closeSession([B)V

    .line 123
    return-void
.end method

.method public final bridge synthetic createMediaCrypto([B)Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaCrypto;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/media/MediaCryptoException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->createMediaCrypto([B)Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;

    move-result-object p1

    return-object p1
.end method

.method public final createMediaCrypto([B)Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/media/MediaCryptoException;
        }
    .end annotation

    .line 224
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    .line 225
    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "securityLevel"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "L3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 226
    :goto_0
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;

    new-instance v2, Lccsanandroid/media/MediaCrypto;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-direct {v2, v3, p1}, Lccsanandroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    invoke-direct {v1, v2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;-><init>(Lccsanandroid/media/MediaCrypto;Z)V

    return-object v1
.end method

.method public final getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$KeyRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/media/NotProvisionedException;
        }
    .end annotation

    .line 131
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    .line 132
    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 133
    const-string v1, "Amazon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 134
    const-string v1, "AFTB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 135
    const-string v1, "AFTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 136
    const-string v1, "AFTM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-static {p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/PsshAtomUtil;->parseSchemeSpecificData([BLjava/util/UUID;)[B

    move-result-object v0

    .line 138
    if-nez v0, :cond_2

    goto :goto_0

    .line 141
    :cond_2
    move-object v3, v0

    goto :goto_1

    .line 146
    :cond_3
    :goto_0
    move-object v3, p2

    :goto_1
    sget p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge p2, v0, :cond_5

    sget-object p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    .line 147
    invoke-virtual {p2, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 148
    const-string p2, "video/mp4"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "audio/mp4"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 149
    :cond_4
    const-string p3, "cenc"

    move-object v4, p3

    goto :goto_2

    .line 152
    :cond_5
    move-object v4, p3

    :goto_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Lccsanandroid/media/MediaDrm;

    move-object v2, p1

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lccsanandroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lccsanandroid/media/MediaDrm$KeyRequest;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lccsanandroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object p2

    .line 156
    sget-object p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    iget-object p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-virtual {p3, p4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 157
    invoke-static {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ClearKeyUtil;->adjustRequestData([B)[B

    move-result-object p2

    .line 160
    :cond_6
    new-instance p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$DefaultKeyRequest;

    invoke-virtual {p1}, Lccsanandroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$DefaultKeyRequest;-><init>([BLjava/lang/String;)V

    return-object p3
.end method

.method public final getPropertyByteArray(Ljava/lang/String;)[B
    .locals 1

    .line 207
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Lccsanandroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Lccsanandroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public final getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Lccsanandroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Lccsanandroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getProvisionRequest()Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;
    .locals 3

    .line 176
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Lccsanandroid/media/MediaDrm;

    invoke-virtual {v0}, Lccsanandroid/media/MediaDrm;->getProvisionRequest()Lccsanandroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    .line 177
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$DefaultProvisionRequest;

    invoke-virtual {v0}, Lccsanandroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v2

    invoke-virtual {v0}, Lccsanandroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$DefaultProvisionRequest;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public final openSession()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/media/MediaDrmException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Lccsanandroid/media/MediaDrm;

    invoke-virtual {v0}, Lccsanandroid/media/MediaDrm;->openSession()[B

    move-result-object v0

    return-object v0
.end method

.method public final provideKeyResponse([B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/media/NotProvisionedException;,
            Lccsanandroid/media/DeniedByServerException;
        }
    .end annotation

    .line 167
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-static {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ClearKeyUtil;->adjustResponseData([B)[B

    move-result-object p2

    .line 171
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Lccsanandroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final provideProvisionResponse([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/media/DeniedByServerException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Lccsanandroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Lccsanandroid/media/MediaDrm;->provideProvisionResponse([B)V

    .line 183
    return-void
.end method

.method public final queryKeyStatus([B)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Lccsanandroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Lccsanandroid/media/MediaDrm;->queryKeyStatus([B)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public final release()V
    .locals 1

    .line 192
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Lccsanandroid/media/MediaDrm;

    invoke-virtual {v0}, Lccsanandroid/media/MediaDrm;->release()V

    .line 193
    return-void
.end method

.method public final restoreKeys([B[B)V
    .locals 1

    .line 197
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Lccsanandroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/media/MediaDrm;->restoreKeys([B[B)V

    .line 198
    return-void
.end method

.method public final setOnEventListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$OnEventListener<",
            "-",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;)V"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Lccsanandroid/media/MediaDrm;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm$1;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm$1;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V

    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Lccsanandroid/media/MediaDrm;->setOnEventListener(Lccsanandroid/media/MediaDrm$OnEventListener;)V

    .line 91
    return-void
.end method

.method public final setOnKeyStatusChangeListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener<",
            "-",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;)V"
        }
    .end annotation

    .line 96
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 100
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Lccsanandroid/media/MediaDrm;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 101
    :cond_0
    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm$2;

    invoke-direct {v2, p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm$2;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;)V

    :goto_0
    nop

    .line 100
    invoke-virtual {v0, v2, v1}, Lccsanandroid/media/MediaDrm;->setOnKeyStatusChangeListener(Lccsanandroid/media/MediaDrm$OnKeyStatusChangeListener;Lccsanandroid/os/Handler;)V

    .line 113
    return-void

    .line 97
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final setPropertyByteArray(Ljava/lang/String;[B)V
    .locals 1

    .line 217
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Lccsanandroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/media/MediaDrm;->setPropertyByteArray(Ljava/lang/String;[B)V

    .line 218
    return-void
.end method

.method public final setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->mediaDrm:Lccsanandroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void
.end method
