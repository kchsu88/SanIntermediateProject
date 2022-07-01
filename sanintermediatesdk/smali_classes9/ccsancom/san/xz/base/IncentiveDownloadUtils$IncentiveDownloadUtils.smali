.class final Lccsancom/san/xz/base/IncentiveDownloadUtils$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/xz/base/IncentiveDownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsancom/san/xz/base/IncentiveDownloadUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/xz/base/IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/xz/base/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget v0, Lccsancom/san/xz/base/IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload:I

    xor-int/lit8 v1, v0, 0x59

    and-int/lit8 v2, v0, 0x59

    or-int/2addr v1, v2

    const/4 v3, 0x1

    shl-int/2addr v1, v3

    xor-int/lit8 v2, v2, -0x1

    or-int/lit8 v0, v0, 0x59

    and-int/2addr v0, v2

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/xz/base/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lccsancom/san/xz/base/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/os/Parcel;)Lccsancom/san/xz/base/IncentiveDownloadUtils;

    move-result-object p1

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    throw p1

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/xz/base/IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload:I

    or-int/lit8 v1, v0, 0x5f

    shl-int/lit8 v1, v1, 0x1

    and-int/lit8 v2, v0, -0x60

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x5f

    or-int/2addr v0, v2

    neg-int v0, v0

    and-int v2, v1, v0

    or-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/xz/base/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    :cond_0
    invoke-virtual {p0, p1}, Lccsancom/san/xz/base/IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload(I)[Lccsancom/san/xz/base/IncentiveDownloadUtils;

    move-result-object p1

    sget v0, Lccsancom/san/xz/base/IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload:I

    and-int/lit8 v1, v0, 0x61

    or-int/lit8 v0, v0, 0x61

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/xz/base/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    return-object p1
.end method

.method public removeDownloadListener(Lccsanandroid/os/Parcel;)Lccsancom/san/xz/base/IncentiveDownloadUtils;
    .locals 3

    .line 1
    new-instance v0, Lccsancom/san/xz/base/IncentiveDownloadUtils;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lccsancom/san/xz/base/IncentiveDownloadUtils;-><init>(Lccsanandroid/os/Parcel;Lccsancom/san/xz/base/IncentiveDownloadUtils$IncentiveDownloadUtils;)V

    sget p1, Lccsancom/san/xz/base/IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload:I

    and-int/lit8 v1, p1, -0x3a

    xor-int/lit8 v2, p1, -0x1

    and-int/lit8 v2, v2, 0x39

    or-int/2addr v1, v2

    and-int/lit8 p1, p1, 0x39

    shl-int/lit8 p1, p1, 0x1

    xor-int v2, v1, p1

    and-int/2addr p1, v1

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr v2, p1

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lccsancom/san/xz/base/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    return-object v0
.end method

.method public unifiedDownload(I)[Lccsancom/san/xz/base/IncentiveDownloadUtils;
    .locals 3

    .line 2
    sget v0, Lccsancom/san/xz/base/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    or-int/lit8 v1, v0, 0x4e

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v2, v0, 0x4e

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/xz/base/IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    new-array p1, p1, [Lccsancom/san/xz/base/IncentiveDownloadUtils;

    add-int/lit8 v0, v0, 0x12

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/IncentiveDownloadUtils$IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1
.end method
