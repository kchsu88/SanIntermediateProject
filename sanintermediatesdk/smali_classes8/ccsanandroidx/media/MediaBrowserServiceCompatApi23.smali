.class Lccsanandroidx/media/MediaBrowserServiceCompatApi23;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor;,
        Lccsanandroidx/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static createService(Lccsanandroid/content/Context;Lccsanandroidx/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "serviceProxy"    # Lccsanandroidx/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;

    .line 29
    new-instance v0, Lccsanandroidx/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;)V

    return-object v0
.end method
