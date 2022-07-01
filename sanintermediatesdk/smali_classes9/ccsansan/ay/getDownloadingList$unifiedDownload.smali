.class final Lccsansan/ay/getDownloadingList$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/ay/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/ay/getDownloadingList$removeDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/ay/getDownloadingList$removeDownloadListener;

.field final synthetic getDownloadingList:Lccsansan/aj/getDownloadingList;


# direct methods
.method constructor <init>(Lccsansan/ay/getDownloadingList$removeDownloadListener;Lccsansan/aj/getDownloadingList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ay/getDownloadingList$unifiedDownload;->addDownloadListener:Lccsansan/ay/getDownloadingList$removeDownloadListener;

    iput-object p2, p0, Lccsansan/ay/getDownloadingList$unifiedDownload;->getDownloadingList:Lccsansan/aj/getDownloadingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ay/getDownloadingList$unifiedDownload;->addDownloadListener:Lccsansan/ay/getDownloadingList$removeDownloadListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lccsansan/ay/getDownloadingList$removeDownloadListener;->getDownloadingList(ILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lccsansan/ay/getDownloadingList$unifiedDownload;->getDownloadingList:Lccsansan/aj/getDownloadingList;

    iget-object p1, p1, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lccsansan/ay/getDownloadingList$unifiedDownload;->getDownloadingList:Lccsansan/aj/getDownloadingList;

    iget-object p1, p1, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-static {p1, p2}, Lccsansan/bw/getErrorCode;->deleteDownItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lccsansan/ay/getDownloadingList$unifiedDownload;->getDownloadingList:Lccsansan/aj/getDownloadingList;

    iget-object p2, p1, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    iget-object p1, p1, Lccsansan/aj/getDownloadingList;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-static {p2, p1}, Lccsansan/ay/getDownloadingList;->deleteDownItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    invoke-static {}, Lccsansan/ay/getDownloadingList;->IncentiveDownloadUtils()V

    :cond_2
    return-void
.end method
