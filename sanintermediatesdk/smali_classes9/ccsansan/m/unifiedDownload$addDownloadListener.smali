.class Lccsansan/m/unifiedDownload$addDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/m/unifiedDownload;

.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:J


# direct methods
.method constructor <init>(Lccsansan/m/unifiedDownload;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/m/unifiedDownload$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/m/unifiedDownload;

    iput-object p2, p0, Lccsansan/m/unifiedDownload$addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/m/unifiedDownload$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    iput-wide p4, p0, Lccsansan/m/unifiedDownload$addDownloadListener;->unifiedDownload:J

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 7

    .line 1
    iget-object v0, p0, Lccsansan/m/unifiedDownload$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/m/unifiedDownload;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2
    iget-object v0, p0, Lccsansan/m/unifiedDownload$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/m/unifiedDownload;

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/unifiedDownload;)Lccsansan/m/deleteDownItem;

    move-result-object v1

    iget-object v3, p0, Lccsansan/m/unifiedDownload$addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iget-object v4, p0, Lccsansan/m/unifiedDownload$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-wide v5, p0, Lccsansan/m/unifiedDownload$addDownloadListener;->unifiedDownload:J

    invoke-virtual/range {v1 .. v6}, Lccsansan/m/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)Z

    return-void
.end method
