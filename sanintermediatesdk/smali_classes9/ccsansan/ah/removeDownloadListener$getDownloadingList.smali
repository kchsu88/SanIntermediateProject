.class Lccsansan/ah/removeDownloadListener$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/ah/removeDownloadListener$addDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/ah/removeDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "getDownloadingList"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsansan/ah/removeDownloadListener$unifiedDownload;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lccsansan/ah/removeDownloadListener$getDownloadingList;-><init>()V

    return-void
.end method


# virtual methods
.method public addDownloadListener(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getDownloadingList()Lccsansan/bm/addDownloadListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public removeDownloadListener()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
