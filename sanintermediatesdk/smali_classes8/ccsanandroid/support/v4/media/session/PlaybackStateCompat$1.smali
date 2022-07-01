.class final Lccsanandroid/support/v4/media/session/PlaybackStateCompat$1;
.super Ljava/lang/Object;
.source "PlaybackStateCompat.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/session/PlaybackStateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsanandroid/support/v4/media/session/PlaybackStateCompat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 868
    new-instance v0, Lccsanandroid/support/v4/media/session/PlaybackStateCompat;

    invoke-direct {v0, p1}, Lccsanandroid/support/v4/media/session/PlaybackStateCompat;-><init>(Lccsanandroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 865
    invoke-virtual {p0, p1}, Lccsanandroid/support/v4/media/session/PlaybackStateCompat$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsanandroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1
    .param p1, "size"    # I

    .line 873
    new-array v0, p1, [Lccsanandroid/support/v4/media/session/PlaybackStateCompat;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 865
    invoke-virtual {p0, p1}, Lccsanandroid/support/v4/media/session/PlaybackStateCompat$1;->newArray(I)[Lccsanandroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    return-object p1
.end method
