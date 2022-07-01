.class synthetic Lccsansan/ae/removeDownloadListener$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/ae/removeDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic removeDownloadListener:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lccsansan/cs/unifiedDownload;->values()[Lccsansan/cs/unifiedDownload;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lccsansan/ae/removeDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:[I

    :try_start_0
    sget-object v1, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
