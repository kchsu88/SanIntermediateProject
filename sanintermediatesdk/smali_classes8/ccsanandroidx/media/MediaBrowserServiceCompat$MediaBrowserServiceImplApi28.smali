.class Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi28;
.super Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaBrowserServiceImplApi28"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Lccsanandroidx/media/MediaBrowserServiceCompat;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/media/MediaBrowserServiceCompat;

    .line 572
    iput-object p1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi28;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    invoke-direct {p0, p1}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;-><init>(Lccsanandroidx/media/MediaBrowserServiceCompat;)V

    return-void
.end method


# virtual methods
.method public getCurrentBrowserInfo()Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;
    .locals 2

    .line 576
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi28;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi28;->this$0:Lccsanandroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat;->mCurConnection:Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->browserInfo:Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;

    return-object v0

    .line 579
    :cond_0
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi28;->mServiceObj:Ljava/lang/Object;

    check-cast v0, Lccsanandroid/service/media/MediaBrowserService;

    .line 580
    invoke-virtual {v0}, Lccsanandroid/service/media/MediaBrowserService;->getCurrentBrowserInfo()Lccsanandroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    .line 581
    .local v0, "userInfoObj":Lccsanandroid/media/session/MediaSessionManager$RemoteUserInfo;
    new-instance v1, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;

    invoke-direct {v1, v0}, Lccsanandroidx/media/MediaSessionManager$RemoteUserInfo;-><init>(Lccsanandroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    return-object v1
.end method
