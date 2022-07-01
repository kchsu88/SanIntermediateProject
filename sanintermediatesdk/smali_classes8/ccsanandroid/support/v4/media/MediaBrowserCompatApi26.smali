.class Lccsanandroid/support/v4/media/MediaBrowserCompatApi26;
.super Ljava/lang/Object;
.source "MediaBrowserCompatApi26.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallbackProxy;,
        Lccsanandroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallback;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method static createSubscriptionCallback(Lccsanandroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallback;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Lccsanandroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallback;

    .line 31
    new-instance v0, Lccsanandroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallbackProxy;

    invoke-direct {v0, p0}, Lccsanandroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallbackProxy;-><init>(Lccsanandroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallback;)V

    return-object v0
.end method

.method public static subscribe(Ljava/lang/Object;Ljava/lang/String;Lccsanandroid/os/Bundle;Ljava/lang/Object;)V
    .locals 2
    .param p0, "browserObj"    # Ljava/lang/Object;
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Lccsanandroid/os/Bundle;
    .param p3, "subscriptionCallbackObj"    # Ljava/lang/Object;

    .line 36
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/browse/MediaBrowser;

    move-object v1, p3

    check-cast v1, Lccsanandroid/media/browse/MediaBrowser$SubscriptionCallback;

    invoke-virtual {v0, p1, p2, v1}, Lccsanandroid/media/browse/MediaBrowser;->subscribe(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    .line 38
    return-void
.end method

.method public static unsubscribe(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "browserObj"    # Ljava/lang/Object;
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "subscriptionCallbackObj"    # Ljava/lang/Object;

    .line 42
    move-object v0, p0

    check-cast v0, Lccsanandroid/media/browse/MediaBrowser;

    move-object v1, p2

    check-cast v1, Lccsanandroid/media/browse/MediaBrowser$SubscriptionCallback;

    invoke-virtual {v0, p1, v1}, Lccsanandroid/media/browse/MediaBrowser;->unsubscribe(Ljava/lang/String;Lccsanandroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    .line 44
    return-void
.end method
