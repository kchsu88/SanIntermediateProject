.class public Lccsansan/br/IncentiveDownloadUtils;
.super Lccsanandroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/br/IncentiveDownloadUtils$unifiedDownload;
    }
.end annotation


# instance fields
.field protected ActionTypeDetailPage:Lccsanandroid/widget/FrameLayout;

.field protected ActionTypeDownload:Lccsansan/br/deleteDownItem;

.field protected ActionTypeReserveApp:Z

.field public IncentiveDownloadUtils:Lccsansan/br/getDownloadingList;

.field protected IncentiveSDK:Lccsanandroid/widget/TextView;

.field protected IncentiveSDK$1:Lccsanandroid/view/View;

.field public addDownloadListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public deleteDownItem:Ljava/lang/String;

.field protected deleteDownList:Lccsanandroid/widget/TextView;

.field protected execute:Lccsanandroid/widget/FrameLayout;

.field protected getActionType:Z

.field protected getDownloadStatusByUrl:Lccsanandroid/widget/TextView;

.field protected getDownloadedCount:Lccsanandroid/widget/Button;

.field protected getDownloadedList:Lccsansan/aq/IncentiveDownloadUtils;

.field public getDownloadedRecordByUrl:Ljava/lang/String;

.field protected getDownloadingCount:Lccsanandroid/widget/ProgressBar;

.field public getDownloadingList:Ljava/lang/String;

.field protected getDownloadingRecordByUrl:Lccsanandroid/view/View;

.field protected getErrorCode:Lccsanandroid/os/Handler;

.field protected getErrorMessage:Lccsansan/bm/getDownloadingRecordByUrl;

.field protected getPackageNameByRecord:Lccsanandroid/view/View;

.field protected getThumbPathByRecord:Lccsanandroid/widget/TextView;

.field protected pause:Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;

.field protected performAction:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected performActionWhenOffline:Lccsansan/br/addDownloadListener;

.field public removeDownloadListener:Z

.field protected resolveUrl:Lccsanandroid/view/View;

.field protected resume:Lccsanandroid/widget/Button;

.field private setErrorMessage:Lccsansan/br/IncentiveDownloadUtils$unifiedDownload;

.field protected shouldTryHandlingAction:Lccsanandroid/view/View;

.field protected trackReportClick:Lccsanandroid/view/View;

.field protected trackReportShow:Lccsanandroid/widget/ImageView;

.field public volatile unifiedDownload:Z


