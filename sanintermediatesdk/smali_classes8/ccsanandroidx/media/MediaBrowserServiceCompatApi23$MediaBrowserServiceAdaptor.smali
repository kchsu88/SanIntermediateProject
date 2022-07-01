.class Lccsanandroidx/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor;
.super Lccsanandroidx/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor;
.source "MediaBrowserServiceCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/media/MediaBrowserServiceCompatApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBrowserServiceAdaptor"
.end annotation


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "serviceWrapper"    # Lccsanandroidx/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;

    .line 39
    invoke-direct {p0, p1, p2}, Lccsanandroidx/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;)V

    .line 40
    return-void
.end method


# virtual methods
.method public onLoadItem(Ljava/lang/String;Lccsanandroid/service/media/MediaBrowserService$Result;)V
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lccsanandroid/service/media/MediaBrowserService$Result<",
            "Lccsanandroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p2, "result":Lccsanandroid/service/media/MediaBrowserService$Result;, "Lccsanandroid/service/media/MediaBrowserService$Result<Lccsanandroid/media/browse/MediaBrowser$MediaItem;>;"
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor;->mServiceProxy:Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;

    check-cast v0, Lccsanandroidx/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;

    new-instance v1, Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;

    invoke-direct {v1, p2}, Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;-><init>(Lccsanandroid/service/media/MediaBrowserService$Result;)V

    invoke-interface {v0, p1, v1}, Lccsanandroidx/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;->onLoadItem(Ljava/lang/String;Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V

    .line 46
    return-void
.end method
