.class public interface abstract Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm;
.super Ljava/lang/Object;
.source "ExoMediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;,
        Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;,
        Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm$KeyStatus;,
        Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm$OnExpirationUpdateListener;,
        Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;,
        Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;,
        Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm$AppManagedProvider;,
        Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm$Provider;
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
.method public abstract acquire()V
.end method

.method public abstract closeSession([B)V
.end method

.method public abstract createCryptoConfig([B)Lccsancom/google/android/exoplayer2/decoder/CryptoConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/media/MediaCryptoException;
        }
    .end annotation
.end method

.method public abstract getCryptoType()I
.end method

.method public abstract getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lccsancom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/media/NotProvisionedException;
        }
    .end annotation
.end method

.method public abstract getMetrics()Lccsanandroid/os/PersistableBundle;
.end method

.method public abstract getPropertyByteArray(Ljava/lang/String;)[B
.end method

.method public abstract getPropertyString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getProvisionRequest()Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;
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

.method public abstract requiresSecureDecoder([BLjava/lang/String;)Z
.end method

.method public abstract restoreKeys([B[B)V
.end method

.method public abstract setOnEventListener(Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V
.end method

.method public abstract setOnExpirationUpdateListener(Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm$OnExpirationUpdateListener;)V
.end method

.method public abstract setOnKeyStatusChangeListener(Lccsancom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;)V
.end method

.method public abstract setPropertyByteArray(Ljava/lang/String;[B)V
.end method

.method public abstract setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
.end method
