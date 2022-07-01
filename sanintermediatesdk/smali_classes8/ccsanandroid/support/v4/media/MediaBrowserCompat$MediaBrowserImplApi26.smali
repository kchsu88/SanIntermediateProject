.class Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi26;
.super Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi23;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBrowserImplApi26"
.end annotation


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/content/ComponentName;Lccsanandroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "serviceComponent"    # Lccsanandroid/content/ComponentName;
    .param p3, "callback"    # Lccsanandroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
    .param p4, "rootHints"    # Lccsanandroid/os/Bundle;

    .line 1995
    invoke-direct {p0, p1, p2, p3, p4}, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi23;-><init>(Lccsanandroid/content/Context;Lccsanandroid/content/ComponentName;Lccsanandroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Lccsanandroid/os/Bundle;)V

    .line 1996
    return-void
.end method


# virtual methods
.method public subscribe(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Lccsanandroid/os/Bundle;
    .param p3, "callback"    # Lccsanandroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    .line 2003
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi26;->mServiceBinderWrapper:Lccsanandroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v0, :cond_1

    iget v0, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi26;->mServiceVersion:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2012
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi23;->subscribe(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    goto :goto_1

    .line 2004
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 2005
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi26;->mBrowserObj:Ljava/lang/Object;

    iget-object v1, p3, Lccsanandroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionCallbackObj:Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lccsanandroid/support/v4/media/MediaBrowserCompatApi21;->subscribe(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 2008
    :cond_2
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi26;->mBrowserObj:Ljava/lang/Object;

    iget-object v1, p3, Lccsanandroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionCallbackObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2, v1}, Lccsanandroid/support/v4/media/MediaBrowserCompatApi26;->subscribe(Ljava/lang/Object;Ljava/lang/String;Lccsanandroid/os/Bundle;Ljava/lang/Object;)V

    .line 2014
    :goto_1
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;Lccsanandroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "callback"    # Lccsanandroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;

    .line 2020
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi26;->mServiceBinderWrapper:Lccsanandroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v0, :cond_1

    iget v0, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi26;->mServiceVersion:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2028
    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi23;->unsubscribe(Ljava/lang/String;Lccsanandroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V

    goto :goto_1

    .line 2021
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 2022
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi26;->mBrowserObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Lccsanandroid/support/v4/media/MediaBrowserCompatApi21;->unsubscribe(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 2024
    :cond_2
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi26;->mBrowserObj:Ljava/lang/Object;

    iget-object v1, p2, Lccsanandroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionCallbackObj:Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lccsanandroid/support/v4/media/MediaBrowserCompatApi26;->unsubscribe(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2030
    :goto_1
    return-void
.end method
