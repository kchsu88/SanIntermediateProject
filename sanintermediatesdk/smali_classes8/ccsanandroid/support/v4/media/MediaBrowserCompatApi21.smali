.class Lccsanandroid/support/v4/media/MediaBrowserCompatApi21;
.super Ljava/lang/Object;
.source "MediaBrowserCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$MediaItem;,
        Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;,
        Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;,
        Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy;,
        Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;
    }
.end annotation


# static fields
.field static final NULL_MEDIA_ITEM_ID:Ljava/lang/String; = "android.support.v4.media.MediaBrowserCompat.NULL_MEDIA_ITEM"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    return-void
.end method

.method public static connect(Ljava/lang/Object;)V
    .locals 1
    .param p0, "browserObj"    # Ljava/lang/Object;

    .line 45
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Lccsanandroid/media/browse/MediaBrowser;->connect()V

    .line 46
    return-void
.end method

.method public static createBrowser(Lccsanandroid/content/Context;Lccsanandroid/content/ComponentName;Ljava/lang/Object;Lccsanandroid/os/Bundle;)Ljava/lang/Object;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "serviceComponent"    # Lccsanandroid/content/ComponentName;
    .param p2, "callback"    # Ljava/lang/Object;
    .param p3, "rootHints"    # Lccsanandroid/os/Bundle;

    .line 40
    new-instance v0, Lccsanandroid/media/browse/MediaBrowser;

    move-object v1, p2

    check-cast v1, Lccsanandroid/media/browse/MediaBrowser$ConnectionCallback;

    invoke-direct {v0, p0, p1, v1, p3}, Lccsanandroid/media/browse/MediaBrowser;-><init>(Lccsanandroid/content/Context;Lccsanandroid/content/ComponentName;Lccsanandroid/media/browse/MediaBrowser$ConnectionCallback;Lccsanandroid/os/Bundle;)V

    return-object v0
.end method

.method public static createConnectionCallback(Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;

    .line 35
    new-instance v0, Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy;

    invoke-direct {v0, p0}, Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy;-><init>(Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;)V

    return-object v0
.end method

.method public static createSubscriptionCallback(Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;

    .line 74
    new-instance v0, Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;

    invoke-direct {v0, p0}, Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;-><init>(Lccsanandroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;)V

    return-object v0
.end method

.method public static disconnect(Ljava/lang/Object;)V
    .locals 1
    .param p0, "browserObj"    # Ljava/lang/Object;

    .line 49
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Lccsanandroid/media/browse/MediaBrowser;->disconnect()V

    .line 51
    return-void
.end method

.method public static getExtras(Ljava/lang/Object;)Lccsanandroid/os/Bundle;
    .locals 1
    .param p0, "browserObj"    # Ljava/lang/Object;

    .line 66
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Lccsanandroid/media/browse/MediaBrowser;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getRoot(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "browserObj"    # Ljava/lang/Object;

    .line 62
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Lccsanandroid/media/browse/MediaBrowser;->getRoot()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceComponent(Ljava/lang/Object;)Lccsanandroid/content/ComponentName;
    .locals 1
    .param p0, "browserObj"    # Ljava/lang/Object;

    .line 58
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Lccsanandroid/media/browse/MediaBrowser;->getServiceComponent()Lccsanandroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static getSessionToken(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "browserObj"    # Ljava/lang/Object;

    .line 70
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Lccsanandroid/media/browse/MediaBrowser;->getSessionToken()Lccsanandroid/media/session/MediaSession$Token;

    move-result-object v0

    return-object v0
.end method

.method public static isConnected(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "browserObj"    # Ljava/lang/Object;

    .line 54
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Lccsanandroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v0

    return v0
.end method

.method public static subscribe(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "browserObj"    # Ljava/lang/Object;
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "subscriptionCallbackObj"    # Ljava/lang/Object;

    .line 79
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/browse/MediaBrowser;

    move-object v1, p2

    check-cast v1, Lccsanandroid/media/browse/MediaBrowser$SubscriptionCallback;

    invoke-virtual {v0, p1, v1}, Lccsanandroid/media/browse/MediaBrowser;->subscribe(Ljava/lang/String;Lccsanandroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    .line 81
    return-void
.end method

.method public static unsubscribe(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "browserObj"    # Ljava/lang/Object;
    .param p1, "parentId"    # Ljava/lang/String;

    .line 84
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/browse/MediaBrowser;

    invoke-virtual {v0, p1}, Lccsanandroid/media/browse/MediaBrowser;->unsubscribe(Ljava/lang/String;)V

    .line 85
    return-void
.end method
