.class public Lccsansan/dg/getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/dg/IncentiveDownloadUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(I)V
    .locals 0

    return-void
.end method

.method public IncentiveDownloadUtils(Lccsansan/dd/removeDownloadListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->getThumbPathByRecord()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lccsansan/cy/pause;->VIDEO:Lccsansan/cy/pause;

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lccsansan/cy/deleteDownList;->addDownloadListener(Ljava/util/List;Lccsansan/cy/pause;Ljava/lang/String;)V

    return-void
.end method

.method public IncentiveDownloadUtils(Lccsansan/dd/removeDownloadListener;II)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->getDownloadedList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lccsansan/cy/deleteDownList;->addDownloadListener(Ljava/util/List;ILjava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object v6

    const-string v7, "item"

    const-string v8, "half"

    move v9, p3

    invoke-static/range {v2 .. v9}, Lccsansan/bn/pause;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public IncentiveDownloadUtils(Lccsansan/dd/removeDownloadListener;IIIII)V
    .locals 10

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    move v2, p2

    int-to-long v2, v2

    move v4, p3

    int-to-long v4, v4

    move v6, p4

    int-to-long v6, v6

    move v8, p5

    move/from16 v9, p6

    invoke-static/range {v0 .. v9}, Lccsansan/bn/pause;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;JJJII)V

    :cond_0
    return-void
.end method

.method public addDownloadListener(Lccsansan/dd/removeDownloadListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->trackReportShow()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lccsansan/cy/pause;->VIDEO:Lccsansan/cy/pause;

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lccsansan/cy/deleteDownList;->addDownloadListener(Ljava/util/List;Lccsansan/cy/pause;Ljava/lang/String;)V

    return-void
.end method

.method public addDownloadListener(Lccsansan/dd/removeDownloadListener;Ljava/lang/String;JLjava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move-object v4, p5

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lccsansan/bn/pause;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 8
    :cond_0
    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->IncentiveSDK()Ljava/util/List;

    move-result-object p2

    sget-object p3, Lccsansan/cy/pause;->VIDEO:Lccsansan/cy/pause;

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    const-string p4, "ERRORCODE"

    invoke-static {p2, p3, p1, p4, p5}, Lccsansan/cy/deleteDownList;->IncentiveDownloadUtils(Ljava/util/List;Lccsansan/cy/pause;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deleteDownItem(Lccsansan/dd/removeDownloadListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->deleteDownList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lccsansan/cy/pause;->VIDEO:Lccsansan/cy/pause;

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lccsansan/cy/deleteDownList;->addDownloadListener(Ljava/util/List;Lccsansan/cy/pause;Ljava/lang/String;)V

    return-void
.end method

.method public getDownloadStatusByUrl(Lccsansan/dd/removeDownloadListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->getDownloadingCount()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lccsansan/cy/pause;->VIDEO:Lccsansan/cy/pause;

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lccsansan/cy/deleteDownList;->addDownloadListener(Ljava/util/List;Lccsansan/cy/pause;Ljava/lang/String;)V

    return-void
.end method

.method public getDownloadingList()V
    .locals 0

    return-void
.end method

.method public getDownloadingList(Lccsansan/dd/removeDownloadListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->pause()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lccsansan/cy/pause;->VIDEO:Lccsansan/cy/pause;

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lccsansan/cy/deleteDownList;->addDownloadListener(Ljava/util/List;Lccsansan/cy/pause;Ljava/lang/String;)V

    return-void
.end method

.method public getDownloadingList(Lccsansan/dd/removeDownloadListener;I)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lccsansan/cy/deleteDownList;->addDownloadListener(Ljava/util/List;ILjava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object v7

    const-string v8, "item"

    const-string v9, "start"

    move v10, p2

    invoke-static/range {v3 .. v10}, Lccsansan/bn/pause;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public getDownloadingList(Lccsansan/dd/removeDownloadListener;II)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->getDownloadedRecordByUrl()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lccsansan/cy/deleteDownList;->addDownloadListener(Ljava/util/List;ILjava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object v6

    const-string v7, "item"

    const-string v8, "quarter"

    move v9, p3

    invoke-static/range {v2 .. v9}, Lccsansan/bn/pause;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public removeDownloadListener(Lccsansan/dd/removeDownloadListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->getDownloadedCount()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lccsansan/cy/pause;->VIDEO:Lccsansan/cy/pause;

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lccsansan/cy/deleteDownList;->addDownloadListener(Ljava/util/List;Lccsansan/cy/pause;Ljava/lang/String;)V

    return-void
.end method

.method public removeDownloadListener(Lccsansan/dd/removeDownloadListener;II)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->deleteDownItem()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lccsansan/cy/deleteDownList;->addDownloadListener(Ljava/util/List;ILjava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object v6

    const-string v7, "item"

    const-string v8, "threequarter"

    move v9, p3

    invoke-static/range {v2 .. v9}, Lccsansan/bn/pause;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public unifiedDownload(Lccsansan/dd/removeDownloadListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->resume()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lccsansan/cy/pause;->VIDEO:Lccsansan/cy/pause;

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lccsansan/cy/deleteDownList;->addDownloadListener(Ljava/util/List;Lccsansan/cy/pause;Ljava/lang/String;)V

    return-void
.end method

.method public unifiedDownload(Lccsansan/dd/removeDownloadListener;I)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->addDownloadListener()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lccsansan/cy/deleteDownList;->addDownloadListener(Ljava/util/List;ILjava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object v7

    const-string v8, "item"

    const-string v9, "play"

    move v10, p2

    invoke-static/range {v3 .. v10}, Lccsansan/bn/pause;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public unifiedDownload(Lccsansan/dd/removeDownloadListener;II)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->getDownloadStatusByUrl()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lccsansan/cy/deleteDownList;->addDownloadListener(Ljava/util/List;ILjava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lccsansan/dd/removeDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object v6

    const-string v7, "item"

    const-string v8, "complete"

    move v9, p3

    invoke-static/range {v2 .. v9}, Lccsansan/bn/pause;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
