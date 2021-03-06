.class Lccsanandroidx/media/MediaSessionManagerImplApi21;
.super Lccsanandroidx/media/MediaSessionManagerImplBase;
.source "MediaSessionManagerImplApi21.java"


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 28
    invoke-direct {p0, p1}, Lccsanandroidx/media/MediaSessionManagerImplBase;-><init>(Lccsanandroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lccsanandroidx/media/MediaSessionManagerImplApi21;->mContext:Lccsanandroid/content/Context;

    .line 30
    return-void
.end method

.method private hasMediaControlPermission(Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;)Z
    .locals 4
    .param p1, "userInfo"    # Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    .line 44
    invoke-virtual {p0}, Lccsanandroidx/media/MediaSessionManagerImplApi21;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    .line 46
    invoke-interface {p1}, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getPid()I

    move-result v1

    invoke-interface {p1}, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getUid()I

    move-result v2

    .line 44
    const-string v3, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v0, v3, v1, v2}, Lccsanandroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public isTrustedForMediaControl(Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;)Z
    .locals 1
    .param p1, "userInfo"    # Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    .line 36
    invoke-direct {p0, p1}, Lccsanandroidx/media/MediaSessionManagerImplApi21;->hasMediaControlPermission(Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lccsanandroidx/media/MediaSessionManagerImplBase;->isTrustedForMediaControl(Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

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
