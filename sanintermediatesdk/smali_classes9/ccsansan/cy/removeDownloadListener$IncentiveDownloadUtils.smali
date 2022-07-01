.class Lccsansan/cy/removeDownloadListener$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cy/removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic addDownloadListener:Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic removeDownloadListener:J

.field final synthetic unifiedDownload:Lccsansan/cy/removeDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/cy/removeDownloadListener;Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cy/removeDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/cy/removeDownloadListener;

    iput-object p2, p0, Lccsansan/cy/removeDownloadListener$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;

    iput-wide p3, p0, Lccsansan/cy/removeDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:J

    iput-object p5, p0, Lccsansan/cy/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    iput-object p6, p0, Lccsansan/cy/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDownloadListener(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object p1, p0, Lccsansan/cy/removeDownloadListener$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, v0}, Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;->a(Z)V

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lccsansan/cy/removeDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:J

    sub-long v9, v1, v3

    .line 4
    sget-object v5, Lccsansan/cy/pause;->CLICK:Lccsansan/cy/pause;

    iget-object p1, p0, Lccsansan/cy/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-static {p1}, Lccsansan/cy/deleteDownList;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    iget-object v11, p0, Lccsansan/cy/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object p1, p0, Lccsansan/cy/removeDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/cy/removeDownloadListener;

    invoke-static {p1}, Lccsansan/cy/removeDownloadListener;->removeDownloadListener(Lccsansan/cy/removeDownloadListener;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 v12, p1, 0x1

    iget-object v13, p0, Lccsansan/cy/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    const-string v7, "failed"

    invoke-static/range {v5 .. v13}, Lccsansan/l/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/cy/pause;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;)V
    .locals 13

    .line 1
    iget-object p1, p0, Lccsansan/cy/removeDownloadListener$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;->a(Z)V

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lccsansan/cy/removeDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:J

    sub-long v8, v0, v2

    .line 4
    sget-object v4, Lccsansan/cy/pause;->CLICK:Lccsansan/cy/pause;

    iget-object p1, p0, Lccsansan/cy/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-static {p1}, Lccsansan/cy/deleteDownList;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    iget-object v10, p0, Lccsansan/cy/removeDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object p1, p0, Lccsansan/cy/removeDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/cy/removeDownloadListener;

    invoke-static {p1}, Lccsansan/cy/removeDownloadListener;->removeDownloadListener(Lccsansan/cy/removeDownloadListener;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 v11, p1, 0x1

    iget-object v12, p0, Lccsansan/cy/removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    const-string v6, "success"

    invoke-static/range {v4 .. v12}, Lccsansan/l/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/cy/pause;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
