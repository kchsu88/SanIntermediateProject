.class Lccsansan/p/getDownloadedRecordByUrl$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/p/getDownloadedRecordByUrl;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic removeDownloadListener:Lccsansan/p/getDownloadedRecordByUrl;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsansan/p/getDownloadedRecordByUrl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/p/getDownloadedRecordByUrl$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/p/getDownloadedRecordByUrl;

    iput-object p2, p0, Lccsansan/p/getDownloadedRecordByUrl$IncentiveDownloadUtils;->addDownloadListener:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/p/getDownloadedRecordByUrl$IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    iput-object p4, p0, Lccsansan/p/getDownloadedRecordByUrl$IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsansan/p/getDownloadedRecordByUrl$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/p/getDownloadedRecordByUrl;

    iget-object v1, p0, Lccsansan/p/getDownloadedRecordByUrl$IncentiveDownloadUtils;->addDownloadListener:Ljava/lang/String;

    iget-object v2, p0, Lccsansan/p/getDownloadedRecordByUrl$IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    iget-object v3, p0, Lccsansan/p/getDownloadedRecordByUrl$IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingList(Lccsansan/p/getDownloadedRecordByUrl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
