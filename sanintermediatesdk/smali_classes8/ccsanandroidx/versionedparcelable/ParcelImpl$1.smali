.class final Lccsanandroidx/versionedparcelable/ParcelImpl$1;
.super Ljava/lang/Object;
.source "ParcelImpl.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/versionedparcelable/ParcelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsanandroidx/versionedparcelable/ParcelImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroidx/versionedparcelable/ParcelImpl;
    .locals 1
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 63
    new-instance v0, Lccsanandroidx/versionedparcelable/ParcelImpl;

    invoke-direct {v0, p1}, Lccsanandroidx/versionedparcelable/ParcelImpl;-><init>(Lccsanandroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lccsanandroidx/versionedparcelable/ParcelImpl$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsanandroidx/versionedparcelable/ParcelImpl;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsanandroidx/versionedparcelable/ParcelImpl;
    .locals 1
    .param p1, "size"    # I

    .line 68
    new-array v0, p1, [Lccsanandroidx/versionedparcelable/ParcelImpl;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lccsanandroidx/versionedparcelable/ParcelImpl$1;->newArray(I)[Lccsanandroidx/versionedparcelable/ParcelImpl;

    move-result-object p1

    return-object p1
.end method
