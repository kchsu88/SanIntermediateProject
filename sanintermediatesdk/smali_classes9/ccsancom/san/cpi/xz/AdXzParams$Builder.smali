.class public Lccsancom/san/cpi/xz/AdXzParams$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/cpi/xz/AdXzParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public actionType:I

.field public adData:Lccsansan/dt/removeDownloadListener;

.field public adId:Ljava/lang/String;

.field public ampAppId:Ljava/lang/String;

.field public apkSize:J

.field public appData:Ljava/lang/String;

.field public autoStart:Z

.field public callback:Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;

.field public cpiparam:Ljava/lang/String;

.field public creativeId:Ljava/lang/String;

.field public deepLinkUrl:Ljava/lang/String;

.field public did:Ljava/lang/String;

.field public extraInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fileSize:J

.field public gpUrl:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public isBook:I

.field public isForceGpXz:Z

.field public isInnerXz:Z

.field public minVersionCode:I

.field public name:Ljava/lang/String;

.field public p2pAzEnable:I

.field public pid:Ljava/lang/String;

.field public pkgName:Ljava/lang/String;

.field public placementId:Ljava/lang/String;

.field public portal:Ljava/lang/String;

.field public resultUrlCallBack:Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;

.field public rid:Ljava/lang/String;

.field public sourceType:Ljava/lang/String;

.field public splitNames:Ljava/lang/String;

.field public subPortal:Ljava/lang/String;

.field public taskType:Ljava/lang/String;

.field public trackUrls:[Ljava/lang/String;

.field public versionCode:I

.field public versionName:Ljava/lang/String;

.field public xzUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->isInnerXz:Z

    .line 3
    const/4 v1, 0x2

    iput v1, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->isBook:I

    .line 4
    iput v0, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->p2pAzEnable:I

    return-void
.end method


# virtual methods
.method public actionType(I)Lccsancom/san/cpi/xz/AdXzParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->actionType:I

    return-object p0
.end method

.method public appendAdData(Lccsansan/dt/removeDownloadListener;)Lccsancom/san/cpi/xz/AdXzParams$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->adData:Lccsansan/dt/removeDownloadListener;

    return-object p0
.end method

.method public appendAdInfo(Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->placementId:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->adId:Ljava/lang/String;

    return-object p0
.end method

.method public appendAdInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;
    .locals 0

    .line 3
    iput-object p1, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->adId:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->ampAppId:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->taskType:Ljava/lang/String;

    return-object p0
.end method

.method public appendAdStatsInfos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->pid:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->sourceType:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->rid:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->creativeId:Ljava/lang/String;

    return-object p0
.end method

.method public appendApkSize(J)Lccsancom/san/cpi/xz/AdXzParams$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->apkSize:J

    return-object p0
.end method

.method public appendAppData(Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appData:Ljava/lang/String;

    return-object p0
.end method

.method public appendCallbacks(Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;)Lccsancom/san/cpi/xz/AdXzParams$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->callback:Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;

    .line 2
    iput-object p2, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->resultUrlCallBack:Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;

    return-object p0
.end method

.method public appendCpiInfo(Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->did:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->cpiparam:Ljava/lang/String;

    return-object p0
.end method

.method public appendDeepLinkUrl(Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->deepLinkUrl:Ljava/lang/String;

    return-object p0
.end method

.method public appendExtraInfo(Ljava/util/HashMap;)Lccsancom/san/cpi/xz/AdXzParams$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lccsancom/san/cpi/xz/AdXzParams$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->extraInfo:Ljava/util/HashMap;

    return-object p0
.end method

.method public appendForceGpXz(Z)Lccsancom/san/cpi/xz/AdXzParams$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->isForceGpXz:Z

    return-object p0
.end method

.method public appendIconUrl(Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->iconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public appendIsBook(I)Lccsancom/san/cpi/xz/AdXzParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->isBook:I

    return-object p0
.end method

.method public appendMinVersionCode(I)Lccsancom/san/cpi/xz/AdXzParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->minVersionCode:I

    return-object p0
.end method

.method public appendP2pAzEnable(I)Lccsancom/san/cpi/xz/AdXzParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->p2pAzEnable:I

    return-object p0
.end method

.method public appendPkgInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)Lccsancom/san/cpi/xz/AdXzParams$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->pkgName:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->versionName:Ljava/lang/String;

    .line 3
    iput p3, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->versionCode:I

    .line 4
    iput-object p4, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->name:Ljava/lang/String;

    .line 5
    iput-wide p5, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->fileSize:J

    return-object p0
.end method

.method public appendSubPortal(Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->subPortal:Ljava/lang/String;

    return-object p0
.end method

.method public appendUrls(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;
    .locals 0

    .line 1
    iput-object p2, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->gpUrl:Ljava/lang/String;

    .line 2
    iput-object p1, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->xzUrl:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->trackUrls:[Ljava/lang/String;

    return-object p0
.end method

.method public autoStart(Z)Lccsancom/san/cpi/xz/AdXzParams$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->autoStart:Z

    return-object p0
.end method

.method public build()Lccsancom/san/cpi/xz/AdXzParams;
    .locals 1

    .line 1
    new-instance v0, Lccsancom/san/cpi/xz/AdXzParams;

    invoke-direct {v0, p0}, Lccsancom/san/cpi/xz/AdXzParams;-><init>(Lccsancom/san/cpi/xz/AdXzParams$Builder;)V

    return-object v0
.end method

.method public portal(Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->portal:Ljava/lang/String;

    return-object p0
.end method

.method public splitNames(Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/cpi/xz/AdXzParams$Builder;->splitNames:Ljava/lang/String;

    return-object p0
.end method
