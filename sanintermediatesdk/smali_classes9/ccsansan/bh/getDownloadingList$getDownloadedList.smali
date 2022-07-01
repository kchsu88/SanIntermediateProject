.class final Lccsansan/bh/getDownloadingList$getDownloadedList;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bh/getDownloadingList;->getDownloadedList(Lccsancom/san/convert/database/ConvertIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;


# direct methods
.method constructor <init>(Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/bh/getDownloadingList$getDownloadedList;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/bh/getDownloadingList$getDownloadedList;->removeDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    const-string v1, "AD_CONVERT"

    const-string v2, "no_permission"

    invoke-static {v1, v2, v0}, Lccsansan/bh/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V

    return-void
.end method
