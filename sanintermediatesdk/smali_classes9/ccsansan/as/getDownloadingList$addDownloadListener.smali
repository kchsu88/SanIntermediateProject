.class Lccsansan/as/getDownloadingList$addDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/as/getDownloadingList;->unifiedDownload(Lccsansan/aj/getDownloadingList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/aj/getDownloadingList;

.field final synthetic unifiedDownload:Lccsansan/as/getDownloadingList;


# direct methods
.method constructor <init>(Lccsansan/as/getDownloadingList;Lccsansan/aj/getDownloadingList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/as/getDownloadingList$addDownloadListener;->unifiedDownload:Lccsansan/as/getDownloadingList;

    iput-object p2, p0, Lccsansan/as/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/as/getDownloadingList$addDownloadListener;->unifiedDownload:Lccsansan/as/getDownloadingList;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lccsansan/as/getDownloadingList$addDownloadListener;->unifiedDownload:Lccsansan/as/getDownloadingList;

    invoke-static {v1}, Lccsansan/as/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/as/getDownloadingList;)Lccsansan/as/addDownloadListener;

    move-result-object v1

    iget-object v2, p0, Lccsansan/as/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/aj/getDownloadingList;

    invoke-virtual {v1, v0, v2}, Lccsansan/as/addDownloadListener;->getDownloadingList(Lccsanandroid/database/sqlite/SQLiteDatabase;Lccsansan/aj/getDownloadingList;)Z

    return-void
.end method
