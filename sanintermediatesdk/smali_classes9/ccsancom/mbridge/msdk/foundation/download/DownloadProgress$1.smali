.class Lccsancom/mbridge/msdk/foundation/download/DownloadProgress$1;
.super Ljava/lang/Object;
.source "DownloadProgress.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;
    .locals 1

    .line 50
    new-instance v0, Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;-><init>(Lccsanandroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/foundation/download/DownloadProgress$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;
    .locals 0

    .line 55
    new-array p1, p1, [Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/foundation/download/DownloadProgress$1;->newArray(I)[Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;

    move-result-object p1

    return-object p1
.end method
