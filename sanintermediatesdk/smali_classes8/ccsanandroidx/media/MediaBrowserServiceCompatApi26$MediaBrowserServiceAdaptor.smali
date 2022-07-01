.class Lccsanandroidx/media/MediaBrowserServiceCompatApi26$MediaBrowserServiceAdaptor;
.super Lccsanandroidx/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor;
.source "MediaBrowserServiceCompatApi26.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/media/MediaBrowserServiceCompatApi26;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBrowserServiceAdaptor"
.end annotation


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ServiceCompatProxy;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "serviceWrapper"    # Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ServiceCompatProxy;

    .line 101
    invoke-direct {p0, p1, p2}, Lccsanandroidx/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;)V

    .line 102
    return-void
.end method


# virtual methods
.method public onLoadChildren(Ljava/lang/String;Lccsanandroid/service/media/MediaBrowserService$Result;Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p3, "options"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lccsanandroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Lccsanandroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;",
            "Lccsanandroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 107
    .local p2, "result":Lccsanandroid/service/media/MediaBrowserService$Result;, "Lccsanandroid/service/media/MediaBrowserService$Result<Ljava/util/List<Lccsanandroid/media/browse/MediaBrowser$MediaItem;>;>;"
    invoke-static {p3}, Lccsanandroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Lccsanandroid/os/Bundle;)V

    .line 108
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompatApi26$MediaBrowserServiceAdaptor;->mServiceProxy:Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;

    check-cast v0, Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ServiceCompatProxy;

    new-instance v1, Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ResultWrapper;

    invoke-direct {v1, p2}, Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ResultWrapper;-><init>(Lccsanandroid/service/media/MediaBrowserService$Result;)V

    invoke-interface {v0, p1, v1, p3}, Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ServiceCompatProxy;->onLoadChildren(Ljava/lang/String;Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ResultWrapper;Lccsanandroid/os/Bundle;)V

    .line 110
    return-void
.end method
