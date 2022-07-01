.class Lccsansan/f/removeDownloadListener$getDownloadingList;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/f/removeDownloadListener;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static removeDownloadListener:I


# instance fields
.field final synthetic getDownloadingList:Lccsancom/san/xz/api/unifiedDownload;

.field final synthetic unifiedDownload:Lccsancom/san/xz/base/XzRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/f/removeDownloadListener$getDownloadingList;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/removeDownloadListener$getDownloadingList;->addDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/api/unifiedDownload;Lccsancom/san/xz/base/XzRecord;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/f/removeDownloadListener$getDownloadingList;->getDownloadingList:Lccsancom/san/xz/api/unifiedDownload;

    iput-object p3, p0, Lccsansan/f/removeDownloadListener$getDownloadingList;->unifiedDownload:Lccsancom/san/xz/base/XzRecord;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 3

    .line 1
    sget v0, Lccsansan/f/removeDownloadListener$getDownloadingList;->addDownloadListener:I

    and-int/lit8 v1, v0, 0x3

    xor-int/lit8 v2, v1, -0x1

    or-int/lit8 v0, v0, 0x3

    and-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x1

    neg-int v1, v1

    neg-int v1, v1

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/removeDownloadListener$getDownloadingList;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/f/removeDownloadListener$getDownloadingList;->getDownloadingList:Lccsancom/san/xz/api/unifiedDownload;

    iget-object v1, p0, Lccsansan/f/removeDownloadListener$getDownloadingList;->unifiedDownload:Lccsancom/san/xz/base/XzRecord;

    invoke-interface {v0, v1}, Lccsancom/san/xz/api/unifiedDownload;->getDownloadingList(Lccsancom/san/xz/base/XzRecord;)V

    sget v0, Lccsansan/f/removeDownloadListener$getDownloadingList;->addDownloadListener:I

    xor-int/lit8 v1, v0, 0x35

    and-int/lit8 v0, v0, 0x35

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/f/removeDownloadListener$getDownloadingList;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method
