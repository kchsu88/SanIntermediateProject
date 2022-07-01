.class Lccsansan/dm/IncentiveDownloadUtils$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/dm/IncentiveDownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "getDownloadingList"
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/dm/IncentiveDownloadUtils;


# direct methods
.method private constructor <init>(Lccsansan/dm/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/dm/IncentiveDownloadUtils$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/dm/IncentiveDownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsansan/dm/IncentiveDownloadUtils;Lccsansan/dm/IncentiveDownloadUtils$IncentiveDownloadUtils;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lccsansan/dm/IncentiveDownloadUtils$getDownloadingList;-><init>(Lccsansan/dm/IncentiveDownloadUtils;)V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lccsanandroid/view/View;->getId()I

    move-result v0

    const-string v1, "san_btn_player_close_confirm"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lccsansan/dm/IncentiveDownloadUtils$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/dm/IncentiveDownloadUtils;

    invoke-static {p1}, Lccsansan/dm/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/dm/IncentiveDownloadUtils;)Lccsansan/dm/IncentiveDownloadUtils$unifiedDownload;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lccsansan/dm/IncentiveDownloadUtils$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/dm/IncentiveDownloadUtils;

    invoke-static {p1}, Lccsansan/dm/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/dm/IncentiveDownloadUtils;)Lccsansan/dm/IncentiveDownloadUtils$unifiedDownload;

    move-result-object p1

    invoke-interface {p1}, Lccsansan/dm/IncentiveDownloadUtils$unifiedDownload;->a()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/view/View;->getId()I

    move-result p1

    const-string v0, "san_btn_player_close_cancel"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lccsansan/dm/IncentiveDownloadUtils$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/dm/IncentiveDownloadUtils;

    invoke-virtual {p1}, Lccsanandroid/app/Dialog;->dismiss()V

    .line 7
    iget-object p1, p0, Lccsansan/dm/IncentiveDownloadUtils$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/dm/IncentiveDownloadUtils;

    invoke-static {p1}, Lccsansan/dm/IncentiveDownloadUtils;->addDownloadListener(Lccsansan/dm/IncentiveDownloadUtils;)Lccsansan/dm/IncentiveDownloadUtils$removeDownloadListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lccsansan/dm/IncentiveDownloadUtils$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/dm/IncentiveDownloadUtils;

    invoke-static {p1}, Lccsansan/dm/IncentiveDownloadUtils;->addDownloadListener(Lccsansan/dm/IncentiveDownloadUtils;)Lccsansan/dm/IncentiveDownloadUtils$removeDownloadListener;

    move-result-object p1

    invoke-interface {p1}, Lccsansan/dm/IncentiveDownloadUtils$removeDownloadListener;->a()V

    :cond_1
    :goto_0
    return-void
.end method
