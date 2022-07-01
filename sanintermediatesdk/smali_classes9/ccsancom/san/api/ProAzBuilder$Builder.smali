.class public Lccsancom/san/api/ProAzBuilder$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/api/ProAzBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private IncentiveDownloadUtils:I

.field private addDownloadListener:I

.field private getDownloadingList:I

.field private removeDownloadListener:I

.field private unifiedDownload:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/san/api/ProAzBuilder$Builder;->unifiedDownload:I

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsancom/san/api/ProAzBuilder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsancom/san/api/ProAzBuilder$Builder;->IncentiveDownloadUtils:I

    return p0
.end method

.method static synthetic addDownloadListener(Lccsancom/san/api/ProAzBuilder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsancom/san/api/ProAzBuilder$Builder;->unifiedDownload:I

    return p0
.end method

.method static synthetic getDownloadingList(Lccsancom/san/api/ProAzBuilder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsancom/san/api/ProAzBuilder$Builder;->removeDownloadListener:I

    return p0
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/api/ProAzBuilder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsancom/san/api/ProAzBuilder$Builder;->getDownloadingList:I

    return p0
.end method

.method static synthetic unifiedDownload(Lccsancom/san/api/ProAzBuilder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsancom/san/api/ProAzBuilder$Builder;->addDownloadListener:I

    return p0
.end method


# virtual methods
.method public build()Lccsancom/san/api/ProAzBuilder;
    .locals 2

    .line 1
    new-instance v0, Lccsancom/san/api/ProAzBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/san/api/ProAzBuilder;-><init>(Lccsancom/san/api/ProAzBuilder$Builder;Lccsancom/san/api/ProAzBuilder$1;)V

    return-object v0
.end method

.method public setCloseImage(I)Lccsancom/san/api/ProAzBuilder$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lccsancom/san/api/ProAzBuilder$Builder;->addDownloadListener:I

    return-object p0
.end method

.method public setCtaTextId(I)Lccsancom/san/api/ProAzBuilder$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lccsancom/san/api/ProAzBuilder$Builder;->IncentiveDownloadUtils:I

    return-object p0
.end method

.method public setDescTextId(I)Lccsancom/san/api/ProAzBuilder$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lccsancom/san/api/ProAzBuilder$Builder;->getDownloadingList:I

    return-object p0
.end method

.method public setIconImage(I)Lccsancom/san/api/ProAzBuilder$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lccsancom/san/api/ProAzBuilder$Builder;->removeDownloadListener:I

    return-object p0
.end method

.method public setLayoutId(I)Lccsancom/san/api/ProAzBuilder$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lccsancom/san/api/ProAzBuilder$Builder;->unifiedDownload:I

    return-object p0
.end method
