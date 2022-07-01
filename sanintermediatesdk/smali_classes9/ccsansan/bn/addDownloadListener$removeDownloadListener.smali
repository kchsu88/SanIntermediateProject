.class final Lccsansan/bn/addDownloadListener$removeDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bn/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic addDownloadListener:Z

.field final synthetic getDownloadStatusByUrl:Z

.field final synthetic getDownloadedList:I

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/bn/addDownloadListener$removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iput-object p2, p0, Lccsansan/bn/addDownloadListener$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/bn/addDownloadListener$removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    iput-object p4, p0, Lccsansan/bn/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    iput-boolean p5, p0, Lccsansan/bn/addDownloadListener$removeDownloadListener;->addDownloadListener:Z

    iput-boolean p6, p0, Lccsansan/bn/addDownloadListener$removeDownloadListener;->getDownloadStatusByUrl:Z

    iput p7, p0, Lccsansan/bn/addDownloadListener$removeDownloadListener;->getDownloadedList:I

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 7

    .line 1
    iget-object v0, p0, Lccsansan/bn/addDownloadListener$removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iget-object v1, p0, Lccsansan/bn/addDownloadListener$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    iget-object v2, p0, Lccsansan/bn/addDownloadListener$removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    iget-object v3, p0, Lccsansan/bn/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-boolean v4, p0, Lccsansan/bn/addDownloadListener$removeDownloadListener;->addDownloadListener:Z

    iget-boolean v5, p0, Lccsansan/bn/addDownloadListener$removeDownloadListener;->getDownloadStatusByUrl:Z

    iget v6, p0, Lccsansan/bn/addDownloadListener$removeDownloadListener;->getDownloadedList:I

    invoke-static/range {v0 .. v6}, Lccsansan/bn/addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method
