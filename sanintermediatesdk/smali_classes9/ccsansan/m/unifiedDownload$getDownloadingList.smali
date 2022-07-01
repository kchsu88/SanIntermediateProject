.class Lccsansan/m/unifiedDownload$getDownloadingList;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsansan/m/getDownloadedList;Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/m/unifiedDownload;

.field final synthetic getDownloadingList:Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;

.field final synthetic unifiedDownload:Lccsansan/m/getDownloadedList;


# direct methods
.method constructor <init>(Lccsansan/m/unifiedDownload;Lccsansan/m/getDownloadedList;Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/m/unifiedDownload$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/m/unifiedDownload;

    iput-object p2, p0, Lccsansan/m/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/m/getDownloadedList;

    iput-object p3, p0, Lccsansan/m/unifiedDownload$getDownloadingList;->getDownloadingList:Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/m/unifiedDownload$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/m/unifiedDownload;

    iget-object v1, p0, Lccsansan/m/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/m/getDownloadedList;

    iget-object v2, p0, Lccsansan/m/unifiedDownload$getDownloadingList;->getDownloadingList:Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;

    invoke-static {v0, v1, v2}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/unifiedDownload;Lccsansan/m/getDownloadedList;Lccsansan/m/unifiedDownload$IncentiveDownloadUtils;)Z

    return-void
.end method