# direct methods
.method public static synthetic $r8$lambda$Klpa2blZmyJVzzZFdWyW0dcTt74(Lccsansan/br/IncentiveDownloadUtils;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsansan/br/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Usc4w1kjWjaZTwOKITIjbmkYkGY(Lccsansan/br/IncentiveDownloadUtils;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$clf-okY-OCY6aZxkW-QWC_r-Ggo(Lccsansan/br/IncentiveDownloadUtils;Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsansan/br/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsansan/br/IncentiveDownloadUtils;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsansan/br/IncentiveDownloadUtils;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lccsansan/br/IncentiveDownloadUtils;->addDownloadListener:Ljava/util/Map;

    .line 5
    const-string p2, ""

    iput-object p2, p0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lccsansan/br/IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/String;

    .line 8
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lccsanandroid/widget/LinearLayout;->setOrientation(I)V

    .line 9
    invoke-direct {p0, p1}, Lccsansan/br/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/Context;)V

    .line 10
    new-instance p1, Lccsansan/br/IncentiveDownloadUtils$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lccsansan/br/IncentiveDownloadUtils$$ExternalSyntheticLambda1;-><init>(Lccsansan/br/IncentiveDownloadUtils;)V

    iput-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->getErrorMessage:Lccsansan/bm/getDownloadingRecordByUrl;

    .line 11
    new-instance p1, Lccsanandroid/os/Handler;

    invoke-direct {p1}, Lccsanandroid/os/Handler;-><init>()V

    iput-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->getErrorCode:Lccsanandroid/os/Handler;

    .line 13
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeReserveApp:Z

    .line 14
    new-instance p1, Lccsansan/br/IncentiveDownloadUtils$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lccsansan/br/IncentiveDownloadUtils$$ExternalSyntheticLambda2;-><init>(Lccsansan/br/IncentiveDownloadUtils;)V

    invoke-virtual {p0, p1}, Lccsansan/br/IncentiveDownloadUtils;->setOnFinishedListener(Lccsansan/bm/unifiedDownload;)V

    return-void
.end method

.method private synthetic IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lccsansan/br/IncentiveDownloadUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lccsansan/br/IncentiveDownloadUtils$$ExternalSyntheticLambda0;-><init>(Lccsansan/br/IncentiveDownloadUtils;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lccsanandroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private addDownloadListener(Lccsanandroid/view/View;)V
    .locals 1

    .line 61
    const-string v0, "san_hybrid_web_custom_view"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/FrameLayout;

    iput-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->execute:Lccsanandroid/widget/FrameLayout;

    return-void
.end method

.method private addDownloadListener(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->pause:Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->deleteDownList:Lccsanandroid/widget/TextView;

    invoke-virtual {p1, v0}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Lccsansan/br/IncentiveDownloadUtils;->getDownloadedCount()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->pause:Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->deleteDownList:Lccsanandroid/widget/TextView;

    invoke-virtual {p1, v0}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private getCacheWebClient()Lccsansan/bm/getDownloadingList;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->performAction:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->performAction:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/san/hybrid/ui/BaseHybridActivity;

    invoke-virtual {v0}, Lccsancom/san/hybrid/ui/BaseHybridActivity;->IncentiveDownloadUtils()Lccsancom/san/hybrid/ui/getDownloadingList;

    move-result-object v0

    check-cast v0, Lccsansan/ba/addDownloadListener;

    .line 3
    invoke-virtual {v0}, Lccsansan/ba/addDownloadListener;->getDownloadingCount()Lccsansan/bm/getDownloadingList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDownloadingList(Lccsanandroid/content/Context;Lccsanandroid/view/View;)V
    .locals 0

    .line 62
    const-string p1, "san_common_titlebar"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsanandroid/view/View;

    .line 63
    const-string p1, "san_title_text"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/TextView;

    iput-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/widget/TextView;

    .line 64
    const-string p1, "san_return_view"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/Button;

    iput-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadedCount:Lccsanandroid/widget/Button;

    .line 65
    invoke-virtual {p1, p0}, Lccsanandroid/widget/Button;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getDownloadingList(Lccsanandroid/view/View;)V
    .locals 1

    .line 2
    const-string v0, "san_hybrid_web_navigator"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->IncentiveSDK$1:Lccsanandroid/view/View;

    .line 3
    const-string v0, "san_hybrid_web_navigator_back"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->resolveUrl:Lccsanandroid/view/View;

    .line 4
    const-string v0, "san_hybrid_web_navigator_forward"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->shouldTryHandlingAction:Lccsanandroid/view/View;

    .line 5
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->IncentiveSDK$1:Lccsanandroid/view/View;

    invoke-virtual {p1, p0}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->resolveUrl:Lccsanandroid/view/View;

    invoke-virtual {p1, p0}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->shouldTryHandlingAction:Lccsanandroid/view/View;

    invoke-virtual {p1, p0}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->shouldTryHandlingAction:Lccsanandroid/view/View;

    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->canGoForward()Z

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setEnabled(Z)V

    .line 9
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->resolveUrl:Lccsanandroid/view/View;

    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->canGoBack()Z

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private synthetic getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lccsansan/br/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getPackageNameByRecord()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->reload()V

    .line 2
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->trackReportClick:Lccsanandroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lccsanandroid/webkit/WebView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingCount:Lccsanandroid/widget/ProgressBar;

    iget-object v3, p0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadedList:Lccsansan/aq/IncentiveDownloadUtils;

    invoke-virtual {v3}, Lccsansan/aq/IncentiveDownloadUtils;->getDownloadingList()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadedList:Lccsansan/aq/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/aq/IncentiveDownloadUtils;->IncentiveDownloadUtils()Z

    move-result v0

    invoke-direct {p0, v0}, Lccsansan/br/IncentiveDownloadUtils;->addDownloadListener(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private pause()V
    .locals 2

    .line 1
    new-instance v0, Lccsansan/br/getDownloadingList;

    invoke-direct {v0, p0}, Lccsansan/br/getDownloadingList;-><init>(Lccsansan/br/IncentiveDownloadUtils;)V

    iput-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/br/getDownloadingList;

    .line 2
    iget-object v1, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v1, v0}, Lccsanandroid/webkit/WebView;->setWebChromeClient(Lccsanandroid/webkit/WebChromeClient;)V

    .line 3
    new-instance v0, Lccsansan/br/addDownloadListener;

    invoke-direct {v0, p0}, Lccsansan/br/addDownloadListener;-><init>(Lccsansan/br/IncentiveDownloadUtils;)V

    iput-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->performActionWhenOffline:Lccsansan/br/addDownloadListener;

    .line 4
    iget-object v1, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v1, v0}, Lccsanandroid/webkit/WebView;->setWebViewClient(Lccsanandroid/webkit/WebViewClient;)V

    return-void
.end method

.method private removeDownloadListener(Lccsanandroid/view/View;)V
    .locals 1

    .line 9
    const-string v0, "san_hybrid_web_error_view"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->trackReportClick:Lccsanandroid/view/View;

    .line 10
    const-string v0, "san_tag_icon"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ImageView;

    iput-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->trackReportShow:Lccsanandroid/widget/ImageView;

    .line 11
    const-string v0, "san_error_msg"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/TextView;

    iput-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->getThumbPathByRecord:Lccsanandroid/widget/TextView;

    .line 12
    const-string v0, "san_retry_btn).setOnClickListener(this"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    .line 13
    const-string v0, "san_retry_text"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/TextView;

    iput-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->IncentiveSDK:Lccsanandroid/widget/TextView;

    .line 14
    const-string v0, "san_common_load_error_set_network"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/widget/TextView;->setText(I)V

    .line 15
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->trackReportClick:Lccsanandroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic removeDownloadListener(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeReserveApp:Z

    return-void
.end method

.method private removeDownloadListener(Lccsansan/aq/IncentiveDownloadUtils;)V
    .locals 4

    .line 66
    invoke-virtual {p1}, Lccsansan/aq/IncentiveDownloadUtils;->addDownloadListener()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 67
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsanandroid/view/View;

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1}, Lccsansan/aq/IncentiveDownloadUtils;->addDownloadListener()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 69
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsanandroid/view/View;

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 70
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->performAction:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 71
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->performAction:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lccsancom/san/hybrid/ui/BaseHybridActivity;

    if-eqz p1, :cond_1

    .line 72
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->performAction:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/san/hybrid/ui/BaseHybridActivity;

    invoke-virtual {p1}, Lccsancom/san/hybrid/ui/BaseHybridActivity;->IncentiveDownloadUtils()Lccsancom/san/hybrid/ui/getDownloadingList;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/san/hybrid/ui/getDownloadingList;->getDownloadStatusByUrl()Lccsancom/san/hybrid/ui/unifiedDownload;

    move-result-object p1

    invoke-virtual {p1, v3}, Lccsancom/san/hybrid/ui/unifiedDownload;->getDownloadingList(Z)V

    .line 75
    :cond_1
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->performAction:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/app/Activity;

    invoke-virtual {p1}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Lccsanandroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p1}, Lccsansan/aq/IncentiveDownloadUtils;->addDownloadListener()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lccsansan/aq/IncentiveDownloadUtils;->addDownloadListener()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 78
    :cond_3
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsanandroid/view/View;

    invoke-virtual {v0, v3}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 79
    invoke-virtual {p1}, Lccsansan/aq/IncentiveDownloadUtils;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 80
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/widget/TextView;

    invoke-virtual {p1}, Lccsansan/aq/IncentiveDownloadUtils;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 82
    :cond_4
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private removeDownloadListener(Z)V
    .locals 2

    .line 83
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->trackReportClick:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->performAction:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_7

    .line 85
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/app/Activity;

    invoke-virtual {p1}, Lccsanandroid/app/Activity;->finish()V

    goto :goto_1

    .line 87
    :cond_0
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->getPackageNameByRecord:Lccsanandroid/view/View;

    if-eqz v0, :cond_1

    .line 88
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/br/getDownloadingList;

    invoke-virtual {p1}, Lccsansan/br/getDownloadingList;->onHideCustomView()V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    .line 91
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->addDownloadListener:Ljava/util/Map;

    const-string v0, "keyBack"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->addDownloadListener:Ljava/util/Map;

    const-string v1, "tapBack"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 94
    :goto_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 95
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lccsansan/br/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 100
    :cond_3
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {p1}, Lccsanandroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 101
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->performActionWhenOffline:Lccsansan/br/addDownloadListener;

    iget-boolean p1, p1, Lccsansan/br/addDownloadListener;->removeDownloadListener:Z

    if-eqz p1, :cond_5

    .line 102
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->performAction:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_4

    .line 103
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/app/Activity;

    invoke-virtual {p1}, Lccsanandroid/app/Activity;->finish()V

    :cond_4
    return-void

    .line 109
    :cond_5
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {p1}, Lccsanandroid/webkit/WebView;->goBack()V

    goto :goto_1

    .line 110
    :cond_6
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->performAction:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_7

    .line 111
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/app/Activity;

    invoke-virtual {p1}, Lccsanandroid/app/Activity;->finish()V

    :cond_7
    :goto_1
    return-void
.end method

.method private unifiedDownload(Lccsanandroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 49
    invoke-static {p1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "san_basic_hybrid_wrapper_webview"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v0

    .line 50
    const-string v1, "san_hybrid_web_view_container"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/FrameLayout;

    iput-object v1, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsanandroid/widget/FrameLayout;

    .line 51
    new-instance v1, Lccsansan/br/deleteDownItem;

    new-instance v2, Lccsanandroid/content/MutableContextWrapper;

    invoke-direct {v2, p1}, Lccsanandroid/content/MutableContextWrapper;-><init>(Lccsanandroid/content/Context;)V

    invoke-direct {v1, v2}, Lccsansan/br/deleteDownItem;-><init>(Lccsanandroid/content/Context;)V

    iput-object v1, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    .line 52
    new-instance v1, Lccsanandroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53
    iget-object v2, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v2, v1}, Lccsanandroid/webkit/WebView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object v1, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsanandroid/widget/FrameLayout;

    iget-object v2, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;I)V

    .line 55
    invoke-direct {p0, v0}, Lccsansan/br/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/view/View;)V

    .line 56
    invoke-direct {p0, p1, v0}, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Lccsanandroid/view/View;)V

    .line 57
    invoke-direct {p0, v0}, Lccsansan/br/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/view/View;)V

    .line 58
    invoke-direct {p0, v0}, Lccsansan/br/IncentiveDownloadUtils;->addDownloadListener(Lccsanandroid/view/View;)V

    .line 59
    invoke-direct {p0, v0}, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/view/View;)V

    .line 60
    invoke-direct {p0}, Lccsansan/br/IncentiveDownloadUtils;->pause()V

    return-void
