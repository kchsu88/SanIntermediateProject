.class Lccsanandroid/support/v4/media/MediaBrowserCompat$ItemCallback$StubApi23;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Lccsanandroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/MediaBrowserCompat$ItemCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubApi23"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$ItemCallback;


# direct methods
.method constructor <init>(Lccsanandroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V
    .locals 0

    .line 869
    iput-object p1, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$ItemCallback$StubApi23;->this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 870
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;

    .line 887
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$ItemCallback$StubApi23;->this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    invoke-virtual {v0, p1}, Lccsanandroid/support/v4/media/MediaBrowserCompat$ItemCallback;->onError(Ljava/lang/String;)V

    .line 888
    return-void
.end method

.method public onItemLoaded(Lccsanandroid/os/Parcel;)V
    .locals 2
    .param p1, "itemParcel"    # Lccsanandroid/os/Parcel;

    .line 874
    if-nez p1, :cond_0

    .line 875
    iget-object v0, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$ItemCallback$StubApi23;->this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/support/v4/media/MediaBrowserCompat$ItemCallback;->onItemLoaded(Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    goto :goto_0

    .line 877
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->setDataPosition(I)V

    .line 878
    sget-object v0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    .line 879
    invoke-interface {v0, p1}, Lccsanandroid/os/Parcelable$Creator;->createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 880
    .local v0, "item":Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 881
    iget-object v1, p0, Lccsanandroid/support/v4/media/MediaBrowserCompat$ItemCallback$StubApi23;->this$0:Lccsanandroid/support/v4/media/MediaBrowserCompat$ItemCallback;

    invoke-virtual {v1, v0}, Lccsanandroid/support/v4/media/MediaBrowserCompat$ItemCallback;->onItemLoaded(Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    .line 883
    .end local v0    # "item":Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;
    :goto_0
    return-void
.end method
