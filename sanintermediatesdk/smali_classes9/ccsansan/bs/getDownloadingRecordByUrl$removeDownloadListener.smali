.class public abstract Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/bs/getDownloadingRecordByUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "removeDownloadListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lccsansan/bs/getDownloadingRecordByUrl;",
        "B:",
        "Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field getDownloadingList:Ljava/util/UUID;

.field removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

.field unifiedDownload:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->getDownloadingList:Ljava/util/UUID;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->unifiedDownload:J

    .line 4
    invoke-virtual {p0}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->getDownloadingList()Lccsancom/san/convert/database/ConvertIntent;

    move-result-object v0

    iput-object v0, p0, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    .line 5
    invoke-direct {p0}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->addDownloadListener()V

    return-void
.end method

.method private addDownloadListener()V
    .locals 3

    .line 3
    iget-object v0, p0, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    iget-object v1, p0, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->getDownloadingList:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    iget-wide v1, p0, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->unifiedDownload:J

    invoke-virtual {v0, v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils(J)V

    .line 5
    iget-object v0, p0, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    iget-wide v1, p0, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->unifiedDownload:J

    invoke-virtual {v0, v1, v2}, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload(J)V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v0, p1}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->unifiedDownload()Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p1

    return-object p1
.end method

.method public addDownloadListener(I)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v0, p1}, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload(I)V

    .line 4
    invoke-virtual {p0}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->unifiedDownload()Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p1

    return-object p1
.end method

.method public addDownloadListener(Ljava/lang/String;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v0, p1}, Lccsancom/san/convert/database/ConvertIntent;->deleteDownItem(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->unifiedDownload()Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p1

    return-object p1
.end method

.method public deleteDownItem(Ljava/lang/String;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v0, p1}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedList(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->unifiedDownload()Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p1

    return-object p1
.end method

.method public deleteDownItem()Lccsansan/bs/getDownloadingRecordByUrl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->removeDownloadListener()Lccsansan/bs/getDownloadingRecordByUrl;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadedList(Ljava/lang/String;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v0, p1}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadStatusByUrl(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->unifiedDownload()Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadedRecordByUrl(Ljava/lang/String;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v0, p1}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingList(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->unifiedDownload()Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getDownloadingList()Lccsancom/san/convert/database/ConvertIntent;
.end method

.method public getDownloadingList(Ljava/lang/String;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v0, p1}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedRecordByUrl(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->unifiedDownload()Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadingRecordByUrl(Ljava/lang/String;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v0, p1}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingRecordByUrl(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->unifiedDownload()Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p1

    return-object p1
.end method

.method public removeDownloadListener(Ljava/lang/String;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v0, p1}, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->unifiedDownload()Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p1

    return-object p1
.end method

.method public removeDownloadListener(Lccsansan/bh/IncentiveDownloadUtils;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/bh/IncentiveDownloadUtils;",
            ")TB;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {p1}, Lccsansan/bh/IncentiveDownloadUtils;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsancom/san/convert/database/ConvertIntent;->pause(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->unifiedDownload()Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p1

    return-object p1
.end method

.method protected abstract removeDownloadListener()Lccsansan/bs/getDownloadingRecordByUrl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method protected abstract unifiedDownload()Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public unifiedDownload(Ljava/lang/String;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v0, p1}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->unifiedDownload()Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p1

    return-object p1
.end method

.method public unifiedDownload(Z)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v0, p1}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingList(Z)V

    .line 6
    invoke-virtual {p0}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->unifiedDownload()Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p1

    return-object p1
.end method
