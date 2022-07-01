.class public final Lccsansan/bs/unifiedDownload;
.super Lccsansan/bs/getDownloadingRecordByUrl;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/bs/unifiedDownload$unifiedDownload;
    }
.end annotation


# direct methods
.method private constructor <init>(Lccsansan/bs/unifiedDownload$unifiedDownload;)V
    .locals 1

    .line 2
    iget-object v0, p1, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->getDownloadingList:Ljava/util/UUID;

    iget-object p1, p1, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-direct {p0, v0, p1}, Lccsansan/bs/getDownloadingRecordByUrl;-><init>(Ljava/util/UUID;Lccsancom/san/convert/database/ConvertIntent;)V

    return-void
.end method

.method synthetic constructor <init>(Lccsansan/bs/unifiedDownload$unifiedDownload;Lccsansan/bs/unifiedDownload$getDownloadingList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsansan/bs/unifiedDownload;-><init>(Lccsansan/bs/unifiedDownload$unifiedDownload;)V

    return-void
.end method
