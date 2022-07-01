.class Lccsansan/bw/execute$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/ads/base/IBeylaIdHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/bw/execute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "unifiedDownload"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsansan/bw/execute$removeDownloadListener;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lccsansan/bw/execute$unifiedDownload;-><init>()V

    return-void
.end method


# virtual methods
.method public forceInitBeylaId()V
    .locals 0

    return-void
.end method

.method public getBeylaId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
