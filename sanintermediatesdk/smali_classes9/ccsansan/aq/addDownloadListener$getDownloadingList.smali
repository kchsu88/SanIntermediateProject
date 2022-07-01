.class final Lccsansan/aq/addDownloadListener$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/aq/addDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsansan/aq/addDownloadListener;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lccsansan/aq/addDownloadListener$getDownloadingList;->getDownloadingList(Lccsanandroid/os/Parcel;)Lccsansan/aq/addDownloadListener;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadingList(Lccsanandroid/os/Parcel;)Lccsansan/aq/addDownloadListener;
    .locals 4

    .line 1
    new-instance v0, Lccsansan/aq/addDownloadListener;

    invoke-direct {v0}, Lccsansan/aq/addDownloadListener;-><init>()V

    .line 2
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/aq/addDownloadListener;->addDownloadListener(Lccsansan/aq/addDownloadListener;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lccsansan/aq/addDownloadListener;->removeDownloadListener(Lccsansan/aq/addDownloadListener;Z)Z

    .line 4
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lccsansan/aq/addDownloadListener;->removeDownloadListener(Lccsansan/aq/addDownloadListener;I)I

    .line 5
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/aq/addDownloadListener;->getDownloadingList(Lccsansan/aq/addDownloadListener;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lccsansan/aq/addDownloadListener;->getDownloadingList(Lccsansan/aq/addDownloadListener;I)I

    .line 7
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lccsansan/aq/addDownloadListener;->unifiedDownload(Lccsansan/aq/addDownloadListener;I)I

    .line 8
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lccsansan/aq/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/aq/addDownloadListener;I)I

    .line 9
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/aq/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/aq/addDownloadListener;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/aq/addDownloadListener;->unifiedDownload(Lccsansan/aq/addDownloadListener;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1}, Lccsansan/aq/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/aq/addDownloadListener;Z)Z

    .line 12
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v0, v1}, Lccsansan/aq/addDownloadListener;->getDownloadingList(Lccsansan/aq/addDownloadListener;Z)Z

    .line 13
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/aq/addDownloadListener;->removeDownloadListener(Lccsansan/aq/addDownloadListener;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lccsansan/aq/addDownloadListener;->addDownloadListener(Lccsansan/aq/addDownloadListener;I)I

    .line 15
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-static {v0, v1}, Lccsansan/aq/addDownloadListener;->addDownloadListener(Lccsansan/aq/addDownloadListener;Z)Z

    .line 16
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    invoke-static {v0, v1}, Lccsansan/aq/addDownloadListener;->unifiedDownload(Lccsansan/aq/addDownloadListener;Z)Z

    .line 17
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lccsansan/aq/addDownloadListener;->getDownloadedRecordByUrl(Lccsansan/aq/addDownloadListener;I)I

    .line 18
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-static {v0, v2}, Lccsansan/aq/addDownloadListener;->getDownloadStatusByUrl(Lccsansan/aq/addDownloadListener;Z)Z

    .line 19
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/aq/addDownloadListener;->getDownloadedList(Lccsansan/aq/addDownloadListener;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lccsansan/aq/addDownloadListener$getDownloadingList;->removeDownloadListener(I)[Lccsansan/aq/addDownloadListener;

    move-result-object p1

    return-object p1
.end method

.method public removeDownloadListener(I)[Lccsansan/aq/addDownloadListener;
    .locals 0

    .line 20
    new-array p1, p1, [Lccsansan/aq/addDownloadListener;

    return-object p1
.end method
