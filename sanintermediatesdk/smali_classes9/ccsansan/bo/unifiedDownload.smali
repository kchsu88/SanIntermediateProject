.class public Lccsansan/bo/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static addDownloadListener(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lccsansan/bo/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/HashMap;

    move-result-object p0

    const-string p1, "WebView_Page_Start"

    invoke-static {v0, p1, p0}, Lccsansan/dl/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public static getDownloadingList(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lccsansan/bo/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/HashMap;

    move-result-object p0

    const-string p1, "WebView_Page_Finish"

    invoke-static {v0, p1, p0}, Lccsansan/dl/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public static removeDownloadListener(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lccsansan/bo/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/HashMap;

    move-result-object p0

    const-string p1, "WebView_Activity_Page_Out"

    invoke-static {v0, p1, p0}, Lccsansan/dl/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private static unifiedDownload(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    const-string v1, "portal"

    invoke-virtual {v0, v1, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 6
    const-string p0, "url"

    invoke-virtual {v0, p0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-wide/16 p0, 0x0

    cmp-long v1, p2, p0

    if-lez v1, :cond_2

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "duration"

    invoke-virtual {v0, p1, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public static unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 10
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Lccsansan/bo/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/HashMap;

    move-result-object p0

    const-string p1, "WebView_Activity_Page_In"

    invoke-static {v0, p1, p0}, Lccsansan/dl/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
