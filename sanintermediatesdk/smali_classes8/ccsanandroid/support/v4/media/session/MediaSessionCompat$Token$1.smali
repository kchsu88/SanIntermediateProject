.class final Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token$1;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 2
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 1731
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1732
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Lccsanandroid/os/Parcelable;

    move-result-object v0

    .local v0, "inner":Ljava/lang/Object;
    goto :goto_0

    .line 1734
    .end local v0    # "inner":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readStrongBinder()Lccsanandroid/os/IBinder;

    move-result-object v0

    .line 1736
    .restart local v0    # "inner":Ljava/lang/Object;
    :goto_0
    new-instance v1, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-direct {v1, v0}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1727
    invoke-virtual {p0, p1}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1
    .param p1, "size"    # I

    .line 1741
    new-array v0, p1, [Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1727
    invoke-virtual {p0, p1}, Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token$1;->newArray(I)[Lccsanandroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object p1

    return-object p1
.end method
