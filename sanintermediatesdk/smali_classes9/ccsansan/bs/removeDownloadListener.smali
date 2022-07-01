.class public final Lccsansan/bs/removeDownloadListener;
.super Lccsansan/bs/getDownloadingRecordByUrl;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/bs/removeDownloadListener$addDownloadListener;
    }
.end annotation


# direct methods
.method protected constructor <init>(Lccsansan/bs/removeDownloadListener$addDownloadListener;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->getDownloadingList:Ljava/util/UUID;

    iget-object p1, p1, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-direct {p0, v0, p1}, Lccsansan/bs/getDownloadingRecordByUrl;-><init>(Ljava/util/UUID;Lccsancom/san/convert/database/ConvertIntent;)V

    return-void
.end method
