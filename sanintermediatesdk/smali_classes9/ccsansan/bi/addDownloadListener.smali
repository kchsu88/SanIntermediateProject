.class public Lccsansan/bi/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static addDownloadListener:Ljava/lang/String; = "had_new_reserve"

.field private static getDownloadingList:Lccsansan/bw/AdError; = null

.field private static removeDownloadListener:Ljava/lang/String; = "pause_list"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getDownloadingList(Ljava/lang/String;)V
    .locals 3

    .line 5
    invoke-static {}, Lccsansan/bi/addDownloadListener;->unifiedDownload()Lccsansan/bw/AdError;

    move-result-object v0

    .line 6
    sget-object v1, Lccsansan/bi/addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lccsansan/bw/AdError;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 10
    :cond_1
    move-object p0, v1

    .line 13
    :goto_0
    sget-object v1, Lccsansan/bi/addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static removeDownloadListener(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {}, Lccsansan/bi/addDownloadListener;->unifiedDownload()Lccsansan/bw/AdError;

    move-result-object v0

    .line 2
    sget-object v1, Lccsansan/bi/addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lccsansan/bw/AdError;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ";"

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 10
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 13
    :goto_0
    sget-object p0, Lccsansan/bi/addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static unifiedDownload()Lccsansan/bw/AdError;
    .locals 3

    .line 1
    sget-object v0, Lccsansan/bi/addDownloadListener;->getDownloadingList:Lccsansan/bw/AdError;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "reserve_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lccsansan/bi/addDownloadListener;->getDownloadingList:Lccsansan/bw/AdError;

    .line 4
    :cond_0
    sget-object v0, Lccsansan/bi/addDownloadListener;->getDownloadingList:Lccsansan/bw/AdError;

    return-object v0
.end method

.method public static unifiedDownload(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Lccsansan/bi/addDownloadListener;->unifiedDownload()Lccsansan/bw/AdError;

    move-result-object v0

    .line 2
    sget-object v1, Lccsansan/bi/addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lccsansan/bw/AdError;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static unifiedDownload(Z)Z
    .locals 2

    .line 14
    invoke-static {}, Lccsansan/bi/addDownloadListener;->unifiedDownload()Lccsansan/bw/AdError;

    move-result-object v0

    .line 15
    sget-object v1, Lccsansan/bi/addDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