.end method

.method private unifiedDownload(Lccsanandroid/view/View;)V
    .locals 2

    .line 2
    const-string v0, "san_hybrid_web_pb"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ProgressBar;

    iput-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingCount:Lccsanandroid/widget/ProgressBar;

    .line 3
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ProgressBar;->setMax(I)V

    .line 4
    const-string v0, "san_hybrid_web_pb_center"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;

    iput-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->pause:Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;

    .line 5
    const-string v0, "san_hybrid_web_tip_center_tip"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/TextView;

    iput-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->deleteDownList:Lccsanandroid/widget/TextView;

    return-void
.end method

.method private unifiedDownload(Z)V
    .locals 1

    .line 10
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->IncentiveSDK$1:Lccsanandroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lccsanandroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->performActionWhenOffline:Lccsansan/br/addDownloadListener;

    invoke-direct {p0}, Lccsansan/br/IncentiveDownloadUtils;->getCacheWebClient()Lccsansan/bm/getDownloadingList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/br/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/bm/getDownloadingList;)V

    return-void
.end method

.method public IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/aq/IncentiveDownloadUtils;)V
    .locals 3

    .line 3
    invoke-virtual {p0}, Lccsanandroid/widget/LinearLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lccsanandroid/content/MutableContextWrapper;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lccsanandroid/widget/LinearLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/MutableContextWrapper;

    invoke-virtual {v0, p1}, Lccsanandroid/content/MutableContextWrapper;->setBaseContext(Lccsanandroid/content/Context;)V

    .line 5
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/MutableContextWrapper;

    invoke-virtual {v0, p1}, Lccsanandroid/content/MutableContextWrapper;->setBaseContext(Lccsanandroid/content/Context;)V

    .line 9
    :cond_0
    instance-of v0, p1, Lccsanandroid/app/Activity;

    if-eqz v0, :cond_2

    .line 10
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lccsanandroid/app/Activity;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->performAction:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 12
    :cond_1
    instance-of v0, p1, Lccsanandroid/app/Activity;

    if-eqz v0, :cond_2

    .line 13
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lccsanandroid/app/Activity;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->performAction:Ljava/lang/ref/WeakReference;

    .line 16
    :cond_2
    :goto_0
    iput-object p2, p0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadedList:Lccsansan/aq/IncentiveDownloadUtils;

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " updateConfig webViewConfig = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsansan/aq/IncentiveDownloadUtils;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Hybrid"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->addDownloadListener:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 19
    invoke-virtual {p2}, Lccsansan/aq/IncentiveDownloadUtils;->IncentiveDownloadUtils()Z

    move-result p1

    invoke-direct {p0, p1}, Lccsansan/br/IncentiveDownloadUtils;->addDownloadListener(Z)V

    .line 20
    invoke-direct {p0, p2}, Lccsansan/br/IncentiveDownloadUtils;->removeDownloadListener(Lccsansan/aq/IncentiveDownloadUtils;)V

    .line 21
    invoke-virtual {p2}, Lccsansan/aq/IncentiveDownloadUtils;->getDownloadStatusByUrl()Z

    move-result p1

    invoke-direct {p0, p1}, Lccsansan/br/IncentiveDownloadUtils;->unifiedDownload(Z)V

    .line 22
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingCount:Lccsanandroid/widget/ProgressBar;

    invoke-virtual {p2}, Lccsansan/aq/IncentiveDownloadUtils;->getDownloadingList()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadedList:Lccsansan/aq/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/aq/IncentiveDownloadUtils;->pause()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsansan/br/deleteDownItem;->setUserAgent(Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {p2}, Lccsansan/aq/IncentiveDownloadUtils;->getDownloadingRecordByUrl()Z

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 25
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {p2}, Lccsansan/aq/IncentiveDownloadUtils;->getDownloadingRecordByUrl()Z

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 26
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {p2}, Lccsansan/aq/IncentiveDownloadUtils;->getDownloadedRecordByUrl()Z

    move-result v0

    invoke-virtual {p1, v0}, Lccsansan/br/deleteDownItem;->addDownloadListener(Z)V

    .line 27
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->performAction:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 28
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/br/getDownloadingList;

    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->performAction:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Lccsansan/br/getDownloadingList;->unifiedDownload(Lccsanandroid/app/Activity;Lccsansan/aq/IncentiveDownloadUtils;)V

    .line 29
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->performActionWhenOffline:Lccsansan/br/addDownloadListener;

    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->performAction:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Activity;

    iget-object v2, p0, Lccsansan/br/IncentiveDownloadUtils;->getErrorCode:Lccsanandroid/os/Handler;

    invoke-virtual {p1, v0, v2, p2}, Lccsansan/br/addDownloadListener;->removeDownloadListener(Lccsanandroid/app/Activity;Lccsanandroid/os/Handler;Lccsansan/aq/IncentiveDownloadUtils;)V

    :cond_4
    nop

    .line 32
    const-string p1, ""

    iput-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/String;

    .line 35
    iput-boolean v1, p0, Lccsansan/br/IncentiveDownloadUtils;->removeDownloadListener:Z

    return-void
.end method

.method public IncentiveDownloadUtils(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 37
    :try_start_0
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :goto_0
    return-void
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 2

    .line 38
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "market://"

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->performAction:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->performAction:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lccsansan/bw/resume;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Z)V

    .line 44
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadedList:Lccsansan/aq/IncentiveDownloadUtils;

    invoke-virtual {p1}, Lccsansan/aq/IncentiveDownloadUtils;->unifiedDownload()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->performAction:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 45
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->performAction:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/app/Activity;

    invoke-virtual {p1}, Lccsanandroid/app/Activity;->finish()V

    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0, p1}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :cond_2
    :goto_0
    return-void
