.class public Lccsancom/san/common/offline/getDownloadedList;
.super Lccsancom/san/common/offline/IncentiveDownloadUtils;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/common/offline/getDownloadedList$getDownloadingList;
    }
.end annotation


# instance fields
.field private addDownloadListener:Ljava/lang/String;

.field private getDownloadingList:Lccsanandroid/widget/TextView;

.field private removeDownloadListener:Ljava/lang/String;

.field private unifiedDownload:Lccsanandroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsancom/san/common/offline/IncentiveDownloadUtils;-><init>()V

    return-void
.end method

.method private getDownloadingList()I
    .locals 1

    .line 1
    const-string v0, "ccsan_san_basic_offline_guide_network_dialog"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getDownloadingList(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/common/offline/getDownloadedList;->removeDownloadListener:Ljava/lang/String;

    return-void
.end method

.method public onCreate(Lccsanandroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/DialogFragment;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 2
    const-string p1, "Theme_Translucent"

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lccsansan/bw/shouldTryHandlingAction;->IncentiveDownloadUtils(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lccsanandroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateDialog(Lccsanandroid/os/Bundle;)Lccsanandroid/app/Dialog;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/DialogFragment;->onCreateDialog(Lccsanandroid/os/Bundle;)Lccsanandroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lccsanandroid/app/Dialog;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lccsanandroid/view/Window;->setGravity(I)V

    .line 4
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lccsanandroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {p1, v0}, Lccsanandroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    return-object p1
.end method

.method public onCreateView(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/ViewGroup;Lccsanandroid/os/Bundle;)Lccsanandroid/view/View;
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsancom/san/common/offline/getDownloadedList;->getDownloadingList()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Lccsanandroid/view/View;Lccsanandroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lccsanandroidx/fragment/app/DialogFragment;->onViewCreated(Lccsanandroid/view/View;Lccsanandroid/os/Bundle;)V

    .line 3
    const-string p2, "san_tv_connect"

    invoke-static {p2}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p2

    check-cast p2, Lccsanandroid/widget/TextView;

    iput-object p2, p0, Lccsancom/san/common/offline/getDownloadedList;->unifiedDownload:Lccsanandroid/widget/TextView;

    .line 4
    iget-object v0, p0, Lccsancom/san/common/offline/getDownloadedList;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p2, p0, Lccsancom/san/common/offline/getDownloadedList;->unifiedDownload:Lccsanandroid/widget/TextView;

    new-instance v0, Lccsancom/san/common/offline/getDownloadedList$addDownloadListener;

    invoke-direct {v0, p0}, Lccsancom/san/common/offline/getDownloadedList$addDownloadListener;-><init>(Lccsancom/san/common/offline/getDownloadedList;)V

    invoke-virtual {p2, v0}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 12
    const-string p2, "san_tv_title"

    invoke-static {p2}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p2

    check-cast p2, Lccsanandroid/widget/TextView;

    iput-object p2, p0, Lccsancom/san/common/offline/getDownloadedList;->getDownloadingList:Lccsanandroid/widget/TextView;

    .line 13
    iget-object v0, p0, Lccsancom/san/common/offline/getDownloadedList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    const-string p2, "san_tv_cancel"

    invoke-static {p2}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/TextView;

    .line 16
    new-instance p2, Lccsancom/san/common/offline/getDownloadedList$IncentiveDownloadUtils;

    invoke-direct {p2, p0}, Lccsancom/san/common/offline/getDownloadedList$IncentiveDownloadUtils;-><init>(Lccsancom/san/common/offline/getDownloadedList;)V

    invoke-virtual {p1, p2}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public removeDownloadListener(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/common/offline/getDownloadedList;->addDownloadListener:Ljava/lang/String;

    return-void
.end method

.method public unifiedDownload(Lccsancom/san/common/offline/getDownloadedList$getDownloadingList;)V
    .locals 0

    return-void
.end method
