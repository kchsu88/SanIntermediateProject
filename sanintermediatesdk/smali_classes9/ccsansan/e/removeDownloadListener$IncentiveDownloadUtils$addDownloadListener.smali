.class Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils;->handleMessage(Lccsanandroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic removeDownloadListener:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils$addDownloadListener;->addDownloadListener:Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils;

    iput-object p2, p0, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils$addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDownloadListener(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils$addDownloadListener;->addDownloadListener:Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils;

    iget-object v0, v0, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/e/removeDownloadListener;

    iget-object v1, p0, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils$addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iget-object v2, p0, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lccsansan/e/removeDownloadListener;->removeDownloadListener(Lccsansan/e/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
