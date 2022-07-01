.class final Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem$1;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 567
    new-instance v0, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-direct {v0, p1}, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Lccsanandroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 564
    invoke-virtual {p0, p1}, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 1
    .param p1, "size"    # I

    .line 572
    new-array v0, p1, [Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 564
    invoke-virtual {p0, p1}, Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem$1;->newArray(I)[Lccsanandroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object p1

    return-object p1
.end method
