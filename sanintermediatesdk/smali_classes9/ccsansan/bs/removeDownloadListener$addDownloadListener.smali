.class public final Lccsansan/bs/removeDownloadListener$addDownloadListener;
.super Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/bs/removeDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "addDownloadListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener<",
        "Lccsansan/bs/removeDownloadListener;",
        "Lccsansan/bs/removeDownloadListener$addDownloadListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected IncentiveDownloadUtils()Lccsansan/bs/removeDownloadListener;
    .locals 1

    .line 1
    new-instance v0, Lccsansan/bs/removeDownloadListener;

    invoke-direct {v0, p0}, Lccsansan/bs/removeDownloadListener;-><init>(Lccsansan/bs/removeDownloadListener$addDownloadListener;)V

    return-object v0
.end method

.method protected addDownloadListener()Lccsansan/bs/removeDownloadListener$addDownloadListener;
    .locals 0

    return-object p0
.end method

.method protected getDownloadingList()Lccsancom/san/convert/database/ConvertIntent;
    .locals 2

    .line 1
    new-instance v0, Lccsancom/san/convert/database/ConvertIntent;

    invoke-direct {v0}, Lccsancom/san/convert/database/ConvertIntent;-><init>()V

    .line 2
    sget-object v1, Lccsancom/san/convert/database/addDownloadListener;->ACTIVATE_PENDING:Lccsancom/san/convert/database/addDownloadListener;

    invoke-virtual {v1}, Lccsancom/san/convert/database/addDownloadListener;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingCount(Ljava/lang/String;)V

    .line 3
    const-string v1, "Open"

    invoke-virtual {v0, v1}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedCount(Ljava/lang/String;)V

    return-object v0
.end method

.method protected synthetic removeDownloadListener()Lccsansan/bs/getDownloadingRecordByUrl;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lccsansan/bs/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils()Lccsansan/bs/removeDownloadListener;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic unifiedDownload()Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lccsansan/bs/removeDownloadListener$addDownloadListener;->addDownloadListener()Lccsansan/bs/removeDownloadListener$addDownloadListener;

    move-result-object v0

    return-object v0
.end method

.method public final unifiedDownload(Ljava/lang/Boolean;)Lccsansan/bs/removeDownloadListener$addDownloadListener;
    .locals 1

    .line 2
    iget-object v0, p0, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener(Z)V

    .line 3
    invoke-virtual {p0}, Lccsansan/bs/removeDownloadListener$addDownloadListener;->addDownloadListener()Lccsansan/bs/removeDownloadListener$addDownloadListener;

    move-result-object p1

    return-object p1
.end method
