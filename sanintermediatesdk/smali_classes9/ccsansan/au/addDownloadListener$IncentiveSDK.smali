.class final Lccsansan/au/addDownloadListener$IncentiveSDK;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/au/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic addDownloadListener:[Ljava/lang/String;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic getDownloadingRecordByUrl:Ljava/lang/String;

.field final synthetic removeDownloadListener:I

.field final synthetic unifiedDownload:Lccsanandroid/content/Context;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/au/addDownloadListener$IncentiveSDK;->unifiedDownload:Lccsanandroid/content/Context;

    iput-object p2, p0, Lccsansan/au/addDownloadListener$IncentiveSDK;->IncentiveDownloadUtils:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/au/addDownloadListener$IncentiveSDK;->getDownloadingList:Ljava/lang/String;

    iput-object p4, p0, Lccsansan/au/addDownloadListener$IncentiveSDK;->addDownloadListener:[Ljava/lang/String;

    iput p5, p0, Lccsansan/au/addDownloadListener$IncentiveSDK;->removeDownloadListener:I

    iput-object p6, p0, Lccsansan/au/addDownloadListener$IncentiveSDK;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 7

    .line 1
    invoke-static {}, Lccsansan/bw/toString;->unifiedDownload()Ljava/lang/String;

    move-result-object v6

    .line 2
    iget-object v0, p0, Lccsansan/au/addDownloadListener$IncentiveSDK;->unifiedDownload:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsansan/au/addDownloadListener$IncentiveSDK;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v2, p0, Lccsansan/au/addDownloadListener$IncentiveSDK;->getDownloadingList:Ljava/lang/String;

    iget-object v3, p0, Lccsansan/au/addDownloadListener$IncentiveSDK;->addDownloadListener:[Ljava/lang/String;

    iget v4, p0, Lccsansan/au/addDownloadListener$IncentiveSDK;->removeDownloadListener:I

    iget-object v5, p0, Lccsansan/au/addDownloadListener$IncentiveSDK;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lccsansan/au/addDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
