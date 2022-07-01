.class synthetic Lccsancom/san/xz/base/unifiedDownload$getDownloadingList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/xz/base/unifiedDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:I

.field static final synthetic getDownloadingList:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    sput v0, Lccsancom/san/xz/base/unifiedDownload$getDownloadingList;->addDownloadListener:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/xz/base/unifiedDownload$getDownloadingList;->IncentiveDownloadUtils:I

    .line 1
    invoke-static {}, Lccsansan/cs/unifiedDownload;->values()[Lccsansan/cs/unifiedDownload;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lccsancom/san/xz/base/unifiedDownload$getDownloadingList;->getDownloadingList:[I

    const/4 v3, 0x2

    :try_start_0
    sget-object v4, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v2, v4
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    sget v2, Lccsancom/san/xz/base/unifiedDownload$getDownloadingList;->addDownloadListener:I

    xor-int/lit8 v4, v2, 0x23

    and-int/lit8 v2, v2, 0x23

    shl-int/2addr v2, v1

    add-int/2addr v4, v2

    rem-int/lit16 v2, v4, 0x80

    sput v2, Lccsancom/san/xz/base/unifiedDownload$getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/2addr v4, v3

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    sget v0, Lccsancom/san/xz/base/unifiedDownload$getDownloadingList;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0x18

    or-int/lit8 v0, v0, 0x18

    add-int/2addr v1, v0

    and-int/lit8 v0, v1, -0x1

    or-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/unifiedDownload$getDownloadingList;->addDownloadListener:I

    rem-int/2addr v0, v3

    if-eqz v0, :cond_1

    const/16 v3, 0x9

    :cond_1
    packed-switch v3, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    :try_start_1
    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method
