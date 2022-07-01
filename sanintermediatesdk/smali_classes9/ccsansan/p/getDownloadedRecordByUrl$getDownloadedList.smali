.class Lccsansan/p/getDownloadedRecordByUrl$getDownloadedList;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/p/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;Lccsanandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/p/getDownloadedRecordByUrl;

.field final synthetic addDownloadListener:Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;

.field final synthetic getDownloadingList:Lccsanandroid/content/Context;

.field final synthetic removeDownloadListener:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsansan/p/getDownloadedRecordByUrl;Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadedList;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedRecordByUrl;

    iput-object p2, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadedList;->getDownloadingList:Lccsanandroid/content/Context;

    iput-object p3, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadedList;->removeDownloadListener:Ljava/lang/String;

    iput-object p4, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadedList;->addDownloadListener:Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadedList;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedRecordByUrl;

    iget-object v1, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadedList;->getDownloadingList:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadedList;->removeDownloadListener:Ljava/lang/String;

    iget-object v3, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadedList;->addDownloadListener:Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;

    invoke-static {v0, v1, v2, v3}, Lccsansan/p/getDownloadedRecordByUrl;->unifiedDownload(Lccsansan/p/getDownloadedRecordByUrl;Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;)V

    return-void
.end method
