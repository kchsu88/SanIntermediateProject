.class Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1;
.super Lccsanandroidx/media/MediaBrowserServiceCompat$Result;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;->onLoadChildren(Ljava/lang/String;Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ResultWrapper;Lccsanandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/media/MediaBrowserServiceCompat$Result<",
        "Ljava/util/List<",
        "Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;

.field final synthetic val$resultWrapper:Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ResultWrapper;


# direct methods
.method constructor <init>(Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;Ljava/lang/Object;Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ResultWrapper;)V
    .locals 0
    .param p1, "this$1"    # Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;
    .param p2, "debug"    # Ljava/lang/Object;

    .line 527
    iput-object p1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;

    iput-object p3, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1;->val$resultWrapper:Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ResultWrapper;

    invoke-direct {p0, p2}, Lccsanandroidx/media/MediaBrowserServiceCompat$Result;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public detach()V
    .locals 1

    .line 544
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1;->val$resultWrapper:Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ResultWrapper;

    invoke-virtual {v0}, Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ResultWrapper;->detach()V

    .line 545
    return-void
.end method

.method bridge synthetic onResultSent(Ljava/lang/Object;)V
    .locals 0

    .line 527
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1;->onResultSent(Ljava/util/List;)V

    return-void
.end method

.method onResultSent(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 530
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    const/4 v0, 0x0

    .line 531
    .local v0, "parcelList":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/os/Parcel;>;"
    if-eqz p1, :cond_0

    .line 532
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 533
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 534
    .local v2, "item":Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v3

    .line 535
    .local v3, "parcel":Lccsanandroid/os/Parcel;
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;->writeToParcel(Lccsanandroid/os/Parcel;I)V

    .line 536
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    .end local v2    # "item":Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .end local v3    # "parcel":Lccsanandroid/os/Parcel;
    goto :goto_0

    .line 539
    :cond_0
    iget-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1;->val$resultWrapper:Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ResultWrapper;

    invoke-virtual {p0}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1;->getFlags()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ResultWrapper;->sendResult(Ljava/util/List;I)V

    .line 540
    return-void
.end method
