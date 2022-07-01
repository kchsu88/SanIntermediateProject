.class synthetic Lccsancom/san/xz/base/addDownloadListener$unifiedDownload;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/xz/base/addDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field static final synthetic addDownloadListener:[I

.field private static removeDownloadListener:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lccsancom/san/xz/base/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/xz/base/addDownloadListener$unifiedDownload;->removeDownloadListener:I

    .line 1
    invoke-static {}, Lccsansan/cs/unifiedDownload;->values()[Lccsansan/cs/unifiedDownload;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lccsancom/san/xz/base/addDownloadListener$unifiedDownload;->addDownloadListener:[I

    :try_start_0
    sget-object v2, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    sget v0, Lccsancom/san/xz/base/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, 0x2b

    or-int/lit8 v0, v0, 0x2b

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/xz/base/addDownloadListener$unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    sget v0, Lccsancom/san/xz/base/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/addDownloadListener$unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method
