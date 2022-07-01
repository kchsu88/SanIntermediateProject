.class public Lccsancom/san/mads/mraid/getDownloadedList;
.super Lccsancom/san/mads/mraid/unifiedDownload;
.source ""


# instance fields
.field private IncentiveDownloadUtils:I

.field private final addDownloadListener:Lccsanandroid/widget/VideoView;

.field private getDownloadingList:Lccsanandroid/widget/ImageButton;

.field private unifiedDownload:I


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/os/Bundle;Lccsancom/san/mads/mraid/unifiedDownload$addDownloadListener;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Lccsancom/san/mads/mraid/unifiedDownload;-><init>(Lccsanandroid/content/Context;Ljava/lang/Long;Lccsancom/san/mads/mraid/unifiedDownload$addDownloadListener;)V

    .line 3
    new-instance p3, Lccsanandroid/widget/VideoView;

    invoke-direct {p3, p1}, Lccsanandroid/widget/VideoView;-><init>(Lccsanandroid/content/Context;)V

    iput-object p3, p0, Lccsancom/san/mads/mraid/getDownloadedList;->addDownloadListener:Lccsanandroid/widget/VideoView;

    .line 5
    new-instance p1, Lccsancom/san/mads/mraid/getDownloadedList$addDownloadListener;

    invoke-direct {p1, p0}, Lccsancom/san/mads/mraid/getDownloadedList$addDownloadListener;-><init>(Lccsancom/san/mads/mraid/getDownloadedList;)V

    invoke-virtual {p3, p1}, Lccsanandroid/widget/VideoView;->setOnPreparedListener(Lccsanandroid/media/MediaPlayer$OnPreparedListener;)V

    .line 12
    new-instance p1, Lccsancom/san/mads/mraid/getDownloadedList$unifiedDownload;

    invoke-direct {p1, p0}, Lccsancom/san/mads/mraid/getDownloadedList$unifiedDownload;-><init>(Lccsancom/san/mads/mraid/getDownloadedList;)V

    invoke-virtual {p3, p1}, Lccsanandroid/widget/VideoView;->setOnCompletionListener(Lccsanandroid/media/MediaPlayer$OnCompletionListener;)V

    .line 20
    new-instance p1, Lccsancom/san/mads/mraid/getDownloadedList$removeDownloadListener;

    invoke-direct {p1, p0}, Lccsancom/san/mads/mraid/getDownloadedList$removeDownloadListener;-><init>(Lccsancom/san/mads/mraid/getDownloadedList;)V

    invoke-virtual {p3, p1}, Lccsanandroid/widget/VideoView;->setOnErrorListener(Lccsanandroid/media/MediaPlayer$OnErrorListener;)V

    .line 30
    const-string p1, "video_url"

    invoke-virtual {p2, p1}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lccsanandroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic addDownloadListener(Lccsancom/san/mads/mraid/getDownloadedList;)Lccsanandroid/widget/ImageButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/mraid/getDownloadedList;->getDownloadingList:Lccsanandroid/widget/ImageButton;

    return-object p0
.end method

