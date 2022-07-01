.class final Lccsansan/au/addDownloadListener$resume;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/au/addDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/m/getDownloadedList;

.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic removeDownloadListener:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/m/getDownloadedList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/au/addDownloadListener$resume;->removeDownloadListener:Ljava/lang/String;

    iput-object p2, p0, Lccsansan/au/addDownloadListener$resume;->getDownloadingList:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/au/addDownloadListener$resume;->addDownloadListener:Ljava/lang/String;

    iput-object p4, p0, Lccsansan/au/addDownloadListener$resume;->IncentiveDownloadUtils:Lccsansan/m/getDownloadedList;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsansan/au/addDownloadListener$resume;->removeDownloadListener:Ljava/lang/String;

    iget-object v1, p0, Lccsansan/au/addDownloadListener$resume;->getDownloadingList:Ljava/lang/String;

    iget-object v2, p0, Lccsansan/au/addDownloadListener$resume;->addDownloadListener:Ljava/lang/String;

    iget-object v3, p0, Lccsansan/au/addDownloadListener$resume;->IncentiveDownloadUtils:Lccsansan/m/getDownloadedList;

    invoke-static {v0, v1, v2, v3}, Lccsansan/au/addDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/m/getDownloadedList;)V

    return-void
.end method
