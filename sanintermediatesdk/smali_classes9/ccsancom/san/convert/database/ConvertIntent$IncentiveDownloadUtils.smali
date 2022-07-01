.class final Lccsancom/san/convert/database/ConvertIntent$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/convert/database/ConvertIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsancom/san/convert/database/ConvertIntent;",
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
.method public addDownloadListener(I)[Lccsancom/san/convert/database/ConvertIntent;
    .locals 0

    .line 2
    new-array p1, p1, [Lccsancom/san/convert/database/ConvertIntent;

    return-object p1
.end method

.method public synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lccsancom/san/convert/database/ConvertIntent$IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/os/Parcel;)Lccsancom/san/convert/database/ConvertIntent;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lccsancom/san/convert/database/ConvertIntent$IncentiveDownloadUtils;->addDownloadListener(I)[Lccsancom/san/convert/database/ConvertIntent;

    move-result-object p1

    return-object p1
.end method

.method public removeDownloadListener(Lccsanandroid/os/Parcel;)Lccsancom/san/convert/database/ConvertIntent;
    .locals 2

    .line 1
    new-instance v0, Lccsancom/san/convert/database/ConvertIntent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lccsancom/san/convert/database/ConvertIntent;-><init>(Lccsanandroid/os/Parcel;Lccsancom/san/convert/database/ConvertIntent$IncentiveDownloadUtils;)V

    return-object v0
.end method
