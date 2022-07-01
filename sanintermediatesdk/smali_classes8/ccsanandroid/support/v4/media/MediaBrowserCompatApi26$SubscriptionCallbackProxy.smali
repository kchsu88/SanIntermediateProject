.class Lccsanandroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallbackProxy;
.super Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;
.source "MediaBrowserCompatApi26.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/MediaBrowserCompatApi26;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SubscriptionCallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lccsanandroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallback;",
        ">",
        "Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lccsanandroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lccsanandroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallbackProxy;, "Lccsanandroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallbackProxy<TT;>;"
    .local p1, "callback":Lccsanandroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallback;, "TT;"
    invoke-direct {p0, p1}, Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;-><init>(Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;)V

    .line 55
    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
    .param p3, "options"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsanandroid/media/browse/MediaBrowser$MediaItem;",
            ">;",
            "Lccsanandroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lccsanandroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallbackProxy;, "Lccsanandroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallbackProxy<TT;>;"
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/media/browse/MediaBrowser$MediaItem;>;"
    invoke-static {p3}, Lccsanandroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Lccsanandroid/os/Bundle;)V

    .line 61
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallbackProxy;->mSubscriptionCallback:Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;

    check-cast v0, Lccsanandroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallback;

    invoke-interface {v0, p1, p2, p3}, Lccsanandroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Lccsanandroid/os/Bundle;)V

    .line 62
    return-void
.end method

.method public onError(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Lccsanandroid/os/Bundle;

    .line 66
    .local p0, "this":Lccsanandroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallbackProxy;, "Lccsanandroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallbackProxy<TT;>;"
    invoke-static {p2}, Lccsanandroid/support/v4/media/session/MediaSessionCompat;->ensureClassLoader(Lccsanandroid/os/Bundle;)V

    .line 67
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallbackProxy;->mSubscriptionCallback:Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;

    check-cast v0, Lccsanandroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallback;

    invoke-interface {v0, p1, p2}, Lccsanandroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallback;->onError(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 68
    return-void
.end method
