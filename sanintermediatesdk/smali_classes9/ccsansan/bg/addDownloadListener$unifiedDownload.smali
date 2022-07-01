.class Lccsansan/bg/addDownloadListener$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/bm/getDownloadingRecordByUrl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bg/addDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILccsansan/an/removeDownloadListener;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/an/removeDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/bg/addDownloadListener;Lccsansan/an/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/bg/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/an/removeDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsansan/bg/addDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/an/removeDownloadListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lccsansan/an/removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Hybrid"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
