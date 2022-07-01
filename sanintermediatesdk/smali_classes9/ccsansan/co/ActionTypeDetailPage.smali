.class public Lccsansan/co/ActionTypeDetailPage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/co/ActionTypeDetailPage$addDownloadListener;,
        Lccsansan/co/ActionTypeDetailPage$unifiedDownload;
    }
.end annotation


# static fields
.field private static final getDownloadingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final unifiedDownload:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private IncentiveDownloadUtils:Lccsansan/co/ActionTypeDetailPage$unifiedDownload;

.field private addDownloadListener:Lccsansan/co/ActionTypeDetailPage$addDownloadListener;

.field private deleteDownItem:I

.field private getDownloadStatusByUrl:I

.field private removeDownloadListener:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "image/jpeg"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "image/png"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v4, "image/bmp"

    aput-object v4, v0, v1

    const/4 v1, 0x3

    const-string v4, "image/gif"

    aput-object v4, v0, v1

    const/4 v1, 0x4

    const-string v4, "image/jpg"

    aput-object v4, v0, v1

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lccsansan/co/ActionTypeDetailPage;->unifiedDownload:Ljava/util/List;

    .line 3
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "application/x-javascript"

    aput-object v1, v0, v2

    .line 4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lccsansan/co/ActionTypeDetailPage;->getDownloadingList:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lccsansan/co/ActionTypeDetailPage$unifiedDownload;Lccsansan/co/ActionTypeDetailPage$addDownloadListener;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 3
    invoke-static {p2}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 4
    invoke-static {p3}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 6
    iput-object p1, p0, Lccsansan/co/ActionTypeDetailPage;->removeDownloadListener:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lccsansan/co/ActionTypeDetailPage;->IncentiveDownloadUtils:Lccsansan/co/ActionTypeDetailPage$unifiedDownload;

    .line 8
    iput-object p3, p0, Lccsansan/co/ActionTypeDetailPage;->addDownloadListener:Lccsansan/co/ActionTypeDetailPage$addDownloadListener;

    .line 9
    iput p4, p0, Lccsansan/co/ActionTypeDetailPage;->deleteDownItem:I

    .line 10
    iput p5, p0, Lccsansan/co/ActionTypeDetailPage;->getDownloadStatusByUrl:I

    return-void
.end method

