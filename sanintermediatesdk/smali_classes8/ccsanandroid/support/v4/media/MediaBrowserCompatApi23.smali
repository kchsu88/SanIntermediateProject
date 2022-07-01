.class Lccsanandroid/support/v4/media/MediaBrowserCompatApi23;
.super Ljava/lang/Object;
.source "MediaBrowserCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;,
        Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static createItemCallback(Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;

    .line 29
    new-instance v0, Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;

    invoke-direct {v0, p0}, Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;-><init>(Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;)V

    return-object v0
.end method

.method public static getItem(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "browserObj"    # Ljava/lang/Object;
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "itemCallbackObj"    # Ljava/lang/Object;

    .line 33
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/browse/MediaBrowser;

    move-object v1, p2

    check-cast v1, Lccsanandroid/media/browse/MediaBrowser$ItemCallback;

    invoke-virtual {v0, p1, v1}, Lccsanandroid/media/browse/MediaBrowser;->getItem(Ljava/lang/String;Lccsanandroid/media/browse/MediaBrowser$ItemCallback;)V

    .line 34
    return-void
.end method
