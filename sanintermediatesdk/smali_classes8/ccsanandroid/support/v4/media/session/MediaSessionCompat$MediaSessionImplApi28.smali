.class Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi28;
.super Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaSessionImplApi28"
.end annotation


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "token2Bundle"    # Lccsanandroid/os/Bundle;

    .line 3906
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 3907
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "mediaSession"    # Ljava/lang/Object;

    .line 3910
    invoke-direct {p0, p1}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;-><init>(Ljava/lang/Object;)V

    .line 3911
    return-void
.end method


# virtual methods
.method public final getCurrentControllerInfo()Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;
    .locals 2

    .line 3920
    iget-object v0, p0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi28;->mSessionObj:Ljava/lang/Object;

    check-cast v0, Lccsanandroid/media/session/MediaSession;

    .line 3921
    invoke-virtual {v0}, Lccsanandroid/media/session/MediaSession;->getCurrentControllerInfo()Lccsanandroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    .line 3922
    .local v0, "info":Lccsanandroid/media/session/MediaSessionManager$RemoteUserInfo;
    new-instance v1, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;

    invoke-direct {v1, v0}, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;-><init>(Lccsanandroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    return-object v1
.end method

.method public setCurrentControllerInfo(Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;)V
    .locals 0
    .param p1, "remoteUserInfo"    # Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 3916
    return-void
.end method
