.class public Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/dt/IncentiveDownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getDownloadingList"
.end annotation


# instance fields
.field private IncentiveDownloadUtils:Lccsansan/bw/getDownloadingCount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsansan/bw/getDownloadingCount<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private addDownloadListener:I

.field private deleteDownItem:I

.field private getDownloadStatusByUrl:Ljava/lang/String;

.field private getDownloadedList:I

.field private getDownloadedRecordByUrl:Ljava/lang/String;

.field private getDownloadingList:I

.field private final removeDownloadListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final unifiedDownload:Lccsanandroid/content/Context;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lccsansan/bw/getDownloadingCount;

    invoke-direct {v0}, Lccsansan/bw/getDownloadingCount;-><init>()V

    iput-object v0, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/bw/getDownloadingCount;

    .line 3
    sget-object v0, Lccsansan/dt/getDownloadedCount;->NORMAL:Lccsansan/dt/getDownloadedCount;

    invoke-virtual {v0}, Lccsansan/dt/getDownloadedCount;->getValue()I

    move-result v0

    iput v0, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->getDownloadingList:I

    .line 4
    const/4 v0, 0x1

    iput v0, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->addDownloadListener:I

    .line 5
    invoke-static {}, Lccsansan/cz/unifiedDownload;->getDownloadedList()I

    move-result v0

    iput v0, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->deleteDownItem:I

    .line 6
    invoke-static {}, Lccsansan/cz/unifiedDownload;->getDownloadedRecordByUrl()I

    move-result v0

    iput v0, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->getDownloadedList:I

    .line 11
    iput-object p1, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    .line 12
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Ljava/util/List;Lccsansan/bw/getDownloadingCount;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lccsansan/bw/getDownloadingCount<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lccsansan/bw/getDownloadingCount;

    invoke-direct {v0}, Lccsansan/bw/getDownloadingCount;-><init>()V

    iput-object v0, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/bw/getDownloadingCount;

    .line 15
    sget-object v0, Lccsansan/dt/getDownloadedCount;->NORMAL:Lccsansan/dt/getDownloadedCount;

    invoke-virtual {v0}, Lccsansan/dt/getDownloadedCount;->getValue()I

    move-result v0

    iput v0, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->getDownloadingList:I

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->addDownloadListener:I

    .line 17
    invoke-static {}, Lccsansan/cz/unifiedDownload;->getDownloadedList()I

    move-result v0

    iput v0, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->deleteDownItem:I

    .line 18
    invoke-static {}, Lccsansan/cz/unifiedDownload;->getDownloadedRecordByUrl()I

    move-result v0

    iput v0, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->getDownloadedList:I

    .line 28
    iput-object p1, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    .line 29
    iput-object p2, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Ljava/util/List;

    .line 30
    iput-object p3, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/bw/getDownloadingCount;

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->addDownloadListener:I

    return p0
.end method

.method static synthetic addDownloadListener(Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;)Lccsanandroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    return-object p0
.end method

.method static synthetic deleteDownItem(Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic getDownloadedList(Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->getDownloadStatusByUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic getDownloadedRecordByUrl(Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->deleteDownItem:I

    return p0
.end method

.method static synthetic getDownloadingList(Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Ljava/util/List;

    return-object p0
.end method

.method static synthetic getDownloadingRecordByUrl(Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->getDownloadedList:I

    return p0
.end method

.method static synthetic removeDownloadListener(Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->getDownloadingList:I

    return p0
.end method

.method static synthetic unifiedDownload(Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;)Lccsansan/bw/getDownloadingCount;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/bw/getDownloadingCount;

    return-object p0
.end method


# virtual methods
.method public IncentiveDownloadUtils()Lccsansan/dt/IncentiveDownloadUtils;
    .locals 1

    .line 6
    new-instance v0, Lccsansan/dt/IncentiveDownloadUtils;

    invoke-direct {v0, p0}, Lccsansan/dt/IncentiveDownloadUtils;-><init>(Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;)V

    return-object v0
.end method

.method public addDownloadListener(Ljava/lang/String;)Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;
    .locals 0

    .line 3
    iput-object p1, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getDownloadingList(I)Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;
    .locals 0

    .line 2
    iput p1, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->addDownloadListener:I

    return-object p0
.end method

.method public getDownloadingList(Ljava/lang/String;)Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;
    .locals 0

    .line 5
    iput-object p1, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->getDownloadStatusByUrl:Ljava/lang/String;

    return-object p0
.end method

.method public removeDownloadListener(I)Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;
    .locals 0

    .line 2
    iput p1, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->getDownloadingList:I

    return-object p0
.end method

.method public removeDownloadListener(II)Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;
    .locals 0

    .line 3
    iput p1, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->deleteDownItem:I

    .line 4
    iput p2, p0, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->getDownloadedList:I

    return-object p0
.end method