.method static removeDownloadListener(Lccsansan/co/IncentiveSDK$1;Lccsansan/co/ActionTypeDetailPage$unifiedDownload;II)Lccsansan/co/ActionTypeDetailPage;
    .locals 7

    .line 1
    invoke-static {p0}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lccsansan/co/IncentiveSDK$1;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lccsansan/co/IncentiveSDK$1;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lccsansan/co/IncentiveSDK$1;->unifiedDownload()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {p0}, Lccsansan/co/IncentiveSDK$1;->addDownloadListener()Ljava/lang/String;

    move-result-object p0

    .line 12
    sget-object v3, Lccsansan/co/ActionTypeDetailPage$unifiedDownload;->STATIC_RESOURCE:Lccsansan/co/ActionTypeDetailPage$unifiedDownload;

    if-ne p1, v3, :cond_2

    if-eqz v2, :cond_2

    if-eqz p0, :cond_2

    sget-object v3, Lccsansan/co/ActionTypeDetailPage;->unifiedDownload:Ljava/util/List;

    .line 14
    invoke-interface {v3, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lccsansan/co/ActionTypeDetailPage;->getDownloadingList:Ljava/util/List;

    .line 15
    invoke-interface {v4, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 17
    :cond_0
    invoke-interface {v3, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 18
    sget-object p0, Lccsansan/co/ActionTypeDetailPage$addDownloadListener;->IMAGE:Lccsansan/co/ActionTypeDetailPage$addDownloadListener;

    move-object v4, p0

    goto :goto_0

    .line 20
    :cond_1
    sget-object p0, Lccsansan/co/ActionTypeDetailPage$addDownloadListener;->JAVASCRIPT:Lccsansan/co/ActionTypeDetailPage$addDownloadListener;

    move-object v4, p0

    goto :goto_0

    .line 22
    :cond_2
    sget-object p0, Lccsansan/co/ActionTypeDetailPage$unifiedDownload;->HTML_RESOURCE:Lccsansan/co/ActionTypeDetailPage$unifiedDownload;

    if-ne p1, p0, :cond_3

    if-eqz v1, :cond_3

    .line 24
    sget-object p0, Lccsansan/co/ActionTypeDetailPage$addDownloadListener;->NONE:Lccsansan/co/ActionTypeDetailPage$addDownloadListener;

    move-object v4, p0

    move-object v2, v1

    goto :goto_0

    .line 25
    :cond_3
    sget-object p0, Lccsansan/co/ActionTypeDetailPage$unifiedDownload;->IFRAME_RESOURCE:Lccsansan/co/ActionTypeDetailPage$unifiedDownload;

    if-ne p1, p0, :cond_4

    if-eqz v0, :cond_4

    .line 27
    sget-object p0, Lccsansan/co/ActionTypeDetailPage$addDownloadListener;->NONE:Lccsansan/co/ActionTypeDetailPage$addDownloadListener;

    move-object v4, p0

    move-object v2, v0

    .line 32
    :goto_0
    new-instance p0, Lccsansan/co/ActionTypeDetailPage;

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lccsansan/co/ActionTypeDetailPage;-><init>(Ljava/lang/String;Lccsansan/co/ActionTypeDetailPage$unifiedDownload;Lccsansan/co/ActionTypeDetailPage$addDownloadListener;II)V

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsansan/co/ActionTypeReserveApp;)V
    .locals 2

    .line 34
    invoke-static {p1}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lccsansan/co/ActionTypeDetailPage;->IncentiveDownloadUtils:Lccsansan/co/ActionTypeDetailPage$unifiedDownload;

    sget-object v1, Lccsansan/co/ActionTypeDetailPage$unifiedDownload;->IFRAME_RESOURCE:Lccsansan/co/ActionTypeDetailPage$unifiedDownload;

    if-ne v0, v1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\" width=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/co/ActionTypeDetailPage;->deleteDownItem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\" height=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/co/ActionTypeDetailPage;->getDownloadStatusByUrl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\" src=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/co/ActionTypeDetailPage;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"></iframe>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsansan/co/ActionTypeReserveApp;->addDownloadListener(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_0
    sget-object v1, Lccsansan/co/ActionTypeDetailPage$unifiedDownload;->HTML_RESOURCE:Lccsansan/co/ActionTypeDetailPage$unifiedDownload;

    if-ne v0, v1, :cond_1

    .line 41
    iget-object v0, p0, Lccsansan/co/ActionTypeDetailPage;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsansan/co/ActionTypeReserveApp;->addDownloadListener(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_1
    sget-object v1, Lccsansan/co/ActionTypeDetailPage$unifiedDownload;->STATIC_RESOURCE:Lccsansan/co/ActionTypeDetailPage$unifiedDownload;

    if-ne v0, v1, :cond_3

    .line 43
    iget-object v0, p0, Lccsansan/co/ActionTypeDetailPage;->addDownloadListener:Lccsansan/co/ActionTypeDetailPage$addDownloadListener;

    sget-object v1, Lccsansan/co/ActionTypeDetailPage$addDownloadListener;->IMAGE:Lccsansan/co/ActionTypeDetailPage$addDownloadListener;

    if-ne v0, v1, :cond_2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><head></head><body style=\"margin:0;padding:0\"><img src=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/co/ActionTypeDetailPage;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" width=\"100%\" style=\"max-width:100%;max-height:100%;\" /></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Lccsansan/co/ActionTypeReserveApp;->addDownloadListener(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_2
    sget-object v1, Lccsansan/co/ActionTypeDetailPage$addDownloadListener;->JAVASCRIPT:Lccsansan/co/ActionTypeDetailPage$addDownloadListener;

    if-ne v0, v1, :cond_3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<script src=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/co/ActionTypeDetailPage;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"></script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p1, v0}, Lccsansan/co/ActionTypeReserveApp;->addDownloadListener(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public removeDownloadListener()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lccsansan/co/ActionTypeDetailPage;->removeDownloadListener:Ljava/lang/String;

    return-object v0
.end method
