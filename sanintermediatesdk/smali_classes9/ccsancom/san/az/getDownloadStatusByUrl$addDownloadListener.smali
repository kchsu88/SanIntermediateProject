.class final Lccsancom/san/az/getDownloadStatusByUrl$addDownloadListener;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/getDownloadStatusByUrl;->IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static getDownloadingList:I


# instance fields
.field final synthetic addDownloadListener:Lccsansan/p/getDownloadedList;

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$addDownloadListener;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$addDownloadListener;->getDownloadingList:I

    return-void
.end method

.method constructor <init>(Lccsansan/p/getDownloadedList;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/az/getDownloadStatusByUrl$addDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    iput-boolean p2, p0, Lccsancom/san/az/getDownloadStatusByUrl$addDownloadListener;->unifiedDownload:Z

    iput-object p3, p0, Lccsancom/san/az/getDownloadStatusByUrl$addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 3

    .line 1
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl$addDownloadListener;->getDownloadingList:I

    xor-int/lit8 v1, v0, 0x23

    and-int/lit8 v0, v0, 0x23

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v0, p0, Lccsancom/san/az/getDownloadStatusByUrl$addDownloadListener;->addDownloadListener:Lccsansan/p/getDownloadedList;

    iget-boolean v1, p0, Lccsancom/san/az/getDownloadStatusByUrl$addDownloadListener;->unifiedDownload:Z

    iget-object v2, p0, Lccsancom/san/az/getDownloadStatusByUrl$addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener(Lccsansan/p/getDownloadedList;ZLjava/lang/String;)V

    sget v0, Lccsancom/san/az/getDownloadStatusByUrl$addDownloadListener;->IncentiveDownloadUtils:I

    xor-int/lit8 v1, v0, 0xd

    and-int/lit8 v2, v0, 0xd

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    and-int/lit8 v2, v0, -0xe

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0xd

    or-int/2addr v0, v2

    neg-int v0, v0

    xor-int v2, v1, v0

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl$addDownloadListener;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    return-void
.end method
