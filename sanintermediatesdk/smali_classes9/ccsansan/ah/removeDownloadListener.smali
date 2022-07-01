.class public Lccsansan/ah/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/ah/removeDownloadListener$getDownloadingList;,
        Lccsansan/ah/removeDownloadListener$addDownloadListener;
    }
.end annotation


# static fields
.field private static addDownloadListener:Lccsansan/ah/removeDownloadListener$addDownloadListener;


# direct methods
.method public static unifiedDownload()Lccsansan/ah/removeDownloadListener$addDownloadListener;
    .locals 2

    .line 1
    sget-object v0, Lccsansan/ah/removeDownloadListener;->addDownloadListener:Lccsansan/ah/removeDownloadListener$addDownloadListener;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lccsansan/ah/removeDownloadListener$getDownloadingList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsansan/ah/removeDownloadListener$getDownloadingList;-><init>(Lccsansan/ah/removeDownloadListener$unifiedDownload;)V

    sput-object v0, Lccsansan/ah/removeDownloadListener;->addDownloadListener:Lccsansan/ah/removeDownloadListener$addDownloadListener;

    .line 5
    :cond_0
    sget-object v0, Lccsansan/ah/removeDownloadListener;->addDownloadListener:Lccsansan/ah/removeDownloadListener$addDownloadListener;

    return-object v0
.end method