.end method

.method public addDownloadListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->performAction:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    iget-object v1, p0, Lccsansan/br/IncentiveDownloadUtils;->performAction:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/app/Activity;

    invoke-virtual {v0, v1}, Lccsansan/br/deleteDownItem;->removeDownloadListener(Lccsanandroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 11
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    if-eqz v0, :cond_2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 16
    :try_start_0
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 18
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lccsanorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    nop

    .line 22
    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "jscmd="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Hybrid"

    invoke-static {v0, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget p2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p2, v0, :cond_1

    .line 27
    :try_start_1
    iget-object p2, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lccsanandroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Lccsanandroid/webkit/ValueCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 29
    iget-object p2, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {p2, p1}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 32
    :cond_1
    iget-object p2, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {p2, p1}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public deleteDownItem()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public deleteDownList()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeReserveApp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    const-string v1, "rwdPageResume"

    invoke-virtual {p0, v1, v0}, Lccsansan/br/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    const-string v1, "js_resume"

    const-string v2, "webview"

    invoke-virtual {v0, v1, v2}, Lccsansan/r/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getCurUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0}, Lccsansan/br/deleteDownItem;->getCurUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadStatusByUrl()V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " resetDelayed handler = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/br/IncentiveDownloadUtils;->getErrorCode:Lccsanandroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hybrid"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->getErrorCode:Lccsanandroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    if-eqz v0, :cond_2

    .line 12
    :try_start_0
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->trackReportClick:Lccsanandroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/16 v3, 0x8

    .line 13
    invoke-virtual {v0, v3}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0, v2}, Lccsanandroid/webkit/WebView;->setVisibility(I)V

    :cond_1
    nop

    .line 17
    iput-boolean v2, p0, Lccsansan/br/IncentiveDownloadUtils;->getActionType:Z

    .line 18
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->stopLoading()V

    .line 19
    iget-object v3, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, "text/html"

    const-string v7, "utf-8"

    const/4 v8, 0x0

    :try_start_1
    invoke-virtual/range {v3 .. v8}, Lccsanandroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0, v2}, Lccsanandroid/webkit/WebView;->clearCache(Z)V

    .line 21
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->clearFormData()V

    .line 22
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->clearHistory()V

    .line 23
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->clearView()V

    .line 24
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/MutableContextWrapper;

    .line 25
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsanandroid/content/MutableContextWrapper;->setBaseContext(Lccsanandroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    :goto_0
    nop

    .line 30
    iput-object v1, p0, Lccsansan/br/IncentiveDownloadUtils;->performAction:Ljava/lang/ref/WeakReference;

    .line 31
    invoke-virtual {p0}, Lccsanandroid/widget/LinearLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/MutableContextWrapper;

    .line 32
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/content/MutableContextWrapper;->setBaseContext(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public getDownloadedCount()V
    .locals 4

    .line 112
    invoke-virtual {p0}, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingCount()V

    .line 113
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->getErrorCode:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_1

    .line 114
    iget-object v1, p0, Lccsansan/br/IncentiveDownloadUtils;->setErrorMessage:Lccsansan/br/IncentiveDownloadUtils$unifiedDownload;

    if-nez v1, :cond_0

    .line 115
    new-instance v1, Lccsansan/br/IncentiveDownloadUtils$unifiedDownload;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lccsansan/br/IncentiveDownloadUtils$unifiedDownload;-><init>(Lccsansan/br/IncentiveDownloadUtils;Lccsansan/br/IncentiveDownloadUtils$removeDownloadListener;)V

    iput-object v1, p0, Lccsansan/br/IncentiveDownloadUtils;->setErrorMessage:Lccsansan/br/IncentiveDownloadUtils$unifiedDownload;

    .line 118
    :cond_0
    iget-object v1, p0, Lccsansan/br/IncentiveDownloadUtils;->setErrorMessage:Lccsansan/br/IncentiveDownloadUtils$unifiedDownload;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public getDownloadedList()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->clearHistory()V

    return-void
.end method

.method public getDownloadedRecordByUrl()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->shouldTryHandlingAction:Lccsanandroid/view/View;

    iget-object v1, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v1}, Lccsanandroid/webkit/WebView;->canGoForward()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->resolveUrl:Lccsanandroid/view/View;

    iget-object v1, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v1}, Lccsanandroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public getDownloadingCount()V
    .locals 2

    .line 33
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->getErrorCode:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsansan/br/IncentiveDownloadUtils;->setErrorMessage:Lccsansan/br/IncentiveDownloadUtils$unifiedDownload;

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public getDownloadingList()V
    .locals 3

    const-string v0, ""

    .line 1
    :try_start_0
    iput-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->trackReportClick:Lccsanandroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    .line 5
    invoke-virtual {v0, v2}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebView;->setVisibility(I)V

    .line 11
    :cond_0
    invoke-direct {p0}, Lccsansan/br/IncentiveDownloadUtils;->getCacheWebClient()Lccsansan/bm/getDownloadingList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    invoke-direct {p0}, Lccsansan/br/IncentiveDownloadUtils;->getCacheWebClient()Lccsansan/bm/getDownloadingList;

    move-result-object v0

    invoke-interface {v0}, Lccsansan/bm/getDownloadingList;->unifiedDownload()V

    .line 15
    :cond_1
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->stopLoading()V

    .line 17
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebView;->clearCache(Z)V

    .line 18
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->clearHistory()V

    .line 19
    invoke-virtual {p0}, Lccsanandroid/widget/LinearLayout;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 21
    check-cast v0, Lccsanandroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 24
    :cond_2
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->removeAllViews()V

    .line 25
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->destroy()V

    .line 26
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lccsanandroid/content/MutableContextWrapper;

    if-eqz v0, :cond_3

    .line 27
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    iget-object v0, v0, Lccsansan/br/deleteDownItem;->removeDownloadListener:Lccsanandroid/content/Context;

    check-cast v0, Lccsanandroid/content/MutableContextWrapper;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/content/MutableContextWrapper;->setBaseContext(Lccsanandroid/content/Context;)V

    .line 31
    :cond_3
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->getErrorCode:Lccsanandroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 32
    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_4
    nop

    .line 35
    iput-object v1, p0, Lccsansan/br/IncentiveDownloadUtils;->performAction:Ljava/lang/ref/WeakReference;

    .line 36
    invoke-virtual {p0}, Lccsanandroid/widget/LinearLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/MutableContextWrapper;

    .line 37
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/content/MutableContextWrapper;->setBaseContext(Lccsanandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public getDownloadingList(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0, p1}, Lccsanandroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :goto_0
    return-void
.end method

.method public getDownloadingRecordByUrl()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccsansan/br/IncentiveDownloadUtils;->removeDownloadListener(Z)V

    return-void
.end method

.method public getErrorView()Lccsanandroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->trackReportClick:Lccsanandroid/view/View;

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->getProgress()I

    move-result v0

    return v0
.end method

.method public getRealCurUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0}, Lccsansan/br/deleteDownItem;->getRealCurUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultBack()Lccsansan/bm/getDownloadingRecordByUrl;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->getErrorMessage:Lccsansan/bm/getDownloadingRecordByUrl;

    return-object v0
