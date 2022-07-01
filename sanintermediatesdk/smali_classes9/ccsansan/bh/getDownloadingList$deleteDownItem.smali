.class final Lccsansan/bh/getDownloadingList$deleteDownItem;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bh/getDownloadingList;->unifiedDownload(Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Lccsancom/san/convert/database/ConvertIntent;


# direct methods
.method constructor <init>(Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/bh/getDownloadingList$deleteDownItem;->addDownloadListener:Ljava/lang/String;

    iput-object p2, p0, Lccsansan/bh/getDownloadingList$deleteDownItem;->unifiedDownload:Lccsancom/san/convert/database/ConvertIntent;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/bh/getDownloadingList$deleteDownItem;->addDownloadListener:Ljava/lang/String;

    iget-object v1, p0, Lccsansan/bh/getDownloadingList$deleteDownItem;->unifiedDownload:Lccsancom/san/convert/database/ConvertIntent;

    const-string v2, "package_info_status"

    invoke-static {v2, v0, v1}, Lccsansan/bh/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V

    return-void
.end method
