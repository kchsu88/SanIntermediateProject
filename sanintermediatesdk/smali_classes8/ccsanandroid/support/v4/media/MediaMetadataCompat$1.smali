.class final Lccsanandroid/support/v4/media/MediaMetadataCompat$1;
.super Ljava/lang/Object;
.source "MediaMetadataCompat.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/MediaMetadataCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsanandroid/support/v4/media/MediaMetadataCompat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroid/support/v4/media/MediaMetadataCompat;
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 645
    new-instance v0, Lccsanandroid/support/v4/media/MediaMetadataCompat;

    invoke-direct {v0, p1}, Lccsanandroid/support/v4/media/MediaMetadataCompat;-><init>(Lccsanandroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 642
    invoke-virtual {p0, p1}, Lccsanandroid/support/v4/media/MediaMetadataCompat$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsanandroid/support/v4/media/MediaMetadataCompat;
    .locals 1
    .param p1, "size"    # I

    .line 650
    new-array v0, p1, [Lccsanandroid/support/v4/media/MediaMetadataCompat;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 642
    invoke-virtual {p0, p1}, Lccsanandroid/support/v4/media/MediaMetadataCompat$1;->newArray(I)[Lccsanandroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    return-object p1
.end method
