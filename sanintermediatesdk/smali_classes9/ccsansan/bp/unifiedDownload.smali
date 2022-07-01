.class public abstract Lccsansan/bp/unifiedDownload;
.super Lccsanandroid/content/BroadcastReceiver;
.source ""


# instance fields
.field removeDownloadListener:Lccsanandroid/content/IntentFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadingList()Lccsanandroid/content/IntentFilter;
    .locals 1

    .line 18
    iget-object v0, p0, Lccsansan/bp/unifiedDownload;->removeDownloadListener:Lccsanandroid/content/IntentFilter;

    return-object v0
.end method

.method removeDownloadListener(Lccsancom/san/convert/database/ConvertIntent;Lccsansan/bh/IncentiveDownloadUtils;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/getMinIntervalToReturn;->removeDownloadListener(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsansan/bw/getMinIntervalToReturn;->addDownloadListener(Ljava/lang/String;)J

    move-result-wide v2

    .line 3
    invoke-virtual {p1, v0, v1}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingList(J)V

    .line 4
    invoke-virtual {p1, v2, v3}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedRecordByUrl(J)V

    .line 5
    sget-object v0, Lccsancom/san/convert/database/addDownloadListener;->AZ_SUCCESS:Lccsancom/san/convert/database/addDownloadListener;

    invoke-virtual {v0}, Lccsancom/san/convert/database/addDownloadListener;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingCount(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lccsancom/san/convert/database/TaskDatabase;->addDownloadListener()Lccsancom/san/convert/database/TaskDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/convert/database/TaskDatabase;->unifiedDownload()Lccsancom/san/convert/database/getDownloadingList;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/san/convert/database/getDownloadingList;->removeDownloadListener(Lccsancom/san/convert/database/ConvertIntent;)V

    .line 8
    invoke-static {p1}, Lccsansan/bh/getDownloadingList;->unifiedDownload(Lccsancom/san/convert/database/ConvertIntent;)V

    .line 12
    invoke-static {}, Lccsancom/san/az/unifiedDownload;->deleteDownList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lccsansan/bp/unifiedDownload;->removeDownloadListener(Ljava/lang/String;Lccsansan/bh/IncentiveDownloadUtils;)V

    goto :goto_0

    :cond_0
    nop

    .line 15
    const-string v0, "BroadcastProcess"

    const-string v1, "active app by original"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p1, p2}, Lccsansan/bp/unifiedDownload;->unifiedDownload(Lccsancom/san/convert/database/ConvertIntent;Lccsansan/bh/IncentiveDownloadUtils;)V

    :goto_0
    return-void
.end method

.method protected removeDownloadListener(Ljava/lang/String;Lccsansan/bh/IncentiveDownloadUtils;)V
    .locals 9

    .line 16
    const-string v0, "BroadcastProcess"

    const-string v1, "active app by launch-sdk"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Lccsansan/bh/IncentiveDownloadUtils;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "Open"

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lccsansan/aa/removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method unifiedDownload(Lccsancom/san/convert/database/ConvertIntent;Lccsansan/bh/IncentiveDownloadUtils;)V
    .locals 1

    .line 1
    new-instance v0, Lccsansan/bs/removeDownloadListener$addDownloadListener;

    invoke-direct {v0}, Lccsansan/bs/removeDownloadListener$addDownloadListener;-><init>()V

    .line 2
    invoke-virtual {v0, p2}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->removeDownloadListener(Lccsansan/bh/IncentiveDownloadUtils;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p2

    check-cast p2, Lccsansan/bs/removeDownloadListener$addDownloadListener;

    .line 4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Lccsansan/bs/removeDownloadListener$addDownloadListener;->unifiedDownload(Ljava/lang/Boolean;)Lccsansan/bs/removeDownloadListener$addDownloadListener;

    move-result-object p2

    .line 5
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p2

    check-cast p2, Lccsansan/bs/removeDownloadListener$addDownloadListener;

    .line 6
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->unifiedDownload(Ljava/lang/String;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p2

    check-cast p2, Lccsansan/bs/removeDownloadListener$addDownloadListener;

    .line 7
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener()I

    move-result v0

    invoke-virtual {p2, v0}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->addDownloadListener(I)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p2

    check-cast p2, Lccsansan/bs/removeDownloadListener$addDownloadListener;

    .line 8
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingRecordByUrl()Z

    move-result v0

    invoke-virtual {p2, v0}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->unifiedDownload(Z)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p2

    check-cast p2, Lccsansan/bs/removeDownloadListener$addDownloadListener;

    .line 9
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p2

    check-cast p2, Lccsansan/bs/removeDownloadListener$addDownloadListener;

    .line 10
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->pause()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->addDownloadListener(Ljava/lang/String;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p2

    check-cast p2, Lccsansan/bs/removeDownloadListener$addDownloadListener;

    .line 11
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->deleteDownList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->getDownloadedList(Ljava/lang/String;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p2

    check-cast p2, Lccsansan/bs/removeDownloadListener$addDownloadListener;

    .line 12
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedCount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->deleteDownItem(Ljava/lang/String;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p2

    check-cast p2, Lccsansan/bs/removeDownloadListener$addDownloadListener;

    .line 13
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->trackReportClick()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->getDownloadingRecordByUrl(Ljava/lang/String;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p1

    check-cast p1, Lccsansan/bs/removeDownloadListener$addDownloadListener;

    .line 14
    invoke-virtual {p1}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->deleteDownItem()Lccsansan/bs/getDownloadingRecordByUrl;

    move-result-object p1

    check-cast p1, Lccsansan/bs/removeDownloadListener;

    .line 15
    invoke-static {}, Lccsansan/bh/addDownloadListener;->unifiedDownload()Lccsansan/bh/addDownloadListener;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsansan/bh/addDownloadListener;->addDownloadListener(Lccsansan/bs/getDownloadingRecordByUrl;)V

    return-void
.end method
