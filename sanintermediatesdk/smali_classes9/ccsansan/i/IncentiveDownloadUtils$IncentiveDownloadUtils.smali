.class Lccsansan/i/IncentiveDownloadUtils$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/i/getDownloadingList$unifiedDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/i/IncentiveDownloadUtils;->resolveUrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsansan/i/IncentiveDownloadUtils;


# direct methods
.method constructor <init>(Lccsansan/i/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/i/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/i/IncentiveDownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/i/IncentiveDownloadUtils;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsansan/i/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsansan/i/IncentiveDownloadUtils;Z)Z

    .line 2
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/i/IncentiveDownloadUtils;

    const-string v1, "603"

    invoke-virtual {v0, v1}, Lccsansan/i/addDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    return-void
.end method

.method public addDownloadListener()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/i/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/i/IncentiveDownloadUtils;

    const-string v1, "companionView"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lccsansan/i/IncentiveDownloadUtils;->addDownloadListener(Lccsansan/i/IncentiveDownloadUtils;Ljava/lang/String;ZZ)V

    return-void
.end method
