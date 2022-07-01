.class Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/k/addDownloadListener$unifiedDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/action/IncentiveDownloadUtils;->addDownloadListener(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsansan/af/removeDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/af/removeDownloadListener;

.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Lccsanandroid/content/Context;


# direct methods
.method constructor <init>(Lccsancom/san/action/IncentiveDownloadUtils;Lccsansan/af/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/af/removeDownloadListener;

    iput-object p3, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->getDownloadingList:Ljava/lang/String;

    iput-object p4, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->addDownloadListener:Ljava/lang/String;

    iput-object p5, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->unifiedDownload:Lccsanandroid/content/Context;

    iput-object p6, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadingList(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    iget-object p2, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/af/removeDownloadListener;

    if-eqz p2, :cond_0

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/af/removeDownloadListener;

    iget-object p2, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->addDownloadListener:Ljava/lang/String;

    iget-object p3, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->getDownloadingList:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lccsansan/af/removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 5
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/af/removeDownloadListener;

    iget-object p2, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->addDownloadListener:Ljava/lang/String;

    iget-object p3, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->getDownloadingList:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lccsansan/af/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeDownloadListener(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 7

    .line 1
    iget-object p2, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/af/removeDownloadListener;

    if-eqz p2, :cond_0

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/af/removeDownloadListener;

    iget-object v1, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->addDownloadListener:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->getDownloadingList:Ljava/lang/String;

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lccsansan/af/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;JJ)V

    :cond_0
    return-void
.end method

.method public removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 3
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/af/removeDownloadListener;

    iget-object p2, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->addDownloadListener:Ljava/lang/String;

    iget-object p3, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->getDownloadingList:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lccsansan/af/removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .line 7
    iget-object p2, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/af/removeDownloadListener;

    if-eqz p2, :cond_0

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    :try_start_0
    new-instance p1, Lccsansan/bw/AdError;

    iget-object p2, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-direct {p1, p2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    .line 10
    iget-object p2, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, p2}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance p2, Lccsanorg/json/JSONObject;

    invoke-direct {p2, p1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/af/removeDownloadListener;

    iget-object v1, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->addDownloadListener:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;->getDownloadingList:Ljava/lang/String;

    const-string p1, "total"

    invoke-virtual {p2, p1}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string p1, "completed"

    invoke-virtual {p2, p1}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-interface/range {v0 .. v6}, Lccsansan/af/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :cond_0
    :goto_0
    return-void
.end method
