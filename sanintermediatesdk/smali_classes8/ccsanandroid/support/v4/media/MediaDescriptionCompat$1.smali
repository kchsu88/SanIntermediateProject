.class final Lccsanandroid/support/v4/media/MediaDescriptionCompat$1;
.super Ljava/lang/Object;
.source "MediaDescriptionCompat.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroid/support/v4/media/MediaDescriptionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsanandroid/support/v4/media/MediaDescriptionCompat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroid/support/v4/media/MediaDescriptionCompat;
    .locals 2
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 422
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 423
    new-instance v0, Lccsanandroid/support/v4/media/MediaDescriptionCompat;

    invoke-direct {v0, p1}, Lccsanandroid/support/v4/media/MediaDescriptionCompat;-><init>(Lccsanandroid/os/Parcel;)V

    return-object v0

    .line 425
    :cond_0
    invoke-static {p1}, Lccsanandroid/support/v4/media/MediaDescriptionCompatApi21;->fromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/support/v4/media/MediaDescriptionCompat;->fromMediaDescription(Ljava/lang/Object;)Lccsanandroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Lccsanandroid/support/v4/media/MediaDescriptionCompat$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsanandroid/support/v4/media/MediaDescriptionCompat;
    .locals 1
    .param p1, "size"    # I

    .line 431
    new-array v0, p1, [Lccsanandroid/support/v4/media/MediaDescriptionCompat;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Lccsanandroid/support/v4/media/MediaDescriptionCompat$1;->newArray(I)[Lccsanandroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    return-object p1
.end method