.method private getDownloadingRecordByUrl()V
    .locals 7

    .line 1
    new-instance v0, Lccsanandroid/widget/ImageButton;

    invoke-virtual {p0}, Lccsancom/san/mads/mraid/unifiedDownload;->getDownloadingList()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/widget/ImageButton;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/san/mads/mraid/getDownloadedList;->getDownloadingList:Lccsanandroid/widget/ImageButton;

    .line 2
    new-instance v0, Lccsanandroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Lccsanandroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 3
    const/4 v1, 0x1

    new-array v2, v1, [I

    const-string v3, "state_pressed"

    invoke-static {v3, v1}, Lccsansan/bw/shouldTryHandlingAction;->unifiedDownload(Ljava/lang/String;Z)I

    move-result v4

    neg-int v4, v4

    const/4 v5, 0x0

    aput v4, v2, v5

    sget-object v4, Lccsansan/co/removeDownloadListener;->INTERSTITIAL_CLOSE_BUTTON_NORMAL:Lccsansan/co/removeDownloadListener;

    .line 4
    invoke-virtual {p0}, Lccsancom/san/mads/mraid/unifiedDownload;->getDownloadingList()Lccsanandroid/content/Context;

    move-result-object v6

    .line 5
    invoke-virtual {v4, v6}, Lccsansan/co/removeDownloadListener;->createDrawable(Lccsanandroid/content/Context;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lccsanandroid/graphics/drawable/StateListDrawable;->addState([ILccsanandroid/graphics/drawable/Drawable;)V

    .line 7
    new-array v2, v1, [I

    invoke-static {v3, v1}, Lccsansan/bw/shouldTryHandlingAction;->unifiedDownload(Ljava/lang/String;Z)I

    move-result v1

    aput v1, v2, v5

    sget-object v1, Lccsansan/co/removeDownloadListener;->INTERSTITIAL_CLOSE_BUTTON_PRESSED:Lccsansan/co/removeDownloadListener;

    .line 8
    invoke-virtual {p0}, Lccsancom/san/mads/mraid/unifiedDownload;->getDownloadingList()Lccsanandroid/content/Context;

    move-result-object v3

    .line 9
    invoke-virtual {v1, v3}, Lccsansan/co/removeDownloadListener;->createDrawable(Lccsanandroid/content/Context;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lccsanandroid/graphics/drawable/StateListDrawable;->addState([ILccsanandroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object v1, p0, Lccsancom/san/mads/mraid/getDownloadedList;->getDownloadingList:Lccsanandroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/ImageButton;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object v0, p0, Lccsancom/san/mads/mraid/getDownloadedList;->getDownloadingList:Lccsanandroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageButton;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 14
    iget-object v0, p0, Lccsancom/san/mads/mraid/getDownloadedList;->getDownloadingList:Lccsanandroid/widget/ImageButton;

    new-instance v1, Lccsancom/san/mads/mraid/getDownloadedList$getDownloadingList;

    invoke-direct {v1, p0}, Lccsancom/san/mads/mraid/getDownloadedList$getDownloadingList;-><init>(Lccsancom/san/mads/mraid/getDownloadedList;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageButton;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 20
    new-instance v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lccsancom/san/mads/mraid/getDownloadedList;->unifiedDownload:I

    invoke-direct {v0, v1, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 21
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 22
    iget v1, p0, Lccsancom/san/mads/mraid/getDownloadedList;->IncentiveDownloadUtils:I

    invoke-virtual {v0, v1, v5, v1, v5}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 23
    invoke-virtual {p0}, Lccsancom/san/mads/mraid/unifiedDownload;->IncentiveDownloadUtils()Lccsanandroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lccsanandroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 24
    invoke-virtual {p0}, Lccsancom/san/mads/mraid/unifiedDownload;->IncentiveDownloadUtils()Lccsanandroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lccsancom/san/mads/mraid/getDownloadedList;->getDownloadingList:Lccsanandroid/widget/ImageButton;

    invoke-virtual {v1, v2, v0}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected addDownloadListener()V
    .locals 2

    .line 1
    invoke-super {p0}, Lccsancom/san/mads/mraid/unifiedDownload;->addDownloadListener()V

    .line 2
    invoke-virtual {p0}, Lccsancom/san/mads/mraid/unifiedDownload;->getDownloadingList()Lccsanandroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1, v0}, Lccsansan/cx/removeDownloadListener;->getDownloadStatusByUrl(FLccsanandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccsancom/san/mads/mraid/getDownloadedList;->unifiedDownload:I

    .line 3
    invoke-virtual {p0}, Lccsancom/san/mads/mraid/unifiedDownload;->getDownloadingList()Lccsanandroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1, v0}, Lccsansan/cx/removeDownloadListener;->getDownloadStatusByUrl(FLccsanandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lccsancom/san/mads/mraid/getDownloadedList;->IncentiveDownloadUtils:I

    .line 4
    invoke-direct {p0}, Lccsancom/san/mads/mraid/getDownloadedList;->getDownloadingRecordByUrl()V

    .line 5
    iget-object v0, p0, Lccsancom/san/mads/mraid/getDownloadedList;->getDownloadingList:Lccsanandroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageButton;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lccsancom/san/mads/mraid/getDownloadedList;->addDownloadListener:Lccsanandroid/widget/VideoView;

    invoke-virtual {v0}, Lccsanandroid/widget/VideoView;->start()V

    return-void
.end method

.method protected deleteDownItem()Lccsanandroid/widget/VideoView;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/mraid/getDownloadedList;->addDownloadListener:Lccsanandroid/widget/VideoView;

    return-object v0
.end method

.method protected synthetic unifiedDownload()Lccsanandroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lccsancom/san/mads/mraid/getDownloadedList;->deleteDownItem()Lccsanandroid/widget/VideoView;

    move-result-object v0

    return-object v0
.end method
