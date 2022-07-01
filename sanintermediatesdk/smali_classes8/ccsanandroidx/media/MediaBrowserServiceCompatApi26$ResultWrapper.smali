.class Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ResultWrapper;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi26.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/media/MediaBrowserServiceCompatApi26;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResultWrapper"
.end annotation


# instance fields
.field mResultObj:Lccsanandroid/service/media/MediaBrowserService$Result;


# direct methods
.method constructor <init>(Lccsanandroid/service/media/MediaBrowserService$Result;)V
    .locals 0
    .param p1, "result"    # Lccsanandroid/service/media/MediaBrowserService$Result;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ResultWrapper;->mResultObj:Lccsanandroid/service/media/MediaBrowserService$Result;

    .line 69
    return-void
.end method


# virtual methods
.method public detach()V
    .locals 1

    .line 81
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ResultWrapper;->mResultObj:Lccsanandroid/service/media/MediaBrowserService$Result;

    invoke-virtual {v0}, Lccsanandroid/service/media/MediaBrowserService$Result;->detach()V

    .line 82
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

    .line 85
    .local p1, "parcelList":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/os/Parcel;>;"
    if-nez p1, :cond_0

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
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

    .line 90
    .local v2, "parcel":Lccsanandroid/os/Parcel;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lccsanandroid/os/Parcel;->setDataPosition(I)V

    .line 91
    sget-object v3, Lccsanandroid/media/browse/MediaBrowser$MediaItem;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Lccsanandroid/os/Parcelable$Creator;->createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {v2}, Lccsanandroid/os/Parcel;->recycle()V

    .line 93
    .end local v2    # "parcel":Lccsanandroid/os/Parcel;
    goto :goto_0

    .line 94
    :cond_1
    return-object v0
.end method

.method public sendResult(Ljava/util/List;I)V
    .locals 2
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/os/Parcel;",
            ">;I)V"
        }
    .end annotation

    .line 73
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/os/Parcel;>;"
    :try_start_0
    sget-object v0, Lccsanandroidx/media/MediaBrowserServiceCompatApi26;->sResultFlags:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ResultWrapper;->mResultObj:Lccsanandroid/service/media/MediaBrowserService$Result;

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "MBSCompatApi26"

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_0
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ResultWrapper;->mResultObj:Lccsanandroid/service/media/MediaBrowserService$Result;

    invoke-virtual {p0, p1}, Lccsanandroidx/media/MediaBrowserServiceCompatApi26$ResultWrapper;->parcelListToItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V

    .line 78
    return-void
.end method
