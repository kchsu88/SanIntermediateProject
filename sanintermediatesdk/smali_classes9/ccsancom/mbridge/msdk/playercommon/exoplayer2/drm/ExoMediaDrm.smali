.class public interface abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;
.super Ljava/lang/Object;
.source "ExoMediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$DefaultProvisionRequest;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$DefaultKeyRequest;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$KeyRequest;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$DefaultKeyStatus;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$KeyStatus;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$OnEventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final EVENT_KEY_EXPIRED:I = 0x3

.field public static final EVENT_KEY_REQUIRED:I = 0x2

.field public static final EVENT_PROVISION_REQUIRED:I = 0x1

.field public static final KEY_TYPE_OFFLINE:I = 0x2

.field public static final KEY_TYPE_RELEASE:I = 0x3

.field public static final KEY_TYPE_STREAMING:I = 0x1


# virtual methods
.method public abstract closeSession([B)V
.end method

.method public abstract createMediaCrypto([B)Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaCrypto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/media/MediaCryptoException;
        }
    .end annotation
.end method

.method public abstract getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$KeyRequest;
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
.end method

.method public abstract getPropertyByteArray(Ljava/lang/String;)[B
.end method

.method public abstract getPropertyString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getProvisionRequest()Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;
.end method

.method public abstract openSession()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/media/MediaDrmException;
        }
    .end annotation
.end method

.method public abstract provideKeyResponse([B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/media/NotProvisionedException;,
            Lccsanandroid/media/DeniedByServerException;
        }
    .end annotation
.end method

.method public abstract provideProvisionResponse([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/media/DeniedByServerException;
        }
    .end annotation
.end method

.method public abstract queryKeyStatus([B)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract restoreKeys([B[B)V
.end method

.method public abstract setOnEventListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$OnEventListener<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setOnKeyStatusChangeListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setPropertyByteArray(Ljava/lang/String;[B)V
.end method

.method public abstract setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
.end method
