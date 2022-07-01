.class final Lccsansan/ca/getDownloadingList$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/ca/IncentiveDownloadUtils;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/ca/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess oaid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OAIDHelper"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Lccsansan/ca/addDownloadListener;

    const-string v0, "OAID is empty"

    invoke-direct {p1, v0}, Lccsansan/ca/addDownloadListener;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lccsansan/ca/getDownloadingList$unifiedDownload;->unifiedDownload(Ljava/lang/Exception;)V

    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Lccsansan/ca/getDownloadingList;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lccsansan/bw/getErrorCode;->getPackageNameByRecord(Ljava/lang/String;)V

    return-void
.end method

.method public unifiedDownload(Ljava/lang/Exception;)V
    .locals 1

    .line 8
    const-string p1, "OAIDHelper"

    const-string v0, "onError oaid:"

    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
