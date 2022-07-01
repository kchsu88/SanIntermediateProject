.class final Lccsanandroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper$1;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsanandroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;
    .locals 1
    .param p1, "p"    # Lccsanandroid/os/Parcel;

    .line 1920
    new-instance v0, Lccsanandroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    invoke-direct {v0, p1}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;-><init>(Lccsanandroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1917
    invoke-virtual {p0, p1}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsanandroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;
    .locals 1
    .param p1, "size"    # I

    .line 1925
    new-array v0, p1, [Lccsanandroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1917
    invoke-virtual {p0, p1}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper$1;->newArray(I)[Lccsanandroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    move-result-object p1

    return-object p1
.end method
