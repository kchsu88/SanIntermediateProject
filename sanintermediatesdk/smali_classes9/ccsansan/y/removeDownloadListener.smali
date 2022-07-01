.class public final Lccsansan/y/removeDownloadListener;
.super Lccsansan/y/unifiedDownload;
.source ""


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p4}, Lccsansan/y/unifiedDownload;-><init>(ZZ)V

    .line 2
    invoke-static {}, Lccsansan/y/IncentiveDownloadUtils;->addDownloadListener()Lccsansan/y/IncentiveDownloadUtils;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lccsansan/y/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static removeDownloadListener(Lccsansan/y/unifiedDownload;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lccsansan/y/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/y/unifiedDownload;)V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-static {}, Lccsansan/y/IncentiveDownloadUtils;->addDownloadListener()Lccsansan/y/IncentiveDownloadUtils;

    move-result-object v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lccsansan/y/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-static {}, Lccsansan/y/IncentiveDownloadUtils;->addDownloadListener()Lccsansan/y/IncentiveDownloadUtils;

    move-result-object v0

    const-wide/16 v3, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lccsansan/y/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public unifiedDownload()V
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/y/IncentiveDownloadUtils;->addDownloadListener()Lccsansan/y/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/y/IncentiveDownloadUtils;->getDownloadingList()V

    return-void
.end method

.method public unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lccsansan/y/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lccsansan/y/IncentiveDownloadUtils;->addDownloadListener()Lccsansan/y/IncentiveDownloadUtils;

    move-result-object p1

    invoke-virtual {p1, p2}, Lccsansan/y/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)V

    return-void
.end method
