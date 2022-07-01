.class Lccsanandroidx/media/MediaSessionManagerImplApi28;
.super Lccsanandroidx/media/MediaSessionManagerImplApi21;
.source "MediaSessionManagerImplApi28.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;
    }
.end annotation


# instance fields
.field mObject:Lccsanandroid/media/session/MediaSessionManager;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 29
    invoke-direct {p0, p1}, Lccsanandroidx/media/MediaSessionManagerImplApi21;-><init>(Lccsanandroid/content/Context;)V

    .line 30
    nop

    .line 31
    const-string v0, "media_session"

    invoke-virtual {p1, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lccsanandroidx/media/MediaSessionManagerImplApi28;->mObject:Lccsanandroid/media/session/MediaSessionManager;

    .line 32
    return-void
.end method


# virtual methods
.method public isTrustedForMediaControl(Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;)Z
    .locals 2
    .param p1, "userInfo"    # Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    .line 36
    instance-of v0, p1, Lccsanandroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lccsanandroidx/media/MediaSessionManagerImplApi28;->mObject:Lccsanandroid/media/session/MediaSessionManager;

    move-object v1, p1

    check-cast v1, Lccsanandroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;

    iget-object v1, v1, Lccsanandroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;->mObject:Lccsanandroid/media/session/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {v0, v1}, Lccsanandroid/media/session/MediaSessionManager;->isTrustedForMediaControl(Lccsanandroid/media/session/MediaSessionManager$RemoteUserInfo;)Z

    move-result v0

    return v0

    .line 39
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
