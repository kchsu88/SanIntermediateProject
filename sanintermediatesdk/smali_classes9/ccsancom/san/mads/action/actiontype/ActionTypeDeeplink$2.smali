.class Lccsancom/san/mads/action/actiontype/ActionTypeDeeplink$2;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/action/actiontype/ActionTypeDeeplink;->getDownloadingList(Ljava/lang/String;Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic removeDownloadListener:Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsancom/san/mads/action/actiontype/ActionTypeDeeplink;Ljava/lang/String;Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsancom/san/mads/action/actiontype/ActionTypeDeeplink$2;->unifiedDownload:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/san/mads/action/actiontype/ActionTypeDeeplink$2;->removeDownloadListener:Lccsansan/ck/getDownloadedRecordByUrl$unifiedDownload;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lccsansan/cy/removeDownloadListener;->addDownloadListener()Lccsansan/cy/removeDownloadListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/mads/action/actiontype/ActionTypeDeeplink$2;->unifiedDownload:Ljava/lang/String;

    new-instance v2, Lccsancom/san/mads/action/actiontype/ActionTypeDeeplink$2$1;

    invoke-direct {v2, p0}, Lccsancom/san/mads/action/actiontype/ActionTypeDeeplink$2$1;-><init>(Lccsancom/san/mads/action/actiontype/ActionTypeDeeplink$2;)V

    .line 6
    invoke-static {}, Lccsansan/cy/removeDownloadListener;->addDownloadListener()Lccsansan/cy/removeDownloadListener;

    move-result-object v3

    invoke-virtual {v3}, Lccsansan/cy/removeDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lccsansan/cy/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Lccsansan/cy/removeDownloadListener$deleteDownItem;Ljava/lang/String;)V

    return-void
.end method
