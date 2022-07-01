.class Lccsanandroidx/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor;
.super Lccsanandroid/service/media/MediaBrowserService;
.source "MediaBrowserServiceCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/media/MediaBrowserServiceCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBrowserServiceAdaptor"
.end annotation


# instance fields
.field final mServiceProxy:Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "serviceWrapper"    # Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;

    .line 114
    invoke-direct {p0}, Lccsanandroid/service/media/MediaBrowserService;-><init>()V

    .line 115
    invoke-virtual {p0, p1}, Lccsanandroidx/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor;->attachBaseContext(Lccsanandroid/content/Context;)V

    .line 116
    iput-object p2, p0, Lccsanandroidx/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor;->mServiceProxy:Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;

    .line 117
    return-void
.end method


# virtual methods
.method public onGetRoot(Ljava/lang/String;ILccsanandroid/os/Bundle;)Lccsanandroid/service/media/MediaBrowserService$BrowserRoot;
    .locals 4
    .param p1, "clientPackageName"    # Ljava/lang/String;
    .param p2, "clientUid"    # I
    .param p3, "rootHints"    # Lccsanandroid/os/Bundle;

    .line 122
    invoke-static {p3}, Lccsanandroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Lccsanandroid/os/Bundle;)V

    .line 123
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor;->mServiceProxy:Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-instance v2, Lccsanandroid/os/Bundle;

    invoke-direct {v2, p3}, Lccsanandroid/os/Bundle;-><init>(Lccsanandroid/os/Bundle;)V

    :goto_0
    invoke-interface {v0, p1, p2, v2}, Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;->onGetRoot(Ljava/lang/String;ILccsanandroid/os/Bundle;)Lccsanandroidx/media/MediaBrowserServiceCompatApi21$BrowserRoot;

    move-result-object v0

    .line 125
    .local v0, "browserRoot":Lccsanandroidx/media/MediaBrowserServiceCompatApi21$BrowserRoot;
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lccsanandroid/service/media/MediaBrowserService$BrowserRoot;

    iget-object v2, v0, Lccsanandroidx/media/MediaBrowserServiceCompatApi21$BrowserRoot;->mRootId:Ljava/lang/String;

    iget-object v3, v0, Lccsanandroidx/media/MediaBrowserServiceCompatApi21$BrowserRoot;->mExtras:Lccsanandroid/os/Bundle;

    invoke-direct {v1, v2, v3}, Lccsanandroid/service/media/MediaBrowserService$BrowserRoot;-><init>(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    :goto_1
    return-object v1
.end method

.method public onLoadChildren(Ljava/lang/String;Lccsanandroid/service/media/MediaBrowserService$Result;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lccsanandroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Lccsanandroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 131
    .local p2, "result":Lccsanandroid/service/media/MediaBrowserService$Result;, "Lccsanandroid/service/media/MediaBrowserService$Result<Ljava/util/List<Lccsanandroid/media/browse/MediaBrowser$MediaItem;>;>;"
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor;->mServiceProxy:Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;

    new-instance v1, Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;

    invoke-direct {v1, p2}, Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;-><init>(Lccsanandroid/service/media/MediaBrowserService$Result;)V

    invoke-interface {v0, p1, v1}, Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;->onLoadChildren(Ljava/lang/String;Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V

    .line 132
    return-void
.end method
