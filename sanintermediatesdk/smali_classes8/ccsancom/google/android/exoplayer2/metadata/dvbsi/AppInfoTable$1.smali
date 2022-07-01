.class Lccsancom/google/android/exoplayer2/metadata/dvbsi/AppInfoTable$1;
.super Ljava/lang/Object;
.source "AppInfoTable.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/metadata/dvbsi/AppInfoTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsancom/google/android/exoplayer2/metadata/dvbsi/AppInfoTable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/google/android/exoplayer2/metadata/dvbsi/AppInfoTable;
    .locals 3
    .param p1, "in"    # Lccsanandroid/os/Parcel;

    .line 70
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v1

    .line 72
    .local v1, "controlCode":I
    new-instance v2, Lccsancom/google/android/exoplayer2/metadata/dvbsi/AppInfoTable;

    invoke-direct {v2, v1, v0}, Lccsancom/google/android/exoplayer2/metadata/dvbsi/AppInfoTable;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lccsancom/google/android/exoplayer2/metadata/dvbsi/AppInfoTable$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/google/android/exoplayer2/metadata/dvbsi/AppInfoTable;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsancom/google/android/exoplayer2/metadata/dvbsi/AppInfoTable;
    .locals 1
    .param p1, "size"    # I

    .line 77
    new-array v0, p1, [Lccsancom/google/android/exoplayer2/metadata/dvbsi/AppInfoTable;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lccsancom/google/android/exoplayer2/metadata/dvbsi/AppInfoTable$1;->newArray(I)[Lccsancom/google/android/exoplayer2/metadata/dvbsi/AppInfoTable;

    move-result-object p1

    return-object p1
.end method
