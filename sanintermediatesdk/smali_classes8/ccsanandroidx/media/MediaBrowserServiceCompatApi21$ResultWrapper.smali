.class Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/media/MediaBrowserServiceCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResultWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mResultObj:Lccsanandroid/service/media/MediaBrowserService$Result;


# direct methods
.method constructor <init>(Lccsanandroid/service/media/MediaBrowserService$Result;)V
    .locals 0
    .param p1, "result"    # Lccsanandroid/service/media/MediaBrowserService$Result;

    .line 65
    .local p0, "this":Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;, "Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;->mResultObj:Lccsanandroid/service/media/MediaBrowserService$Result;

    .line 67
    return-void
.end method


# virtual methods
.method public detach()V
    .locals 1

    .line 84
    .local p0, "this":Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;, "Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper<TT;>;"
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;->mResultObj:Lccsanandroid/service/media/MediaBrowserService$Result;

    invoke-virtual {v0}, Lccsanandroid/service/media/MediaBrowserService$Result;->detach()V

    .line 85
    return-void
.end method

.method parcelListToItemList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/os/Parcel;",
            ">;)",
            "Ljava/util/List<",
            "Lccsanandroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;, "Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper<TT;>;"
    .local p1, "parcelList":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/os/Parcel;>;"
    if-nez p1, :cond_0

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/media/browse/MediaBrowser$MediaItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/os/Parcel;

    .line 93
    .local v2, "parcel":Lccsanandroid/os/Parcel;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lccsanandroid/os/Parcel;->setDataPosition(I)V

    .line 94
    sget-object v3, Lccsanandroid/media/browse/MediaBrowser$MediaItem;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Lccsanandroid/os/Parcelable$Creator;->createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v2}, Lccsanandroid/os/Parcel;->recycle()V

    .line 96
    .end local v2    # "parcel":Lccsanandroid/os/Parcel;
    goto :goto_0

    .line 97
    :cond_1
    return-object v0
.end method

.method public sendResult(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;, "Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;->mResultObj:Lccsanandroid/service/media/MediaBrowserService$Result;

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;->parcelListToItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    :cond_0
    instance-of v0, p1, Lccsanandroid/os/Parcel;

    if-eqz v0, :cond_1

    .line 73
    move-object v0, p1

    check-cast v0, Lccsanandroid/os/Parcel;

    .line 74
    .local v0, "parcel":Lccsanandroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/os/Parcel;->setDataPosition(I)V

    .line 75
    iget-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;->mResultObj:Lccsanandroid/service/media/MediaBrowserService$Result;

    sget-object v2, Lccsanandroid/media/browse/MediaBrowser$MediaItem;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Lccsanandroid/os/Parcelable$Creator;->createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 77
    .end local v0    # "parcel":Lccsanandroid/os/Parcel;
    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;->mResultObj:Lccsanandroid/service/media/MediaBrowserService$Result;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V

    .line 81
    :goto_0
    return-void
.end method
