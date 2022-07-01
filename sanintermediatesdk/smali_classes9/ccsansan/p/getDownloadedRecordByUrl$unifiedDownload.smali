.class Lccsansan/p/getDownloadedRecordByUrl$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/p/getDownloadedRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/m/removeDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic addDownloadListener:J

.field final synthetic deleteDownItem:Lccsansan/p/getDownloadedRecordByUrl;

.field final synthetic getDownloadingList:Lccsansan/m/removeDownloadListener;

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Lccsanandroid/content/Context;


# direct methods
.method constructor <init>(Lccsansan/p/getDownloadedRecordByUrl;Lccsanandroid/content/Context;Lccsansan/m/removeDownloadListener;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/p/getDownloadedRecordByUrl$unifiedDownload;->deleteDownItem:Lccsansan/p/getDownloadedRecordByUrl;

    iput-object p2, p0, Lccsansan/p/getDownloadedRecordByUrl$unifiedDownload;->unifiedDownload:Lccsanandroid/content/Context;

    iput-object p3, p0, Lccsansan/p/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList:Lccsansan/m/removeDownloadListener;

    iput-wide p4, p0, Lccsansan/p/getDownloadedRecordByUrl$unifiedDownload;->addDownloadListener:J

    iput-object p6, p0, Lccsansan/p/getDownloadedRecordByUrl$unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    iput-object p7, p0, Lccsansan/p/getDownloadedRecordByUrl$unifiedDownload;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDownloadListener(Ljava/lang/String;)V
    .locals 13

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lccsansan/p/getDownloadedRecordByUrl$unifiedDownload;->addDownloadListener:J

    sub-long v8, v0, v2

    .line 2
    sget-object v4, Lccsansan/cy/pause;->CLICK:Lccsansan/cy/pause;

    iget-object p1, p0, Lccsansan/p/getDownloadedRecordByUrl$unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    invoke-static {p1}, Lccsansan/cy/deleteDownList;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lccsansan/p/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList:Lccsansan/m/removeDownloadListener;

    iget-object v10, p1, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object p1, p0, Lccsansan/p/getDownloadedRecordByUrl$unifiedDownload;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 v11, p1, 0x1

    iget-object v12, p0, Lccsansan/p/getDownloadedRecordByUrl$unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    const-string v6, "failed"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v12}, Lccsansan/l/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/cy/pause;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lccsansan/p/getDownloadedRecordByUrl$unifiedDownload;->deleteDownItem:Lccsansan/p/getDownloadedRecordByUrl;

    iget-object v1, p0, Lccsansan/p/getDownloadedRecordByUrl$unifiedDownload;->unifiedDownload:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsansan/p/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList:Lccsansan/m/removeDownloadListener;

    invoke-static {v0, v1, v2, p1}, Lccsansan/p/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Lccsansan/p/getDownloadedRecordByUrl;Lccsanandroid/content/Context;Lccsansan/m/removeDownloadListener;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lccsansan/p/getDownloadedRecordByUrl$unifiedDownload;->addDownloadListener:J

    sub-long v8, v0, v2

    .line 3
    sget-object v4, Lccsansan/cy/pause;->CLICK:Lccsansan/cy/pause;

    iget-object p1, p0, Lccsansan/p/getDownloadedRecordByUrl$unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    invoke-static {p1}, Lccsansan/cy/deleteDownList;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lccsansan/p/getDownloadedRecordByUrl$unifiedDownload;->getDownloadingList:Lccsansan/m/removeDownloadListener;

    iget-object v10, p1, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object p1, p0, Lccsansan/p/getDownloadedRecordByUrl$unifiedDownload;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 v11, p1, 0x1

    iget-object v12, p0, Lccsansan/p/getDownloadedRecordByUrl$unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    const-string v6, "success"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v12}, Lccsansan/l/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/cy/pause;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
