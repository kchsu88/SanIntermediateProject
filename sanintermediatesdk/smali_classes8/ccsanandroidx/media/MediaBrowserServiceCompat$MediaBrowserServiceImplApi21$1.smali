.class Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->setSessionToken(Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

.field final synthetic val$token:Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method constructor <init>(Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 0
    .param p1, "this$1"    # Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    .line 316
    iput-object p1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    iput-object p2, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->val$token:Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 319
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mRootExtrasList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->val$token:Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v0}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;->getExtraBinder()Lccsanandroid/support/v4/media/session/IMediaSession;

    move-result-object v0

    .line 321
    .local v0, "extraBinder":Lccsanandroid/support/v4/media/session/IMediaSession;
    if-eqz v0, :cond_0

    .line 322
    iget-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    iget-object v1, v1, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mRootExtrasList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/os/Bundle;

    .line 323
    .local v2, "rootExtras":Lccsanandroid/os/Bundle;
    nop

    .line 324
    invoke-interface {v0}, Lccsanandroid/support/v4/media/session/IMediaSession;->asBinder()Lccsanandroid/os/IBinder;

    move-result-object v3

    .line 323
    const-string v4, "extra_session_binder"

    invoke-static {v2, v4, v3}, Lccsanandroidx/core/app/BundleCompat;->putBinder(Lccsanandroid/os/Bundle;Ljava/lang/String;Lccsanandroid/os/IBinder;)V

    .line 325
    .end local v2    # "rootExtras":Lccsanandroid/os/Bundle;
    goto :goto_0

    .line 327
    :cond_0
    iget-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    iget-object v1, v1, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mRootExtrasList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 329
    .end local v0    # "extraBinder":Lccsanandroid/support/v4/media/session/IMediaSession;
    :cond_1
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    iget-object v0, v0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mServiceObj:Ljava/lang/Object;

    iget-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->val$token:Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v1}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroidx/media/MediaBrowserServiceCompatApi21;->setSessionToken(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 330
    return-void
.end method
