.class final Lccsansan/cs/addDownloadListener$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/cs/addDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsansan/cs/addDownloadListener;",
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
.method public IncentiveDownloadUtils(Lccsanandroid/os/Parcel;)Lccsansan/cs/addDownloadListener;
    .locals 1

    .line 1
    new-instance v0, Lccsansan/cs/addDownloadListener;

    invoke-direct {v0, p1}, Lccsansan/cs/addDownloadListener;-><init>(Lccsanandroid/os/Parcel;)V

    return-object v0
.end method

.method public IncentiveDownloadUtils(I)[Lccsansan/cs/addDownloadListener;
    .locals 0

    .line 2
    new-array p1, p1, [Lccsansan/cs/addDownloadListener;

    return-object p1
.end method

.method public synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lccsansan/cs/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanandroid/os/Parcel;)Lccsansan/cs/addDownloadListener;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lccsansan/cs/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils(I)[Lccsansan/cs/addDownloadListener;

    move-result-object p1

    return-object p1
.end method
