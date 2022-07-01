.class Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;
.super Lccsanandroid/media/browse/MediaBrowser$ItemCallback;
.source "MediaBrowserCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/MediaBrowserCompatApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemCallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;",
        ">",
        "Lccsanandroid/media/browse/MediaBrowser$ItemCallback;"
    }
.end annotation


# instance fields
.field protected final mItemCallback:Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;, "Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy<TT;>;"
    .local p1, "callback":Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;, "TT;"
    invoke-direct {p0}, Lccsanandroid/media/browse/MediaBrowser$ItemCallback;-><init>()V

    .line 45
    iput-object p1, p0, Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;->mItemCallback:Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;

    .line 46
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;

    .line 61
    .local p0, "this":Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;, "Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy<TT;>;"
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;->mItemCallback:Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;

    invoke-interface {v0, p1}, Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;->onError(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public onItemLoaded(Lccsanandroid/media/browse/MediaBrowser$MediaItem;)V
    .locals 2
    .param p1, "item"    # Lccsanandroid/media/browse/MediaBrowser$MediaItem;

    .line 50
    .local p0, "this":Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;, "Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy<TT;>;"
    if-nez p1, :cond_0

    .line 51
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;->mItemCallback:Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;->onItemLoaded(Lccsanandroid/os/Parcel;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 54
    .local v0, "parcel":Lccsanandroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lccsanandroid/media/browse/MediaBrowser$MediaItem;->writeToParcel(Lccsanandroid/os/Parcel;I)V

    .line 55
    iget-object v1, p0, Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallbackProxy;->mItemCallback:Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;

    invoke-interface {v1, v0}, Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;->onItemLoaded(Lccsanandroid/os/Parcel;)V

    .line 57
    .end local v0    # "parcel":Lccsanandroid/os/Parcel;
    :goto_0
    return-void
.end method
