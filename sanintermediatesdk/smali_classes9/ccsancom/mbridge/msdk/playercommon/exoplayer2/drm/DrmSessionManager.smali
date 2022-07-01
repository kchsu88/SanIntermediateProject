.class public interface abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSessionManager;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract acquireSession(Lccsanandroid/os/Looper;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/os/Looper;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;",
            ")",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract canAcquireSession(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)Z
.end method

.method public abstract releaseSession(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmSession<",
            "TT;>;)V"
        }
    .end annotation
.end method
