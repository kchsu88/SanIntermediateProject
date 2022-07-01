.class public Lccsansan/ba/IncentiveDownloadUtils$IncentiveDownloadUtils;
.super Lccsansan/an/addDownloadListener$unifiedDownload;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/ba/IncentiveDownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncentiveDownloadUtils"
.end annotation


# instance fields
.field private final getDownloadingList:Lccsanandroid/content/Context;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/an/addDownloadListener$unifiedDownload;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/ba/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:Lccsanandroid/content/Context;

    return-void
.end method


# virtual methods
.method public addDownloadListener(I)Lccsanandroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Lccsansan/bg/IncentiveDownloadUtils;

    invoke-direct {p1}, Lccsansan/bg/IncentiveDownloadUtils;-><init>()V

    goto :goto_0

    .line 2
    :cond_1
    new-instance p1, Lccsansan/bg/addDownloadListener;

    iget-object v0, p0, Lccsansan/ba/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-direct {p1, v0}, Lccsansan/bg/addDownloadListener;-><init>(Lccsanandroid/content/Context;)V

    :goto_0
    return-object p1
.end method
