.class final Lccsancom/incentive/api/IncentiveSDK$1;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/incentive/api/IncentiveSDK;->IncentiveDownloadUtils(Ljava/lang/String;Lccsansan/cy/pause;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/cy/pause;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lccsansan/cy/pause;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/incentive/api/IncentiveSDK$1;->unifiedDownload:Ljava/lang/String;

    iput-object p2, p0, Lccsancom/incentive/api/IncentiveSDK$1;->IncentiveDownloadUtils:Lccsansan/cy/pause;

    iput-object p3, p0, Lccsancom/incentive/api/IncentiveSDK$1;->getDownloadingList:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsancom/incentive/api/IncentiveSDK$1;->unifiedDownload:Ljava/lang/String;

    invoke-static {}, Lccsansan/bw/toString;->unifiedDownload()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/incentive/api/IncentiveSDK$1;->IncentiveDownloadUtils:Lccsansan/cy/pause;

    iget-object v3, p0, Lccsancom/incentive/api/IncentiveSDK$1;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lccsansan/cy/deleteDownList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Lccsansan/cy/pause;Ljava/lang/String;)Z

    return-void
.end method
