.class Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi23;
.super Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBrowserImplApi23"
.end annotation


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/content/ComponentName;Lccsanandroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "serviceComponent"    # Lccsanandroid/content/ComponentName;
    .param p3, "callback"    # Lccsanandroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
    .param p4, "rootHints"    # Lccsanandroid/os/Bundle;

    .line 1978
    invoke-direct {p0, p1, p2, p3, p4}, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;-><init>(Lccsanandroid/content/Context;Lccsanandroid/content/ComponentName;Lccsanandroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Lccsanandroid/os/Bundle;)V

    .line 1979
    return-void
.end method


# virtual methods
.method public getItem(Ljava/lang/String;Lccsanandroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "cb"    # Lccsanandroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    .line 1983
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi23;->mServiceBinderWrapper:Lccsanandroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    if-nez v0, :cond_0

    .line 1984
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi23;->mBrowserObj:Ljava/lang/Object;

    iget-object v1, p2, Lccsanandroid/support/v4/media/MediaBrowserCompat$ItemCallback;->mItemCallbackObj:Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lccsanandroid/support/v4/media/MediaBrowserCompatApi23;->getItem(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1986
    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->getItem(Ljava/lang/String;Lccsanandroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V

    .line 1988
    :goto_0
    return-void
.end method