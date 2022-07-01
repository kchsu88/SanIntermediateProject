.class public Lccsancom/san/xz/base/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/san/xz/base/IncentiveDownloadUtils;",
            ">;"
        }
    .end annotation
.end field

.field private static getDownloadingList:I

.field private static removeDownloadListener:I


# instance fields
.field private IncentiveDownloadUtils:Ljava/lang/String;

.field private addDownloadListener:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    sput v0, Lccsancom/san/xz/base/IncentiveDownloadUtils;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/xz/base/IncentiveDownloadUtils;->getDownloadingList:I

    .line 1
    new-instance v1, Lccsancom/san/xz/base/IncentiveDownloadUtils$IncentiveDownloadUtils;

    invoke-direct {v1}, Lccsancom/san/xz/base/IncentiveDownloadUtils$IncentiveDownloadUtils;-><init>()V

    sput-object v1, Lccsancom/san/xz/base/IncentiveDownloadUtils;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    sget v1, Lccsancom/san/xz/base/IncentiveDownloadUtils;->getDownloadingList:I

    and-int/lit8 v2, v1, -0x62

    xor-int/lit8 v3, v1, -0x1

    and-int/lit8 v3, v3, 0x61

    or-int/2addr v2, v3

    and-int/lit8 v1, v1, 0x61

    shl-int/2addr v1, v0

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v2, v1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/xz/base/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/16 v0, 0xd

    goto :goto_0

    :cond_0
    const/16 v0, 0x33

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch
.end method

.method private constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/san/xz/base/IncentiveDownloadUtils;->addDownloadListener:Ljava/util/HashMap;

    .line 59
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/xz/base/IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/xz/base/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lccsancom/san/xz/base/IncentiveDownloadUtils;->addDownloadListener:Ljava/util/HashMap;

    const-class v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method synthetic constructor <init>(Lccsanandroid/os/Parcel;Lccsancom/san/xz/base/IncentiveDownloadUtils$IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsancom/san/xz/base/IncentiveDownloadUtils;-><init>(Lccsanandroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/san/xz/base/IncentiveDownloadUtils;->addDownloadListener:Ljava/util/HashMap;

    .line 6
    iput-object p1, p0, Lccsancom/san/xz/base/IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lccsancom/san/xz/base/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()Ljava/lang/String;
    .locals 5

    .line 1
    sget v0, Lccsancom/san/xz/base/IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v1, v0, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/xz/base/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/xz/base/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    xor-int/lit8 v2, v0, 0x3

    and-int/lit8 v3, v0, 0x3

    or-int/2addr v2, v3

    const/4 v4, 0x1

    shl-int/2addr v2, v4

    xor-int/lit8 v3, v3, -0x1

    or-int/lit8 v0, v0, 0x3

    and-int/2addr v0, v3

    neg-int v0, v0

    and-int v3, v2, v0

    or-int/2addr v0, v2

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/xz/base/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    :cond_1
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-object v1

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public describeContents()I
    .locals 6

    sget v0, Lccsancom/san/xz/base/IncentiveDownloadUtils;->removeDownloadListener:I

    xor-int/lit8 v1, v0, 0x35

    and-int/lit8 v2, v0, 0x35

    or-int/2addr v1, v2

    const/4 v3, 0x1

    shl-int/2addr v1, v3

    xor-int/lit8 v2, v2, -0x1

    or-int/lit8 v0, v0, 0x35

    and-int/2addr v0, v2

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/xz/base/IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x34

    goto :goto_0

    :cond_0
    const/16 v1, 0x3e

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x1

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x0

    :goto_1
    xor-int/lit8 v4, v0, 0x2d

    and-int/lit8 v0, v0, 0x2d

    shl-int/2addr v0, v3

    neg-int v0, v0

    neg-int v0, v0

    and-int v5, v4, v0

    or-int/2addr v0, v4

    add-int/2addr v5, v0

    rem-int/lit16 v0, v5, 0x80

    sput v0, Lccsancom/san/xz/base/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    packed-switch v3, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return v1

    :goto_3
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x3e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public removeDownloadListener()Ljava/lang/String;
    .locals 5

    .line 1
    sget v0, Lccsancom/san/xz/base/IncentiveDownloadUtils;->removeDownloadListener:I

    xor-int/lit8 v1, v0, 0x43

    and-int/lit8 v0, v0, 0x43

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/xz/base/IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/xz/base/IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    const/16 v2, 0x61

    and-int/lit8 v3, v0, -0x62

    xor-int/lit8 v4, v0, -0x1

    and-int/2addr v4, v2

    or-int/2addr v3, v4

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/xz/base/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    return-object v1
.end method

.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 2

    .line 3
    sget p2, Lccsancom/san/xz/base/IncentiveDownloadUtils;->removeDownloadListener:I

    xor-int/lit8 v0, p2, 0x77

    and-int/lit8 p2, p2, 0x77

    or-int/2addr p2, v0

    const/4 v1, 0x1

    shl-int/2addr p2, v1

    sub-int/2addr p2, v0

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsancom/san/xz/base/IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 p2, p2, 0x2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1
    iget-object p2, p0, Lccsancom/san/xz/base/IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lccsancom/san/xz/base/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lccsancom/san/xz/base/IncentiveDownloadUtils;->addDownloadListener:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_1

    .line 1
    :pswitch_0
    iget-object p2, p0, Lccsancom/san/xz/base/IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lccsancom/san/xz/base/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lccsancom/san/xz/base/IncentiveDownloadUtils;->addDownloadListener:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto :goto_2

    :goto_1
    const/16 p1, 0x43

    :try_start_0
    div-int/2addr p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    sget p1, Lccsancom/san/xz/base/IncentiveDownloadUtils;->getDownloadingList:I

    and-int/lit8 p2, p1, 0x5

    xor-int/lit8 p1, p1, 0x5

    or-int/2addr p1, p2

    add-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsancom/san/xz/base/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
