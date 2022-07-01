.class Lccsansan/g/addDownloadListener$IncentiveDownloadUtils$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/dt/unifiedDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/g/addDownloadListener$IncentiveDownloadUtils;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/util/List;

.field final synthetic getDownloadingList:Ljava/lang/StringBuffer;

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:J


# direct methods
.method constructor <init>(Lccsansan/g/addDownloadListener$IncentiveDownloadUtils;JLjava/lang/String;Ljava/util/List;Ljava/lang/StringBuffer;)V
    .locals 0

    .line 1
    iput-wide p2, p0, Lccsansan/g/addDownloadListener$IncentiveDownloadUtils$unifiedDownload;->unifiedDownload:J

    iput-object p4, p0, Lccsansan/g/addDownloadListener$IncentiveDownloadUtils$unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    iput-object p5, p0, Lccsansan/g/addDownloadListener$IncentiveDownloadUtils$unifiedDownload;->IncentiveDownloadUtils:Ljava/util/List;

    iput-object p6, p0, Lccsansan/g/addDownloadListener$IncentiveDownloadUtils$unifiedDownload;->getDownloadingList:Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDownloadListener(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lccsansan/g/addDownloadListener$IncentiveDownloadUtils$unifiedDownload;->unifiedDownload:J

    sub-long v14, v2, v4

    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    goto :goto_1

    :sswitch_0
    const-string v2, "BUILD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_2

    :sswitch_1
    const-string v2, "Network"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_2

    :sswitch_2
    const-string v2, "Server"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :goto_1
    const/4 v1, -0x1

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 14
    sget-object v1, Lccsancom/san/ads/AdError;->UNKNOWN_ERROR:Lccsancom/san/ads/AdError;

    goto :goto_3

    .line 15
    :pswitch_0
    sget-object v1, Lccsancom/san/ads/AdError;->INTERNAL_ERROR:Lccsancom/san/ads/AdError;

    goto :goto_3

    .line 16
    :pswitch_1
    sget-object v1, Lccsancom/san/ads/AdError;->NETWORK_ERROR:Lccsancom/san/ads/AdError;

    goto :goto_3

    .line 19
    :pswitch_2
    sget-object v1, Lccsancom/san/ads/AdError;->SERVER_ERROR:Lccsancom/san/ads/AdError;

    .line 27
    :goto_3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsansan/cz/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 28
    iget-object v6, v0, Lccsansan/g/addDownloadListener$IncentiveDownloadUtils$unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v1}, Lccsancom/san/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v8

    iget-object v2, v0, Lccsansan/g/addDownloadListener$IncentiveDownloadUtils$unifiedDownload;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v2, v0, Lccsansan/g/addDownloadListener$IncentiveDownloadUtils$unifiedDownload;->getDownloadingList:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lccsancom/san/ads/AdError;->getErrorCode()I

    move-result v12

    const-string v7, "false"

    const-string v9, ""

    const-string v16, "advance"

    move-object/from16 v13, p2

    invoke-static/range {v6 .. v16}, Lccsansan/s/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;)V

    goto :goto_4

    .line 30
    :cond_3
    iget-object v2, v0, Lccsansan/g/addDownloadListener$IncentiveDownloadUtils$unifiedDownload;->getDownloadingList:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v0, Lccsansan/g/addDownloadListener$IncentiveDownloadUtils$unifiedDownload;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v1}, Lccsancom/san/ads/AdError;->getErrorCode()I

    move-result v11

    const/4 v6, 0x0

    const/4 v10, 0x0

    const-string v13, "advance"

    move-object v8, v9

    move-object/from16 v12, p2

    invoke-static/range {v6 .. v15}, Lccsansan/bn/getDownloadingRecordByUrl;->addDownloadListener(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;J)V

    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6c98e49d -> :sswitch_2
        -0x2ee60df2 -> :sswitch_1
        0x3c9ce4e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
