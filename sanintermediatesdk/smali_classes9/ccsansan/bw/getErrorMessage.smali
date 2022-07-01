.class public Lccsansan/bw/getErrorMessage;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static IncentiveDownloadUtils:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lccsansan/dc/unifiedDownload;",
            ">;"
        }
    .end annotation
.end field

.field public static addDownloadListener:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lccsansan/dt/removeDownloadListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lccsansan/bw/getErrorMessage$unifiedDownload;

    invoke-direct {v0}, Lccsansan/bw/getErrorMessage$unifiedDownload;-><init>()V

    sput-object v0, Lccsansan/bw/getErrorMessage;->addDownloadListener:Ljava/util/Comparator;

    .line 17
    new-instance v0, Lccsansan/bw/getErrorMessage$removeDownloadListener;

    invoke-direct {v0}, Lccsansan/bw/getErrorMessage$removeDownloadListener;-><init>()V

    sput-object v0, Lccsansan/bw/getErrorMessage;->IncentiveDownloadUtils:Ljava/util/Comparator;

    return-void
.end method
