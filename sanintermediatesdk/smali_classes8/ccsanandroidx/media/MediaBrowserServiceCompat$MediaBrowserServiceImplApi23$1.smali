.class Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;
.super Lccsanandroidx/media/MediaBrowserServiceCompat$Result;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;->onLoadItem(Ljava/lang/String;Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/media/MediaBrowserServiceCompat$Result<",
        "Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;

.field final synthetic val$resultWrapper:Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;


# direct methods
.method constructor <init>(Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;Ljava/lang/Object;Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V
    .locals 0
    .param p1, "this$1"    # Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;
    .param p2, "debug"    # Ljava/lang/Object;

    .line 492
    iput-object p1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;->this$1:Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;

    iput-object p3, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;->val$resultWrapper:Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;

    invoke-direct {p0, p2}, Lccsanandroidx/media/MediaBrowserServiceCompat$Result;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public detach()V
    .locals 1

    .line 506
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;->val$resultWrapper:Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;

    invoke-virtual {v0}, Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;->detach()V

    .line 507
    return-void
.end method

.method onResultSent(Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;)V
    .locals 2
    .param p1, "item"    # Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 495
    if-nez p1, :cond_0

    .line 496
    iget-object v0, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;->val$resultWrapper:Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;->sendResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 498
    :cond_0
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 499
    .local v0, "parcelItem":Lccsanandroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;->writeToParcel(Lccsanandroid/os/Parcel;I)V

    .line 500
    iget-object v1, p0, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;->val$resultWrapper:Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;

    invoke-virtual {v1, v0}, Lccsanandroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;->sendResult(Ljava/lang/Object;)V

    .line 502
    .end local v0    # "parcelItem":Lccsanandroid/os/Parcel;
    :goto_0
    return-void
.end method

.method bridge synthetic onResultSent(Ljava/lang/Object;)V
    .locals 0

    .line 492
    check-cast p1, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {p0, p1}, Lccsanandroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;->onResultSent(Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    return-void
.end method
