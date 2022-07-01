.class public Lccsansan/ck/getDownloadingList$unifiedDownload;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/ck/getDownloadingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "unifiedDownload"
.end annotation


# instance fields
.field private unifiedDownload:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/ck/getDownloadedRecordByUrl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    new-array v0, v0, [Lccsansan/ck/getDownloadedRecordByUrl;

    new-instance v1, Lccsancom/san/mads/action/actiontype/ActionTypeNone;

    invoke-direct {v1}, Lccsancom/san/mads/action/actiontype/ActionTypeNone;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ck/getDownloadingList$unifiedDownload;->unifiedDownload:Ljava/util/List;

    return-void
.end method

.method static synthetic removeDownloadListener(Lccsansan/ck/getDownloadingList$unifiedDownload;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/ck/getDownloadingList$unifiedDownload;->unifiedDownload:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/util/List;)Lccsansan/ck/getDownloadingList$unifiedDownload;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/ck/getDownloadedRecordByUrl;",
            ">;)",
            "Lccsansan/ck/getDownloadingList$unifiedDownload;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    iput-object v0, p0, Lccsansan/ck/getDownloadingList$unifiedDownload;->unifiedDownload:Ljava/util/List;

    return-object p0
.end method

.method public IncentiveDownloadUtils(Lccsansan/ck/getDownloadedRecordByUrl;)Lccsansan/ck/getDownloadingList$unifiedDownload;
    .locals 2

    .line 2
    const/4 v0, 0x1

    new-array v0, v0, [Lccsansan/ck/getDownloadedRecordByUrl;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lccsansan/ck/getDownloadingList$unifiedDownload;->unifiedDownload:Ljava/util/List;

    return-object p0
.end method

.method public unifiedDownload()Lccsansan/ck/getDownloadingList;
    .locals 1

    .line 6
    new-instance v0, Lccsansan/ck/getDownloadingList;

    invoke-direct {v0, p0}, Lccsansan/ck/getDownloadingList;-><init>(Lccsansan/ck/getDownloadingList$unifiedDownload;)V

    return-object v0
.end method
