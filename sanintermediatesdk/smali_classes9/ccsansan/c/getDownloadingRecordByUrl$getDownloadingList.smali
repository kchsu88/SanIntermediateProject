.class final Lccsansan/c/getDownloadingRecordByUrl$getDownloadingList;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/c/getDownloadingRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic removeDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Lccsanandroid/content/Context;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/c/getDownloadingRecordByUrl$getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    iput-object p2, p0, Lccsansan/c/getDownloadingRecordByUrl$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/c/getDownloadingRecordByUrl$getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsansan/c/getDownloadingRecordByUrl$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsansan/c/removeDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
