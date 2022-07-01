.class public Lccsansan/cf/addDownloadListener;
.super Lccsancom/san/common/offline/IncentiveDownloadUtils;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/cf/addDownloadListener$unifiedDownload;,
        Lccsansan/cf/addDownloadListener$addDownloadListener;
    }
.end annotation


# instance fields
.field private IncentiveDownloadUtils:Lccsanandroid/os/CountDownTimer;

.field private addDownloadListener:Lccsansan/cf/addDownloadListener$unifiedDownload;

.field private getDownloadedRecordByUrl:Z

.field private getDownloadingList:Lccsanandroid/widget/TextView;

.field private removeDownloadListener:Lccsanandroid/widget/TextView;

.field private unifiedDownload:Lccsanandroid/widget/TextView;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsancom/san/common/offline/IncentiveDownloadUtils;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsansan/cf/addDownloadListener;->getDownloadedRecordByUrl:Z

    .line 18
    iput-boolean p1, p0, Lccsansan/cf/addDownloadListener;->getDownloadedRecordByUrl:Z

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/cf/addDownloadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/cf/addDownloadListener;->getDownloadingList()V

    return-void
.end method

.method static synthetic addDownloadListener(Lccsansan/cf/addDownloadListener;)Lccsanandroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/cf/addDownloadListener;->removeDownloadListener:Lccsanandroid/widget/TextView;

    return-object p0
.end method

.method private getDownloadingList()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/cf/addDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lccsanandroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method static synthetic removeDownloadListener(Lccsansan/cf/addDownloadListener;)Lccsansan/cf/addDownloadListener$unifiedDownload;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/cf/addDownloadListener;->addDownloadListener:Lccsansan/cf/addDownloadListener$unifiedDownload;

    return-object p0
.end method

.method private unifiedDownload()I
    .locals 1

    .line 1
    const-string v0, "san_auto_xz_dialog"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic unifiedDownload(Lccsansan/cf/addDownloadListener;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lccsansan/cf/addDownloadListener;->getDownloadedRecordByUrl:Z

    return p0
.end method


# virtual methods
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

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lccsanandroid/view/Window;->setGravity(I)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lccsanandroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Lccsanandroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    return-object p1
.end method

.method public onCreateView(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/ViewGroup;Lccsanandroid/os/Bundle;)Lccsanandroid/view/View;
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsansan/cf/addDownloadListener;->unifiedDownload()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/DialogFragment;->getDialog()Lccsanandroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Lccsanandroid/app/Dialog;->getWindow()Lccsanandroid/view/Window;

    move-result-object p2

    .line 3
    const-string p3, "san_transparent"

    invoke-static {p3}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Lccsanandroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 4
    invoke-virtual {p2}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v0, v0, v0, v0}, Lccsanandroid/view/View;->setPadding(IIII)V

    .line 5
    invoke-virtual {p2}, Lccsanandroid/view/Window;->getAttributes()Lccsanandroid/view/WindowManager$LayoutParams;

    move-result-object p3

    .line 6
    const/16 v0, 0x50

    iput v0, p3, Lccsanandroid/view/WindowManager$LayoutParams;->gravity:I

    .line 7
    const/4 v0, -0x1

    iput v0, p3, Lccsanandroid/view/WindowManager$LayoutParams;->width:I

    .line 8
    const/4 v0, -0x2

    iput v0, p3, Lccsanandroid/view/WindowManager$LayoutParams;->height:I

    .line 9
    invoke-virtual {p2, p3}, Lccsanandroid/view/Window;->setAttributes(Lccsanandroid/view/WindowManager$LayoutParams;)V

    return-object p1
.end method

.method public onViewCreated(Lccsanandroid/view/View;Lccsanandroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lccsanandroidx/fragment/app/DialogFragment;->onViewCreated(Lccsanandroid/view/View;Lccsanandroid/os/Bundle;)V

    .line 3
    const-string p2, "san_tv_no"

    invoke-static {p2}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p2

    check-cast p2, Lccsanandroid/widget/TextView;

    iput-object p2, p0, Lccsansan/cf/addDownloadListener;->getDownloadingList:Lccsanandroid/widget/TextView;

    .line 4
    new-instance v0, Lccsansan/cf/addDownloadListener$IncentiveDownloadUtils;

    invoke-direct {v0, p0}, Lccsansan/cf/addDownloadListener$IncentiveDownloadUtils;-><init>(Lccsansan/cf/addDownloadListener;)V

    invoke-virtual {p2, v0}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 12
    const-string p2, "san_tv_title"

    invoke-static {p2}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p2

    check-cast p2, Lccsanandroid/widget/TextView;

    iput-object p2, p0, Lccsansan/cf/addDownloadListener;->removeDownloadListener:Lccsanandroid/widget/TextView;

    .line 14
    const-string p2, "san_tv_yes"

    invoke-static {p2}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/TextView;

    iput-object p1, p0, Lccsansan/cf/addDownloadListener;->unifiedDownload:Lccsanandroid/widget/TextView;

    .line 15
    new-instance p2, Lccsansan/cf/addDownloadListener$removeDownloadListener;

    invoke-direct {p2, p0}, Lccsansan/cf/addDownloadListener$removeDownloadListener;-><init>(Lccsansan/cf/addDownloadListener;)V

    invoke-virtual {p1, p2}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public removeDownloadListener(Lccsansan/cf/addDownloadListener$addDownloadListener;)V
    .locals 0

    return-void
.end method

.method public removeDownloadListener(Lccsansan/cf/addDownloadListener$unifiedDownload;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/cf/addDownloadListener;->addDownloadListener:Lccsansan/cf/addDownloadListener$unifiedDownload;

    return-void
.end method

.method public unifiedDownload(I)V
    .locals 7

    .line 3
    invoke-virtual {p0}, Lccsancom/san/common/offline/IncentiveDownloadUtils;->IncentiveDownloadUtils()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v0, Lccsansan/cf/addDownloadListener$getDownloadingList;

    add-int/lit8 p1, p1, 0x1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v3, p1

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lccsansan/cf/addDownloadListener$getDownloadingList;-><init>(Lccsansan/cf/addDownloadListener;JJ)V

    iput-object v0, p0, Lccsansan/cf/addDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/os/CountDownTimer;

    .line 27
    invoke-virtual {v0}, Lccsanandroid/os/CountDownTimer;->start()Lccsanandroid/os/CountDownTimer;

    return-void
.end method
