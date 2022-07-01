.class synthetic Lccsansan/f/unifiedDownload$unifiedDownload;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/f/unifiedDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field private static getDownloadingList:I

.field static final synthetic removeDownloadListener:[I

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    sput v0, Lccsansan/f/unifiedDownload$unifiedDownload;->unifiedDownload:I

    const/4 v1, 0x1

    sput v1, Lccsansan/f/unifiedDownload$unifiedDownload;->getDownloadingList:I

    .line 1
    invoke-static {}, Lccsancom/san/xz/base/XzRecord$Status;->values()[Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lccsansan/f/unifiedDownload$unifiedDownload;->removeDownloadListener:[I

    :try_start_0
    sget-object v3, Lccsancom/san/xz/base/XzRecord$Status;->COMPLETED:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    sget v2, Lccsansan/f/unifiedDownload$unifiedDownload;->unifiedDownload:I

    add-int/lit8 v2, v2, 0x29

    sub-int/2addr v2, v1

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/f/unifiedDownload$unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    sget v0, Lccsansan/f/unifiedDownload$unifiedDownload;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x72

    sub-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/unifiedDownload$unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method
