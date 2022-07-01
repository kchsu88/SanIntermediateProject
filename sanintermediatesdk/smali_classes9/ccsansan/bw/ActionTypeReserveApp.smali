.class public final Lccsansan/bw/ActionTypeReserveApp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/bw/ActionTypeReserveApp$getDownloadingList;
    }
.end annotation


# static fields
.field private static volatile IncentiveDownloadUtils:Lccsansan/bw/ActionTypeReserveApp$getDownloadingList; = null

.field private static getDownloadingList:Z = false

.field private static removeDownloadListener:Ljava/lang/Boolean; = null

.field private static unifiedDownload:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lccsansan/bw/ActionTypeReserveApp;->removeDownloadListener:Ljava/lang/Boolean;

    return-void
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;)Lccsanandroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    invoke-static {}, Lccsansan/bb/IncentiveDownloadUtils;->getDownloadedCount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lccsansan/bw/ActionTypeReserveApp;->IncentiveDownloadUtils:Lccsansan/bw/ActionTypeReserveApp$getDownloadingList;

    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lccsansan/bw/ActionTypeReserveApp;->IncentiveDownloadUtils:Lccsansan/bw/ActionTypeReserveApp$getDownloadingList;

    const-string v1, "https"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lccsansan/bw/ActionTypeReserveApp$getDownloadingList;->removeDownloadListener(Ljava/lang/String;Z)Lccsanandroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 12
    :cond_0
    new-instance v0, Lccsanandroid/util/Pair;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;Z)V
    .locals 1

    .line 6
    new-instance v0, Lccsansan/bw/AdError;

    invoke-direct {v0, p0}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-string p0, "is_sales_mode"

    invoke-virtual {v0, p0, p1}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;Z)Z

    return-void
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;Z)V
    .locals 1

    .line 10
    sput-boolean p1, Lccsansan/bw/ActionTypeReserveApp;->unifiedDownload:Z

    .line 11
    const/4 p1, 0x1

    sput-boolean p1, Lccsansan/bw/ActionTypeReserveApp;->getDownloadingList:Z

    .line 12
    new-instance p1, Lccsansan/bw/AdError;

    invoke-direct {p1, p0}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    sget-boolean p0, Lccsansan/bw/ActionTypeReserveApp;->unifiedDownload:Z

    const-string v0, "ad_use_test_servers"

    invoke-virtual {p1, v0, p0}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;Z)Z

    return-void
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;)Z
    .locals 2

    .line 1
    sget-boolean v0, Lccsansan/bw/ActionTypeReserveApp;->getDownloadingList:Z

    if-nez v0, :cond_1

    .line 2
    invoke-static {p0}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lccsansan/bw/AdError;

    invoke-direct {v0, p0}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    .line 4
    const-string p0, "ad_use_test_servers"

    invoke-virtual {v0, p0}, Lccsansan/bw/AdError;->deleteDownItem(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    sget-boolean v1, Lccsansan/bw/ActionTypeReserveApp;->unifiedDownload:Z

    invoke-virtual {v0, p0, v1}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lccsansan/bw/ActionTypeReserveApp;->unifiedDownload:Z

    :cond_0
    const/4 p0, 0x1

    .line 6
    sput-boolean p0, Lccsansan/bw/ActionTypeReserveApp;->getDownloadingList:Z

    .line 9
    :cond_1
    sget-boolean p0, Lccsansan/bw/ActionTypeReserveApp;->unifiedDownload:Z

    return p0
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;)Z
    .locals 2

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-direct {v0, p0}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    .line 2
    const-string p0, "is_sales_mode"

    invoke-virtual {v0, p0}, Lccsansan/bw/AdError;->deleteDownItem(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p0, v1}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lccsansan/bw/ActionTypeReserveApp;->removeDownloadListener:Ljava/lang/Boolean;

    .line 5
    :cond_0
    sget-object p0, Lccsansan/bw/ActionTypeReserveApp;->removeDownloadListener:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
