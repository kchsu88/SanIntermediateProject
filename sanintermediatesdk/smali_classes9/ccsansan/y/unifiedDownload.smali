.class public abstract Lccsansan/y/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private getDownloadingList:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p2, p0, Lccsansan/y/unifiedDownload;->getDownloadingList:Z

    return-void
.end method


# virtual methods
.method public abstract IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getDownloadingList()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/y/unifiedDownload;->getDownloadingList:Z

    return v0
.end method

.method public abstract unifiedDownload()V
.end method

.method public unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