.end method

.method public getSettings()Lccsanandroid/webkit/WebSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebView()Lccsansan/br/deleteDownItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    return-object v0
.end method

.method public onClick(Lccsanandroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lccsanandroid/view/View;->getId()I

    move-result v0

    .line 2
    const-string v1, "san_return_view"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingRecordByUrl()V

    goto :goto_0

    :cond_0
    nop

    .line 4
    const-string v1, "san_retry_btn"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 5
    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/getDownloadedList;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/util/Pair;

    move-result-object v0

    .line 6
    iget-object v1, v0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsansan/bw/getDownloadedList;->unifiedDownload(Lccsanandroid/content/Context;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0}, Lccsansan/br/IncentiveDownloadUtils;->getPackageNameByRecord()V

    goto :goto_0

    :cond_2
    nop

    .line 11
    const-string v1, "san_hybrid_web_navigator_back"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 12
    invoke-static {p1}, Lccsansan/bw/setAdSize;->addDownloadListener(Lccsanandroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {p1}, Lccsanandroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {p1}, Lccsanandroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_3
    nop

    .line 15
    const-string v1, "san_hybrid_web_navigator_forward"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-static {p1}, Lccsansan/bw/setAdSize;->addDownloadListener(Lccsanandroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {p1}, Lccsanandroid/webkit/WebView;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    iget-object p1, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {p1}, Lccsanandroid/webkit/WebView;->goForward()V

    :cond_4
    :goto_0
    return-void
.end method

.method public removeDownloadListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->getPackageNameByRecord:Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/br/getDownloadingList;

    invoke-virtual {v0}, Lccsansan/br/getDownloadingList;->onHideCustomView()V

    :cond_0
    return-void
.end method

.method public removeDownloadListener(Lccsanandroid/os/Bundle;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0, p1}, Lccsanandroid/webkit/WebView;->restoreState(Lccsanandroid/os/Bundle;)Lccsanandroid/webkit/WebBackForwardList;

    return-void
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/br/IncentiveDownloadUtils;->getActionType:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lccsansan/br/IncentiveDownloadUtils;->getPackageNameByRecord()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lccsansan/br/IncentiveDownloadUtils;->getActionType:Z

    :cond_0
    return-void
.end method

.method public setHybridWebViewClient(Lccsansan/bm/IncentiveDownloadUtils;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->performActionWhenOffline:Lccsansan/br/addDownloadListener;

    invoke-virtual {v0, p1}, Lccsansan/br/addDownloadListener;->addDownloadListener(Lccsansan/bm/IncentiveDownloadUtils;)V

    :cond_0
    return-void
.end method

.method public setOnFinishedListener(Lccsansan/bm/unifiedDownload;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->performActionWhenOffline:Lccsansan/br/addDownloadListener;

    invoke-virtual {v0, p1}, Lccsansan/br/addDownloadListener;->addDownloadListener(Lccsansan/bm/unifiedDownload;)V

    return-void
.end method

.method public setXzListener(Lccsanandroid/webkit/DownloadListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    invoke-virtual {v0, p1}, Lccsanandroid/webkit/WebView;->setDownloadListener(Lccsanandroid/webkit/DownloadListener;)V

    return-void
.end method

.method public unifiedDownload()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->performAction:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/br/deleteDownItem;

    iget-object v1, p0, Lccsansan/br/IncentiveDownloadUtils;->performAction:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/app/Activity;

    invoke-virtual {v0, v1}, Lccsansan/br/deleteDownItem;->getDownloadingList(Lccsanandroid/app/Activity;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingCount()V

    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;)V
    .locals 2

    .line 16
    iget-boolean v0, p0, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeReserveApp:Z

    if-eqz v0, :cond_0

    .line 18
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    const-string v1, "pkgName"

    .line 19
    invoke-virtual {v0, v1, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "notifyPkgAdded"

    .line 20
    :try_start_1
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lccsansan/br/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :cond_0
    :goto_0
    return-void
.end method
