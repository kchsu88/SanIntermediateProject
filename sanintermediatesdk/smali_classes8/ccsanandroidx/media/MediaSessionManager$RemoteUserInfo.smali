.class public final Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/media/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoteUserInfo"
.end annotation


# static fields
.field public static final LEGACY_CONTROLLER:Ljava/lang/String; = "android.media.session.MediaController"


# instance fields
.field mImpl:Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;


# direct methods
.method public constructor <init>(Lccsanandroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .locals 1
    .param p1, "remoteUserInfo"    # Lccsanandroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Lccsanandroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;

    invoke-direct {v0, p1}, Lccsanandroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;-><init>(Lccsanandroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    iput-object v0, p0, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;->mImpl:Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 142
    new-instance v0, Lccsanandroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;

    invoke-direct {v0, p1, p2, p3}, Lccsanandroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;->mImpl:Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    goto :goto_0

    .line 146
    :cond_0
    new-instance v0, Lccsanandroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;

    invoke-direct {v0, p1, p2, p3}, Lccsanandroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;->mImpl:Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    .line 149
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 208
    if-ne p0, p1, :cond_0

    .line 209
    const/4 v0, 0x1

    return v0

    .line 211
    :cond_0
    instance-of v0, p1, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;

    if-nez v0, :cond_1

    .line 212
    const/4 v0, 0x0

    return v0

    .line 214
    :cond_1
    iget-object v0, p0, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;->mImpl:Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    move-object v1, p1

    check-cast v1, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;

    iget-object v1, v1, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;->mImpl:Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;->mImpl:Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    invoke-interface {v0}, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .line 179
    iget-object v0, p0, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;->mImpl:Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    invoke-interface {v0}, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getPid()I

    move-result v0

    return v0
.end method

.method public getUid()I
    .locals 1

    .line 186
    iget-object v0, p0, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;->mImpl:Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    invoke-interface {v0}, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;->getUid()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 219
    iget-object v0, p0, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;->mImpl:Lccsanandroidx/media/MediaSessionManager$RemoteUserInfoImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
