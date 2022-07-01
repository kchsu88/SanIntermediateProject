.class public Lccsancom/san/landingpage/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static AdError$ErrorCode:C

.field private static AdInfo:I

.field private static getAdSize:C

.field private static getMinIntervalToReturn:C

.field private static setAdSize:I

.field private static valueOf:C


# instance fields
.field ActionTypeDetailPage:Lccsanandroid/widget/TextView;

.field private ActionTypeDownload:Z

.field private volatile ActionTypeReserveApp:Z

.field private AdError:Lccsansan/bv/getDownloadingList;

.field private AdFormat:Lccsansan/ci/getDownloadingList;

.field IncentiveDownloadUtils:Lccsanandroid/widget/LinearLayout;

.field IncentiveSDK:Ljava/lang/String;

.field IncentiveSDK$1:Ljava/lang/Runnable;

.field public addDownloadListener:Z

.field deleteDownItem:Lccsanandroid/widget/TextView;

.field deleteDownList:Lccsanandroid/widget/TextView;

.field execute:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lccsanandroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private getActionType:Lccsansan/dt/removeDownloadListener;

.field getDownloadStatusByUrl:Lccsancom/san/landingpage/widget/RoundCornerCoverView;

.field getDownloadedCount:Lccsanandroid/widget/TextView;

.field getDownloadedList:Lccsancom/san/landingpage/widget/GpCircleRotateView;

.field getDownloadedRecordByUrl:Lccsanandroid/widget/TextView;

.field getDownloadingCount:Lccsanandroid/widget/FrameLayout;

.field getDownloadingList:Lccsanandroid/widget/RelativeLayout;

.field getDownloadingRecordByUrl:Lccsanandroid/widget/ImageView;

.field private getErrorCode:Z

.field private getErrorMessage:Z

.field private getName:Lccsanandroid/view/View$OnClickListener;

.field getPackageNameByRecord:Lccsanandroid/widget/TextView;

.field getThumbPathByRecord:Lccsanandroid/widget/TextView;

.field pause:Lccsanandroid/widget/TextView;

.field private performAction:Lccsansan/dt/deleteDownItem;

.field private performActionWhenOffline:Z

.field removeDownloadListener:Lccsanandroid/widget/TextView;

.field resolveUrl:Lccsanandroid/os/Handler;

.field resume:Lccsanandroid/widget/TextView;

.field private setErrorMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/j/unifiedDownload;",
            ">;"
        }
    .end annotation
.end field

.field shouldTryHandlingAction:Lccsanandroid/widget/TextView;

.field private toString:Lccsanandroid/view/View$OnClickListener;

.field trackReportClick:Lccsanandroid/widget/LinearLayout;

.field trackReportShow:Lccsanandroidx/recyclerview/widget/RecyclerView;

.field unifiedDownload:Lccsanandroid/widget/ImageView;

.field private values:Lccsanandroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    const/16 v0, 0x6f73

    sput-char v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->valueOf:C

    const v0, 0xfde8

    sput-char v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getMinIntervalToReturn:C

    const v0, 0xc822

    sput-char v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getAdSize:C

    const v0, 0xb5be

    sput-char v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdError$ErrorCode:C

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->performActionWhenOffline:Z

    .line 23
    iput-boolean v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->ActionTypeDownload:Z

    .line 24
    iput-boolean v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->ActionTypeReserveApp:Z

    .line 25
    iput-boolean v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getErrorMessage:Z

    .line 26
    iput-boolean v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->addDownloadListener:Z

    .line 27
    iput-boolean v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getErrorCode:Z

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x7

    const-string v1, "\u8eb4\u561e\u9737\u3771\u5282\u5e4c\u0d34\uf45c"

    invoke-static {v1, v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 48
    iput-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveSDK:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setErrorMessage:Ljava/util/List;

    .line 451
    new-instance v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;

    invoke-direct {v0, p0}, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedList;-><init>(Lccsancom/san/landingpage/IncentiveDownloadUtils;)V

    iput-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->toString:Lccsanandroid/view/View$OnClickListener;

    .line 669
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->resolveUrl:Lccsanandroid/os/Handler;

    .line 670
    new-instance v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedRecordByUrl;

    invoke-direct {v0, p0}, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadedRecordByUrl;-><init>(Lccsancom/san/landingpage/IncentiveDownloadUtils;)V

    iput-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveSDK$1:Ljava/lang/Runnable;

    .line 743
    new-instance v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingCount;

    invoke-direct {v0, p0}, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingCount;-><init>(Lccsancom/san/landingpage/IncentiveDownloadUtils;)V

    iput-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getName:Lccsanandroid/view/View$OnClickListener;

    .line 758
    new-instance v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$IncentiveDownloadUtils;

    invoke-direct {v0, p0}, Lccsancom/san/landingpage/IncentiveDownloadUtils$IncentiveDownloadUtils;-><init>(Lccsancom/san/landingpage/IncentiveDownloadUtils;)V

    iput-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdFormat:Lccsansan/ci/getDownloadingList;

    .line 822
    new-instance v0, Lccsancom/san/landingpage/IncentiveDownloadUtils$unifiedDownload;

    invoke-direct {v0, p0}, Lccsancom/san/landingpage/IncentiveDownloadUtils$unifiedDownload;-><init>(Lccsancom/san/landingpage/IncentiveDownloadUtils;)V

    iput-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->values:Lccsanandroid/content/BroadcastReceiver;

    return-void
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsanandroid/widget/LinearLayout;Lccsanandroid/widget/TextView;Lccsansan/dt/removeDownloadListener;Z)Lccsanandroid/view/View;
    .locals 5

    .line 205
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 161
    :cond_0
    :try_start_0
    invoke-static {p1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "san_landing_page_gp_view"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v0

    const-string v1, "san_gp_iv_back"

    .line 163
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/ImageView;

    iput-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/widget/ImageView;

    const-string v1, "san_gp_top_margin"

    .line 164
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->removeDownloadListener:Lccsanandroid/widget/TextView;

    const-string v1, "san_gp_view_root"

    .line 165
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/RelativeLayout;

    iput-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadingList:Lccsanandroid/widget/RelativeLayout;

    const-string v1, "san_ll_first_line"

    .line 167
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/LinearLayout;

    iput-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsanandroid/widget/LinearLayout;

    const-string v1, "san_gp_progress_circle"

    .line 168
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsancom/san/landingpage/widget/GpCircleRotateView;

    iput-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadedList:Lccsancom/san/landingpage/widget/GpCircleRotateView;

    const-string v1, "san_gp_icon_corner"

    .line 169
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsancom/san/landingpage/widget/RoundCornerCoverView;

    iput-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsancom/san/landingpage/widget/RoundCornerCoverView;

    const-string v1, "san_gp_iv_app_icon"

    .line 170
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/ImageView;

    iput-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsanandroid/widget/ImageView;

    const-string v1, "san_gp_tv_app_name"

    .line 171
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->deleteDownItem:Lccsanandroid/widget/TextView;

    const-string v1, "san_gp_tv_app_developer"

    .line 172
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Lccsanandroid/widget/TextView;

    const-string v1, "san_gp_tv_app_score"

    .line 175
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->resume:Lccsanandroid/widget/TextView;

    const-string v1, "san_gp_tv_app_review_count"

    .line 176
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->pause:Lccsanandroid/widget/TextView;

    const-string v1, "\ucf52\uf9ca\u785d\u8da9\u4411\u8f9a\u2721\u7f32\ua253\u54c3\ud84d\u9499\u9729\u1fc6\u77f3\ue2ad\u871f\udd74\u2b90\ubc9c\u1cbd\u3df8\ubcd1\uc99f\ua0ed\uae90\uefdc\u038d"

    invoke-static {v2, v2}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1c

    invoke-static {v1, v3}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadedCount:Lccsanandroid/widget/TextView;

    const-string v1, "san_gp_tv_app_price_num"

    .line 178
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->deleteDownList:Lccsanandroid/widget/TextView;

    const-string v1, "san_gp_ll_buttons"

    .line 181
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/LinearLayout;

    iput-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->trackReportClick:Lccsanandroid/widget/LinearLayout;

    const-string v1, "\ucf52\uf9ca\u785d\u8da9\u4411\u8f9a\u92d1\u0544\uae4f\ueec5\u6d05\u1938\uda5e\uc0c0\ua9ad\ucfd9\u5720\ud8f1"

    const-string v3, ""

    const/16 v4, 0x30

    invoke-static {v3, v4, v2, v2}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-static {v1, v3}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getThumbPathByRecord:Lccsanandroid/widget/TextView;

    const-string v1, "\ucf52\uf9ca\u785d\u8da9\u4411\u8f9a\u92d1\u0544\uae4f\ueec5\ubcd1\uc99f\u846d\u3396\ue97c\uf777\ub752\ubce3\u77f3\ue2ad\u871f\udd74\u2b90\ubc9c\u1cbd\u3df8"

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x1a

    invoke-static {v1, v3}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->shouldTryHandlingAction:Lccsanandroid/widget/TextView;

    const-string v1, "san_gp_btn_open_app"

    .line 184
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsanandroid/widget/TextView;

    const-string v1, "san_ll_fourth_line"

    .line 187
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/LinearLayout;

    const-string v1, "san_rv_gp_gallery"

    .line 188
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->trackReportShow:Lccsanandroidx/recyclerview/widget/RecyclerView;

    const-string v1, "san_gp_tv_app_about"

    .line 191
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    const-string v1, "san_gp_tv_app_property"

    .line 192
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getPackageNameByRecord:Lccsanandroid/widget/TextView;

    .line 194
    iget-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->removeDownloadListener:Lccsanandroid/widget/TextView;

    iget-object v3, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->toString:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 195
    iget-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/widget/ImageView;

    iget-object v3, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->toString:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 196
    iget-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getThumbPathByRecord:Lccsanandroid/widget/TextView;

    iget-object v3, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->toString:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 197
    iget-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsanandroid/widget/ImageView;

    iget-object v3, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->toString:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 198
    iget-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->shouldTryHandlingAction:Lccsanandroid/widget/TextView;

    iget-object v3, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->toString:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 199
    iget-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsanandroid/widget/TextView;

    iget-object v3, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->toString:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 200
    iget-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsanandroid/widget/TextView;

    invoke-virtual {v1, v2}, Lccsanandroid/widget/TextView;->setClickable(Z)V

    .line 202
    invoke-direct/range {p0 .. p5}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/Context;Lccsanandroid/widget/LinearLayout;Lccsanandroid/widget/TextView;Lccsansan/dt/removeDownloadListener;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    sget p1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 p1, p1, 0x11

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 p1, p1, 0x2

    return-object v0

    .line 202
    :catch_0
    move-exception p1

    .line 205
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "init gp landing page exception"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LandPageViewControl"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic IncentiveDownloadUtils(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/dt/removeDownloadListener;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 v1, v0, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object p0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private IncentiveDownloadUtils()V
    .locals 3

    .line 5
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x58

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-direct {p0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadingList()V

    .line 2
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadedList:Lccsancom/san/landingpage/widget/GpCircleRotateView;

    invoke-virtual {v0}, Lccsancom/san/landingpage/widget/GpCircleRotateView;->startAnimate()V

    .line 3
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadedList:Lccsancom/san/landingpage/widget/GpCircleRotateView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getThumbPathByRecord:Lccsanandroid/widget/TextView;

    const/16 v2, 0x1d

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-direct {p0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadingList()V

    .line 2
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadedList:Lccsancom/san/landingpage/widget/GpCircleRotateView;

    invoke-virtual {v0}, Lccsancom/san/landingpage/widget/GpCircleRotateView;->startAnimate()V

    .line 3
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadedList:Lccsancom/san/landingpage/widget/GpCircleRotateView;

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getThumbPathByRecord:Lccsanandroid/widget/TextView;

    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->trackReportClick:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/content/Context;ILccsansan/i/addDownloadListener;Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;)V
    .locals 4

    .line 60
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    const/4 v1, 0x3

    invoke-static {v1}, Lccsansan/bt/getDownloadedRecordByUrl;->IncentiveDownloadUtils(I)I

    move-result v1

    iget-object v2, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdError:Lccsansan/bv/getDownloadingList;

    new-instance v3, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;

    invoke-direct {v3, p0, p2, p3, p4}, Lccsancom/san/landingpage/IncentiveDownloadUtils$removeDownloadListener;-><init>(Lccsancom/san/landingpage/IncentiveDownloadUtils;ILccsansan/i/addDownloadListener;Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;)V

    invoke-static {p1, v0, v1, v2, v3}, Lccsansan/cf/unifiedDownload;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;ILccsansan/bv/getDownloadingList;Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;)V

    sget p1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p1, 0x57

    :try_start_0
    div-int/2addr p1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic IncentiveDownloadUtils(Lccsancom/san/landingpage/IncentiveDownloadUtils;Z)Z
    .locals 3

    .line 2
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 v1, v0, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-boolean p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->performActionWhenOffline:Z

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    return p1

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private addDownloadListener()V
    .locals 4

    .line 2
    new-instance v0, Lccsansan/bv/getDownloadingList;

    iget-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    new-instance v2, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingList;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingList;-><init>(Lccsancom/san/landingpage/IncentiveDownloadUtils;Lccsanandroid/os/Looper;)V

    invoke-direct {v0, v1, v2}, Lccsansan/bv/getDownloadingList;-><init>(Lccsansan/dt/removeDownloadListener;Lccsanandroid/os/Handler;)V

    iput-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdError:Lccsansan/bv/getDownloadingList;

    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .line 226
    nop

    .line 221
    invoke-static {p1, p2, p3}, Lccsansan/bw/getDownloadedCount;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;I)I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 224
    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    packed-switch p3, :pswitch_data_0

    .line 221
    const/4 p3, 0x1

    goto :goto_1

    :pswitch_0
    nop

    .line 226
    const/4 p3, 0x0

    .line 221
    :goto_1
    if-eqz p3, :cond_4

    .line 226
    sget p3, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 p3, p3, 0x9

    rem-int/lit16 v2, p3, 0x80

    sput v2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_1

    .line 224
    const/16 p3, 0x54

    goto :goto_2

    :cond_1
    const/16 p3, 0x31

    :goto_2
    invoke-static {p1, p2}, Lccsancom/san/core/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    packed-switch p3, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    if-nez p1, :cond_4

    :pswitch_2
    goto :goto_5

    :goto_3
    const/16 p2, 0x47

    :try_start_0
    div-int/2addr p2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    const/16 p1, 0x50

    goto :goto_4

    :cond_2
    const/16 p1, 0x13

    :goto_4
    packed-switch p1, :pswitch_data_2

    goto :goto_7

    .line 226
    :goto_5
    const-string p1, "LandPageViewControl"

    const-string p2, "openApp failed!"

    invoke-static {p1, p2}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/2addr p1, v1

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    .line 224
    const/4 v0, 0x1

    goto :goto_6

    :cond_3
    nop

    :goto_6
    packed-switch v0, :pswitch_data_3

    .line 226
    :pswitch_3
    goto :goto_7

    :catchall_0
    move-exception p1

    throw p1

    :cond_4
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x50
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private addDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)V
    .locals 7

    .line 114
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "openApp"

    const-string v4, "LandPageViewControl"

    if-eqz v0, :cond_1

    .line 97
    invoke-static {v4, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->execute:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/Context;

    invoke-static {v0, p2}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    const/4 v3, 0x0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 114
    :catchall_0
    move-exception p1

    throw p1

    .line 97
    :cond_1
    invoke-static {v4, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->execute:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/Context;

    invoke-static {v0, p2}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x5f

    goto :goto_1

    :cond_2
    const/16 v0, 0x5a

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 99
    :pswitch_0
    invoke-direct {p0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->deleteDownItem()V

    .line 101
    :goto_2
    :pswitch_1
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    .line 102
    new-instance v3, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadStatusByUrl;

    invoke-direct {v3, p0}, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadStatusByUrl;-><init>(Lccsancom/san/landingpage/IncentiveDownloadUtils;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v0, v3, v5, v6}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 98
    goto :goto_3

    :cond_3
    const/4 v1, 0x1

    :goto_3
    packed-switch v1, :pswitch_data_2

    .line 112
    nop

    .line 114
    const-string p1, "openApp return because productData = null"

    invoke-static {v4, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 112
    :pswitch_2
    invoke-virtual {p2}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lccsansan/dt/resume;->getDownloadStatusByUrl()I

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;I)V

    .line 114
    :goto_4
    nop

    .line 98
    sget p1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 p1, p1, 0x2

    .line 114
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5a
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private addDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/resume;Lccsansan/i/addDownloadListener;Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;)V
    .locals 8

    .line 59
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v7, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lccsancom/san/landingpage/IncentiveDownloadUtils$addDownloadListener;-><init>(Lccsancom/san/landingpage/IncentiveDownloadUtils;Lccsansan/dt/resume;Lccsanandroid/content/Context;Lccsansan/i/addDownloadListener;Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;)V

    invoke-virtual {v0, v7}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private addDownloadListener(Lccsanandroid/widget/TextView;Lccsanandroid/widget/LinearLayout;Z)V
    .locals 9

    .line 263
    nop

    .line 227
    const-string v0, "LandPageViewControl"

    const-string v1, "start animate scroll from bottom"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->execute:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/bw/getMinIntervalToReturn;->getDownloadedList(Lccsanandroid/content/Context;)I

    move-result v0

    .line 229
    iget-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->execute:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsansan/bw/getMinIntervalToReturn;->getDownloadingRecordByUrl(Lccsanandroid/content/Context;)I

    move-result v1

    .line 231
    invoke-virtual {p2}, Lccsanandroid/widget/LinearLayout;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Lccsanandroid/view/ViewGroup;

    if-nez p2, :cond_0

    .line 263
    return-void

    .line 235
    :cond_0
    invoke-virtual {p2}, Lccsanandroid/view/ViewGroup;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_1

    .line 263
    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    packed-switch v5, :pswitch_data_0

    .line 238
    goto :goto_1

    .line 263
    :pswitch_0
    sget v5, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 v5, v5, 0x39

    rem-int/lit16 v8, v5, 0x80

    sput v8, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/2addr v5, v7

    if-nez v5, :cond_2

    .line 238
    :cond_2
    iget-object v5, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v5}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadingCount()F

    move-result v5

    iget-object v8, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v8}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v8

    invoke-virtual {v8}, Lccsansan/dt/getDownloadStatusByUrl;->pause()F

    move-result v8

    mul-float v8, v8, v6

    div-float/2addr v5, v8

    int-to-float v1, v1

    mul-float v1, v1, v5

    float-to-int v1, v1

    sub-int v1, v0, v1

    .line 263
    goto :goto_2

    :goto_1
    sget v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/2addr v1, v7

    if-eqz v1, :cond_3

    :cond_3
    move v1, v0

    .line 243
    :goto_2
    iput v1, v2, Lccsanandroid/widget/FrameLayout$LayoutParams;->height:I

    .line 244
    iput v0, v2, Lccsanandroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 245
    invoke-virtual {p2, v2}, Lccsanandroid/view/ViewGroup;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 246
    invoke-virtual {p2, v4}, Lccsanandroid/view/ViewGroup;->setVisibility(I)V

    .line 248
    new-array v0, v3, [F

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, v0, v4

    const-string v1, "translationY"

    invoke-static {p2, v1, v0}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object p2

    if-eqz p3, :cond_4

    .line 263
    const/16 p3, 0xa

    goto :goto_3

    :cond_4
    const/4 p3, 0x3

    :goto_3
    const-string v0, "alpha"

    packed-switch p3, :pswitch_data_1

    .line 254
    const/high16 p3, -0x1000000

    .line 256
    invoke-virtual {p1, p3}, Lccsanandroid/widget/TextView;->setBackgroundColor(I)V

    const/4 p3, 0x0

    .line 257
    invoke-virtual {p1, p3}, Lccsanandroid/widget/TextView;->setAlpha(F)V

    .line 258
    new-array p3, v7, [F

    fill-array-data p3, :array_0

    invoke-static {p1, v0, p3}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_4

    .line 248
    :pswitch_1
    const/4 p3, -0x1

    .line 251
    invoke-virtual {p1, p3}, Lccsanandroid/widget/TextView;->setBackgroundColor(I)V

    .line 252
    invoke-virtual {p1, v6}, Lccsanandroid/widget/TextView;->setAlpha(F)V

    .line 253
    new-array p3, v7, [F

    fill-array-data p3, :array_1

    invoke-static {p1, v0, p3}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object p1

    .line 254
    iget-object p3, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadingList:Lccsanandroid/widget/RelativeLayout;

    const-string v0, "san_gp_corner_right_angle"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Lccsanandroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_5

    .line 263
    :goto_4
    sget p3, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 p3, p3, 0x11

    rem-int/lit16 v0, p3, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/2addr p3, v7

    if-nez p3, :cond_5

    .line 260
    :cond_5
    :goto_5
    new-instance p3, Lccsanandroid/animation/AnimatorSet;

    invoke-direct {p3}, Lccsanandroid/animation/AnimatorSet;-><init>()V

    .line 261
    new-array v0, v7, [Lccsanandroid/animation/Animator;

    aput-object p2, v0, v4

    aput-object p1, v0, v3

    invoke-virtual {p3, v0}, Lccsanandroid/animation/AnimatorSet;->playTogether([Lccsanandroid/animation/Animator;)V

    const-wide/16 p1, 0x258

    .line 262
    invoke-virtual {p3, p1, p2}, Lccsanandroid/animation/AnimatorSet;->setDuration(J)Lccsanandroid/animation/AnimatorSet;

    .line 263
    invoke-virtual {p3}, Lccsanandroid/animation/AnimatorSet;->start()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x3f19999a    # 0.6f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic addDownloadListener(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Z
    .locals 2

    .line 1
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-boolean p0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->performActionWhenOffline:Z

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return p0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private deleteDownItem()V
    .locals 5

    .line 11
    nop

    .line 3
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getThumbPathByRecord:Lccsanandroid/widget/TextView;

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_5

    .line 3
    :catchall_0
    move-exception v0

    throw v0

    .line 2
    :cond_1
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getThumbPathByRecord:Lccsanandroid/widget/TextView;

    if-eqz v0, :cond_2

    const/16 v0, 0x1f

    goto :goto_1

    :cond_2
    const/16 v0, 0x5b

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 11
    :pswitch_0
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    .line 3
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :try_start_1
    array-length v1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_3

    .line 2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    nop

    :goto_2
    packed-switch v2, :pswitch_data_2

    goto :goto_3

    .line 11
    :catchall_1
    move-exception v0

    throw v0

    .line 3
    :cond_4
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4
    :pswitch_1
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getThumbPathByRecord:Lccsanandroid/widget/TextView;

    iget-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveSDK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 6
    :cond_5
    :goto_3
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getThumbPathByRecord:Lccsanandroid/widget/TextView;

    const-string v1, ""

    invoke-static {v1, v4}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x7

    const-string v2, "\u8eb4\u561e\u9737\u3771\u5282\u5e4c\u0d34\uf45c"

    invoke-static {v2, v1}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 v0, v0, 0x2

    .line 8
    :goto_4
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getThumbPathByRecord:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, v4}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 10
    :goto_5
    :pswitch_2
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->trackReportClick:Lccsanandroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    .line 11
    invoke-virtual {v0, v1}, Lccsanandroid/widget/LinearLayout;->setVisibility(I)V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private getDownloadStatusByUrl()Ljava/lang/String;
    .locals 3

    .line 2
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x36

    goto :goto_0

    :cond_0
    const/16 v0, 0x42

    :goto_0
    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getName()Lccsansan/dt/deleteDownItem;

    move-result-object v0

    iget-object v0, v0, Lccsansan/dt/deleteDownItem;->removeDownloadListener:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :try_start_1
    array-length v1, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_3

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getName()Lccsansan/dt/deleteDownItem;

    move-result-object v0

    iget-object v0, v0, Lccsansan/dt/deleteDownItem;->removeDownloadListener:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sget v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 v1, v1, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :goto_3
    const-string v0, ""

    return-object v0

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadedCount()V
    .locals 3

    .line 5
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->values:Lccsanandroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 5
    const/16 v0, 0x2f

    goto :goto_0

    :cond_1
    const/16 v0, 0xb

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    goto :goto_2

    :pswitch_0
    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 2
    :cond_2
    :try_start_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->values:Lccsanandroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->unregisterReceiver(Lccsanandroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 5
    const-string v1, "LandPageViewControl"

    const-string v2, "unregister error"

    invoke-static {v1, v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadedList()V
    .locals 3

    .line 7
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    :cond_0
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getThumbPathByRecord:Lccsanandroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 7
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    goto :goto_2

    .line 2
    :pswitch_0
    nop

    .line 3
    const-string v2, "Open"

    invoke-virtual {v0, v2}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getThumbPathByRecord:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 7
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    goto :goto_1

    .line 6
    :goto_2
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->trackReportClick:Lccsanandroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 7
    const/4 v1, 0x4

    goto :goto_3

    :cond_3
    const/16 v1, 0x1b

    :goto_3
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    .line 6
    :pswitch_1
    const/16 v1, 0x8

    .line 7
    invoke-virtual {v0, v1}, Lccsanandroid/widget/LinearLayout;->setVisibility(I)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
    .end packed-switch
.end method

.method private getDownloadedRecordByUrl()V
    .locals 3

    .line 2
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x27

    goto :goto_0

    :cond_0
    const/16 v0, 0x21

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-direct {p0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadingList()V

    .line 2
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadedList:Lccsancom/san/landingpage/widget/GpCircleRotateView;

    invoke-virtual {v0}, Lccsancom/san/landingpage/widget/GpCircleRotateView;->startInstallAnimate()V

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-direct {p0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadingList()V

    .line 2
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadedList:Lccsancom/san/landingpage/widget/GpCircleRotateView;

    invoke-virtual {v0}, Lccsancom/san/landingpage/widget/GpCircleRotateView;->startInstallAnimate()V

    goto :goto_2

    :goto_1
    :try_start_0
    array-length v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x3a

    goto :goto_3

    :cond_1
    const/16 v0, 0x55

    :goto_3
    packed-switch v0, :pswitch_data_1

    return-void

    :pswitch_1
    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic getDownloadedRecordByUrl(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Z
    .locals 2

    .line 1
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-boolean p0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getErrorCode:Z

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v0, 0x1a

    goto :goto_0

    :cond_1
    const/16 v0, 0x4f

    :goto_0
    packed-switch v0, :pswitch_data_0

    return p0

    :pswitch_0
    const/16 v0, 0x33

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadingList()V
    .locals 9

    .line 13
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 2
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->ActionTypeReserveApp:Z

    if-eqz v0, :cond_2

    :goto_1
    goto :goto_2

    :pswitch_0
    iget-boolean v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->ActionTypeReserveApp:Z

    :try_start_0
    array-length v5, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 13
    :catchall_0
    move-exception v0

    throw v0

    :goto_2
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 2
    const/16 v0, 0x33

    goto :goto_3

    :cond_1
    const/16 v0, 0x28

    :goto_3
    packed-switch v0, :pswitch_data_1

    .line 13
    return-void

    :pswitch_1
    :try_start_1
    array-length v0, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    throw v0

    .line 5
    :cond_2
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsanandroid/widget/ImageView;

    new-array v4, v1, [F

    fill-array-data v4, :array_0

    const-string v5, "scaleX"

    invoke-static {v0, v5, v4}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v0

    .line 6
    iget-object v4, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsanandroid/widget/ImageView;

    new-array v6, v1, [F

    fill-array-data v6, :array_1

    const-string v7, "scaleY"

    invoke-static {v4, v7, v6}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v4

    .line 7
    iget-object v6, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsancom/san/landingpage/widget/RoundCornerCoverView;

    new-array v8, v1, [F

    fill-array-data v8, :array_2

    invoke-static {v6, v5, v8}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v5

    .line 8
    iget-object v6, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsancom/san/landingpage/widget/RoundCornerCoverView;

    new-array v8, v1, [F

    fill-array-data v8, :array_3

    invoke-static {v6, v7, v8}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v6

    .line 9
    new-instance v7, Lccsanandroid/animation/AnimatorSet;

    invoke-direct {v7}, Lccsanandroid/animation/AnimatorSet;-><init>()V

    const/4 v8, 0x4

    .line 10
    new-array v8, v8, [Lccsanandroid/animation/Animator;

    aput-object v0, v8, v2

    aput-object v4, v8, v3

    aput-object v5, v8, v1

    const/4 v0, 0x3

    aput-object v6, v8, v0

    invoke-virtual {v7, v8}, Lccsanandroid/animation/AnimatorSet;->playTogether([Lccsanandroid/animation/Animator;)V

    const-wide/16 v0, 0x258

    .line 11
    invoke-virtual {v7, v0, v1}, Lccsanandroid/animation/AnimatorSet;->setDuration(J)Lccsanandroid/animation/AnimatorSet;

    .line 12
    invoke-virtual {v7}, Lccsanandroid/animation/AnimatorSet;->start()V

    .line 13
    iput-boolean v3, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->ActionTypeReserveApp:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x33
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method private getDownloadingList(J)V
    .locals 9

    .line 278
    nop

    .line 266
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadedList:Lccsancom/san/landingpage/widget/GpCircleRotateView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadedList:Lccsancom/san/landingpage/widget/GpCircleRotateView;

    invoke-virtual {v0}, Lccsancom/san/landingpage/widget/GpCircleRotateView;->stopAnimate()V

    .line 268
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsanandroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "scaleX"

    invoke-static {v0, v4, v3}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v0

    .line 269
    iget-object v3, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsanandroid/widget/ImageView;

    new-array v5, v2, [F

    fill-array-data v5, :array_1

    const-string v6, "scaleY"

    invoke-static {v3, v6, v5}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v3

    .line 270
    iget-object v5, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsancom/san/landingpage/widget/RoundCornerCoverView;

    new-array v7, v2, [F

    fill-array-data v7, :array_2

    invoke-static {v5, v4, v7}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v4

    .line 271
    iget-object v5, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsancom/san/landingpage/widget/RoundCornerCoverView;

    new-array v7, v2, [F

    fill-array-data v7, :array_3

    invoke-static {v5, v6, v7}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v5

    .line 272
    new-instance v6, Lccsanandroid/animation/AnimatorSet;

    invoke-direct {v6}, Lccsanandroid/animation/AnimatorSet;-><init>()V

    const/4 v7, 0x4

    .line 273
    new-array v7, v7, [Lccsanandroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v3, v7, v0

    aput-object v4, v7, v2

    const/4 v3, 0x3

    aput-object v5, v7, v3

    invoke-virtual {v6, v7}, Lccsanandroid/animation/AnimatorSet;->playTogether([Lccsanandroid/animation/Animator;)V

    .line 274
    invoke-virtual {v6, p1, p2}, Lccsanandroid/animation/AnimatorSet;->setDuration(J)Lccsanandroid/animation/AnimatorSet;

    .line 275
    invoke-virtual {v6}, Lccsanandroid/animation/AnimatorSet;->start()V

    .line 276
    iget-object p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->trackReportClick:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Lccsanandroid/widget/LinearLayout;->setVisibility(I)V

    .line 277
    iget-object p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getThumbPathByRecord:Lccsanandroid/widget/TextView;

    invoke-virtual {p1, v8}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 278
    iput-boolean v8, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->ActionTypeReserveApp:Z

    sget p1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 p1, p1, 0x17

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/2addr p1, v2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :goto_0
    const/16 p1, 0x20

    :try_start_0
    div-int/2addr p1, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic getDownloadingList(Lccsancom/san/landingpage/IncentiveDownloadUtils;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-direct {p0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload()V

    sget p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 p0, p0, 0x59

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;)Z
    .locals 3

    .line 373
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 372
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p0

    .line 373
    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Lccsanandroid/content/res/Configuration;->orientation:I

    if-ne p0, v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    .line 372
    :cond_1
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p0

    .line 373
    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Lccsanandroid/content/res/Configuration;->orientation:I

    if-ne p0, v2, :cond_3

    :goto_1
    sget p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 p0, p0, 0x69

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    packed-switch p0, :pswitch_data_1

    goto :goto_3

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    :pswitch_1
    sget p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 p0, p0, 0x2b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_4

    :cond_4
    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadingRecordByUrl()V
    .locals 3

    .line 7
    nop

    .line 1
    :try_start_0
    new-instance v0, Lccsanandroid/content/IntentFilter;

    invoke-direct {v0}, Lccsanandroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 2
    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 3
    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 4
    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->values:Lccsanandroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    const-string v1, "LandPageViewControl"

    const-string v2, "register error"

    invoke-static {v1, v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x2e

    goto :goto_1

    :cond_0
    const/16 v0, 0x5b

    :goto_1
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    :try_start_1
    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic getDownloadingRecordByUrl(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Z
    .locals 2

    .line 1
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-boolean p0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->ActionTypeReserveApp:Z

    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return p0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/landingpage/IncentiveDownloadUtils;J)V
    .locals 2

    .line 4
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadingList(J)V

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x5

    :try_start_0
    div-int/2addr p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    sget p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 p0, p0, 0x41

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/16 p0, 0x20

    goto :goto_1

    :cond_1
    const/16 p0, 0x2a

    :goto_1
    packed-switch p0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-void

    :goto_2
    const/4 p0, 0x0

    :try_start_1
    array-length p0, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2a
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Z
    .locals 3

    .line 1
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 v1, v0, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-boolean p0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->ActionTypeDownload:Z

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 v0, v0, 0x2

    return p0
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/landingpage/IncentiveDownloadUtils;Z)Z
    .locals 2

    .line 2
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x3d

    goto :goto_0

    :cond_0
    const/16 v0, 0x4a

    :goto_0
    iput-boolean p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->ActionTypeDownload:Z

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v1, v1, 0x2

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method private unifiedDownload(Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;Lccsansan/dt/deleteDownItem;)Lccsancom/san/landingpage/widget/AdItemWeight;
    .locals 5

    .line 158
    const-string v0, "9"

    const-string v1, "RESERVE_BUTTON"

    .line 136
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsancom/san/landingpage/widget/AdItemWeight;->valueOf(Ljava/lang/String;)Lccsancom/san/landingpage/widget/AdItemWeight;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 140
    iget-object p2, p2, Lccsansan/dt/deleteDownItem;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 142
    sget p2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 p2, p2, 0x11

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    .line 140
    :cond_0
    sget-object p2, Lccsancom/san/landingpage/widget/AdItemWeight;->MAIN_BUTTON:Lccsancom/san/landingpage/widget/AdItemWeight;

    if-ne v4, p2, :cond_2

    .line 158
    sget p2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 p2, p2, 0x69

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    .line 141
    invoke-static {v1}, Lccsancom/san/landingpage/widget/AdItemWeight;->valueOf(Ljava/lang/String;)Lccsancom/san/landingpage/widget/AdItemWeight;

    move-result-object v4

    .line 142
    sget-object p2, Lccsancom/san/landingpage/widget/AdItemWeight;->RESERVE_BUTTON:Lccsancom/san/landingpage/widget/AdItemWeight;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception p1

    throw p1

    .line 140
    :cond_1
    nop

    .line 141
    invoke-static {v1}, Lccsancom/san/landingpage/widget/AdItemWeight;->valueOf(Ljava/lang/String;)Lccsancom/san/landingpage/widget/AdItemWeight;

    move-result-object v4

    .line 142
    sget-object p2, Lccsancom/san/landingpage/widget/AdItemWeight;->RESERVE_BUTTON:Lccsancom/san/landingpage/widget/AdItemWeight;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    .line 144
    :cond_2
    :goto_0
    sget-object p2, Lccsancom/san/landingpage/widget/AdItemWeight;->DIVIDER:Lccsancom/san/landingpage/widget/AdItemWeight;

    if-ne v4, p2, :cond_6

    goto :goto_3

    .line 145
    :catchall_1
    move-exception v4

    goto :goto_4

    :catch_0
    move-exception v4

    :try_start_2
    const-string v4, "DIVIDER"

    .line 146
    invoke-static {v4}, Lccsancom/san/landingpage/widget/AdItemWeight;->valueOf(Ljava/lang/String;)Lccsancom/san/landingpage/widget/AdItemWeight;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 148
    iget-object p2, p2, Lccsansan/dt/deleteDownItem;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lccsancom/san/landingpage/widget/AdItemWeight;->MAIN_BUTTON:Lccsancom/san/landingpage/widget/AdItemWeight;

    if-ne v2, p2, :cond_3

    .line 142
    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    const/4 p2, 0x1

    :goto_1
    packed-switch p2, :pswitch_data_0

    .line 148
    nop

    .line 149
    invoke-static {v1}, Lccsancom/san/landingpage/widget/AdItemWeight;->valueOf(Ljava/lang/String;)Lccsancom/san/landingpage/widget/AdItemWeight;

    move-result-object p2

    .line 150
    sget-object v0, Lccsancom/san/landingpage/widget/AdItemWeight;->RESERVE_BUTTON:Lccsancom/san/landingpage/widget/AdItemWeight;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    .line 158
    move-object v4, p2

    goto :goto_2

    .line 152
    :cond_4
    :pswitch_0
    move-object v4, v2

    :goto_2
    sget-object p2, Lccsancom/san/landingpage/widget/AdItemWeight;->DIVIDER:Lccsancom/san/landingpage/widget/AdItemWeight;

    if-ne v4, p2, :cond_6

    .line 142
    sget p2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 p2, p2, 0x1d

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_5

    .line 158
    :cond_5
    nop

    .line 144
    :goto_3
    nop

    .line 145
    iput v3, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->unifiedDownload:I

    .line 152
    :cond_6
    return-object v4

    .line 153
    :goto_4
    iget-object p2, p2, Lccsansan/dt/deleteDownItem;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p2, Lccsancom/san/landingpage/widget/AdItemWeight;->MAIN_BUTTON:Lccsancom/san/landingpage/widget/AdItemWeight;

    if-nez p2, :cond_7

    .line 154
    invoke-static {v1}, Lccsancom/san/landingpage/widget/AdItemWeight;->valueOf(Ljava/lang/String;)Lccsancom/san/landingpage/widget/AdItemWeight;

    move-result-object v2

    .line 155
    sget-object p2, Lccsancom/san/landingpage/widget/AdItemWeight;->RESERVE_BUTTON:Lccsancom/san/landingpage/widget/AdItemWeight;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    .line 157
    :cond_7
    sget-object p2, Lccsancom/san/landingpage/widget/AdItemWeight;->DIVIDER:Lccsancom/san/landingpage/widget/AdItemWeight;

    if-ne v2, p2, :cond_8

    .line 142
    const/16 p2, 0x4e

    goto :goto_5

    :cond_8
    const/16 p2, 0x5e

    :goto_5
    packed-switch p2, :pswitch_data_1

    .line 157
    nop

    .line 158
    iput v3, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->unifiedDownload:I

    :pswitch_1
    throw v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_1
    .end packed-switch
.end method

.method private static unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1105
    sget-object v0, Lccsansan/d/IncentiveSDK;->removeDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1107
    :try_start_0
    array-length v1, p0

    new-array v1, v1, [C

    .line 1109
    const/4 v2, 0x0

    sput v2, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    .line 1110
    const/4 v3, 0x2

    new-array v4, v3, [C

    .line 1111
    :goto_0
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    array-length v6, p0

    if-ge v5, v6, :cond_2

    .line 1113
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    aget-char v5, p0, v5

    aput-char v5, v4, v2

    .line 1114
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aget-char v5, p0, v5

    aput-char v5, v4, v6

    .line 1116
    const v5, 0xe370

    .line 1117
    const/4 v7, 0x0

    :goto_1
    const/16 v8, 0x10

    if-ge v7, v8, :cond_1

    .line 1119
    aget-char v8, v4, v6

    aget-char v9, v4, v2

    add-int/2addr v9, v5

    aget-char v10, v4, v2

    shl-int/lit8 v10, v10, 0x4

    sget-char v11, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getMinIntervalToReturn:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v2

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getAdSize:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v6

    .line 1122
    aget-char v8, v4, v2

    aget-char v9, v4, v6

    add-int/2addr v9, v5

    aget-char v10, v4, v6

    shl-int/lit8 v10, v10, 0x4

    sget-char v11, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdError$ErrorCode:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v6

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsancom/san/landingpage/IncentiveDownloadUtils;->valueOf:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v2

    .line 1126
    const v8, 0x9e37

    sub-int/2addr v5, v8

    .line 1117
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1128
    :cond_1
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    aget-char v7, v4, v2

    aput-char v7, v1, v5

    .line 1129
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    add-int/2addr v5, v6

    aget-char v6, v4, v6

    aput-char v6, v1, v5

    .line 1130
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    add-int/2addr v5, v3

    sput v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    .line 1131
    goto :goto_0

    .line 1134
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1135
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method static synthetic unifiedDownload(Lccsancom/san/landingpage/IncentiveDownloadUtils;)Lccsansan/bv/getDownloadingList;
    .locals 2

    .line 1
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object p0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdError:Lccsansan/bv/getDownloadingList;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x41

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private unifiedDownload()V
    .locals 6

    .line 212
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 206
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->execute:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 207
    iget-object v4, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->resolveUrl:Lccsanandroid/os/Handler;

    if-eqz v4, :cond_1

    :goto_1
    goto :goto_2

    .line 206
    :pswitch_0
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->execute:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 207
    iget-object v4, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->resolveUrl:Lccsanandroid/os/Handler;

    :try_start_0
    array-length v5, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    goto :goto_1

    .line 212
    :catchall_0
    move-exception v0

    throw v0

    .line 208
    :goto_2
    iget-object v5, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveSDK$1:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 209
    iput-object v3, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->resolveUrl:Lccsanandroid/os/Handler;

    :cond_1
    if-eqz v0, :cond_2

    .line 212
    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    nop

    :goto_3
    packed-switch v1, :pswitch_data_1

    :goto_4
    goto :goto_6

    .line 207
    :pswitch_1
    sget v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 212
    const/16 v1, 0x27

    goto :goto_5

    :cond_3
    const/4 v1, 0x5

    :goto_5
    check-cast v0, Lccsanandroid/app/Activity;

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->finish()V

    packed-switch v1, :pswitch_data_2

    :try_start_1
    array-length v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    .line 207
    :catchall_1
    move-exception v0

    throw v0

    .line 212
    :goto_6
    :pswitch_2
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    const/4 v0, 0x7

    goto :goto_7

    :cond_4
    const/16 v0, 0x31

    :goto_7
    packed-switch v0, :pswitch_data_3

    return-void

    :pswitch_3
    const/16 v0, 0x28

    :try_start_2
    div-int/2addr v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception v0

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7
        :pswitch_3
    .end packed-switch
.end method

.method private unifiedDownload(JJ)V
    .locals 2

    .line 265
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 264
    :cond_0
    invoke-direct {p0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadingList()V

    .line 265
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadedList:Lccsancom/san/landingpage/widget/GpCircleRotateView;

    long-to-float p1, p1

    long-to-float p2, p3

    invoke-virtual {v0, p1, p2}, Lccsancom/san/landingpage/widget/GpCircleRotateView;->setProgress(FF)V

    sget p1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private unifiedDownload(Lccsanandroid/content/Context;Lccsanandroid/view/View;Lccsanandroid/widget/FrameLayout;Lccsanandroid/widget/LinearLayout;)V
    .locals 4

    .line 135
    nop

    .line 106
    :try_start_0
    instance-of v0, p2, Lccsancom/san/landingpage/widget/LandingMainButton;

    const/16 v1, 0x50

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    .line 107
    new-instance p4, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p4, v3, v2}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 108
    iput v1, p4, Lccsanandroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 109
    invoke-virtual {p3, p2, p4}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 111
    check-cast p2, Lccsancom/san/landingpage/widget/LandingMainButton;

    invoke-virtual {p2}, Lccsancom/san/landingpage/widget/LandingMainButton;->getProgress()Lccsansan/j/unifiedDownload;

    move-result-object p2

    .line 112
    iget-object p3, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    new-instance p4, Lccsancom/san/landingpage/IncentiveDownloadUtils$deleteDownItem;

    invoke-direct {p4, p0, p1}, Lccsancom/san/landingpage/IncentiveDownloadUtils$deleteDownItem;-><init>(Lccsancom/san/landingpage/IncentiveDownloadUtils;Lccsanandroid/content/Context;)V

    invoke-virtual {p2, p3, p4}, Lccsansan/j/unifiedDownload;->registerClick(Lccsansan/dt/removeDownloadListener;Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;)V

    .line 120
    iget-object p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setErrorMessage:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    sget p1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 p1, p1, 0x2

    goto/16 :goto_6

    .line 122
    :cond_0
    :try_start_1
    instance-of p1, p2, Lccsancom/san/landingpage/widget/LandingReserveButton;

    if-eqz p1, :cond_1

    .line 123
    new-instance p1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v3, v2}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 124
    iput v1, p1, Lccsanandroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 125
    invoke-virtual {p3, p2, p1}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 126
    check-cast p2, Lccsancom/san/landingpage/widget/LandingReserveButton;

    iget-object p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p2, p1}, Lccsancom/san/landingpage/widget/LandingReserveButton;->updateNativeAd(Lccsansan/dt/removeDownloadListener;)V

    goto :goto_5

    .line 128
    :cond_1
    instance-of p1, p2, Lccsansan/ci/unifiedDownload;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 130
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 135
    :pswitch_0
    sget p1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 p1, p1, 0x37

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    .line 129
    :try_start_2
    move-object p1, p2

    check-cast p1, Lccsansan/ci/unifiedDownload;

    iget-object v2, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdFormat:Lccsansan/ci/getDownloadingList;

    invoke-interface {p1, v2}, Lccsansan/ci/unifiedDownload;->setVideoStatusListener(Lccsansan/ci/getDownloadingList;)V

    .line 130
    move-object p1, p2

    check-cast p1, Lccsansan/ci/unifiedDownload;

    iget-object v2, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getName:Lccsanandroid/view/View$OnClickListener;

    invoke-interface {p1, v2}, Lccsansan/ci/unifiedDownload;->setClickListenerForScreen(Lccsanandroid/view/View$OnClickListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p1, 0x0

    :try_start_3
    array-length p1, p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 135
    :catchall_0
    move-exception p1

    throw p1

    .line 129
    :cond_3
    :try_start_4
    move-object p1, p2

    check-cast p1, Lccsansan/ci/unifiedDownload;

    iget-object v2, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdFormat:Lccsansan/ci/getDownloadingList;

    invoke-interface {p1, v2}, Lccsansan/ci/unifiedDownload;->setVideoStatusListener(Lccsansan/ci/getDownloadingList;)V

    .line 130
    move-object p1, p2

    check-cast p1, Lccsansan/ci/unifiedDownload;

    iget-object v2, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getName:Lccsanandroid/view/View$OnClickListener;

    invoke-interface {p1, v2}, Lccsansan/ci/unifiedDownload;->setClickListenerForScreen(Lccsanandroid/view/View$OnClickListener;)V

    .line 135
    :goto_1
    nop

    .line 132
    :goto_2
    instance-of p1, p2, Lccsancom/san/landingpage/widget/LandingScreenSeeMoreView;

    if-eqz p1, :cond_4

    .line 130
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    nop

    :goto_3
    packed-switch v0, :pswitch_data_1

    .line 135
    invoke-virtual {p4, p2}, Lccsanandroid/widget/LinearLayout;->addView(Lccsanandroid/view/View;)V

    goto :goto_4

    .line 133
    :pswitch_1
    invoke-virtual {p3, p2}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    .line 130
    :goto_4
    sget p1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 p1, p1, 0x49

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_6

    .line 135
    :catch_0
    move-exception p1

    :goto_5
    nop

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private unifiedDownload(Lccsanandroid/content/Context;Lccsanandroid/widget/LinearLayout;Lccsanandroid/widget/TextView;Lccsansan/dt/removeDownloadListener;Z)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p5

    .line 96
    sget v2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 v2, v2, 0x71

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual/range {p4 .. p4}, Lccsansan/dt/removeDownloadListener;->getName()Lccsansan/dt/deleteDownItem;

    move-result-object v2

    iget-object v2, v2, Lccsansan/dt/deleteDownItem;->getDownloadingList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :try_start_0
    array-length v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    move-object v2, v0

    throw v2

    .line 3
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lccsansan/dt/removeDownloadListener;->getName()Lccsansan/dt/deleteDownItem;

    move-result-object v2

    iget-object v2, v2, Lccsansan/dt/deleteDownItem;->getDownloadingList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/16 v9, 0x28

    if-eqz v8, :cond_8

    sget v8, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 v8, v8, 0x1b

    rem-int/lit16 v10, v8, 0x80

    sput v10, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lccsansan/dt/deleteDownItem$addDownloadListener;

    .line 4
    instance-of v10, v8, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    if-eqz v10, :cond_7

    .line 5
    check-cast v8, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    .line 6
    iget-object v10, v8, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    const-string v11, "app"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 96
    sget v4, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 v4, v4, 0x47

    rem-int/lit16 v9, v4, 0x80

    sput v9, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    .line 6
    :cond_2
    move-object v4, v8

    goto :goto_4

    .line 8
    :cond_3
    iget-object v10, v8, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    const-string v11, "screenshot"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 29
    goto :goto_2

    :cond_4
    const/16 v9, 0x10

    :goto_2
    packed-switch v9, :pswitch_data_0

    .line 8
    move-object v6, v8

    goto :goto_4

    .line 10
    :pswitch_0
    iget-object v9, v8, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    const-string v10, "expand_text"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3
    sget v7, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 v7, v7, 0x67

    rem-int/lit16 v9, v7, 0x80

    sput v9, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_5

    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    throw v2

    .line 10
    :cond_5
    nop

    .line 12
    :goto_3
    move-object v7, v8

    goto :goto_4

    :cond_6
    iget-object v9, v8, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    const-string v10, "main_button"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v5, v8

    goto :goto_4

    :cond_7
    nop

    :goto_4
    goto :goto_1

    :cond_8
    if-nez v4, :cond_9

    .line 19
    const-string v0, "LandPageViewControl"

    const-string v2, "LandingPageData is null"

    invoke-static {v0, v2}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_b

    .line 25
    iget-object v8, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->execute:Ljava/lang/ref/SoftReference;

    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lccsanandroid/content/Context;

    invoke-static {v8}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 3
    sget v8, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 v8, v8, 0x2b

    rem-int/lit16 v10, v8, 0x80

    sput v10, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_a

    .line 26
    iget-object v8, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->removeDownloadListener:Lccsanandroid/widget/TextView;

    invoke-virtual {v8, v3}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_a
    iget-object v8, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->removeDownloadListener:Lccsanandroid/widget/TextView;

    invoke-virtual {v8, v2}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 27
    :goto_5
    iget-object v8, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->removeDownloadListener:Lccsanandroid/widget/TextView;

    invoke-virtual {v8, v3}, Lccsanandroid/widget/TextView;->setFocusable(Z)V

    .line 28
    iget-object v8, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->removeDownloadListener:Lccsanandroid/widget/TextView;

    invoke-virtual {v8, v3}, Lccsanandroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 29
    iget-object v8, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->removeDownloadListener:Lccsanandroid/widget/TextView;

    invoke-virtual {v8}, Lccsanandroid/widget/TextView;->requestFocus()Z

    goto :goto_6

    .line 31
    :cond_b
    iget-object v8, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/widget/ImageView;

    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 33
    iget-object v8, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v8}, Lccsanandroid/widget/LinearLayout;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    const/high16 v10, 0x42200000    # 40.0f

    .line 34
    invoke-static {v10}, Lccsansan/bw/values;->addDownloadListener(F)I

    move-result v10

    iput v10, v8, Lccsanandroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 35
    iget-object v10, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v10, v8}, Lccsanandroid/widget/LinearLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 36
    iget-object v8, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v8, v3}, Lccsanandroid/widget/LinearLayout;->setFocusable(Z)V

    .line 37
    iget-object v8, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v8, v3}, Lccsanandroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 38
    iget-object v8, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v8}, Lccsanandroid/widget/LinearLayout;->requestFocus()Z

    .line 96
    nop

    .line 42
    :goto_6
    iget-object v8, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->execute:Ljava/lang/ref/SoftReference;

    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lccsanandroid/content/Context;

    invoke-static {v8}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 43
    iget-object v8, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/widget/ImageView;

    invoke-virtual {v8, v2}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 96
    nop

    .line 46
    :cond_c
    invoke-static {}, Lccsancom/san/ads/SanImageLoader;->getInstance()Lccsancom/san/ads/SanImageLoader;

    move-result-object v10

    invoke-virtual {v4}, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsanandroid/widget/ImageView;

    .line 47
    const-string v8, "san_app_icon_bg"

    invoke-static {v8}, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener(Ljava/lang/String;)I

    move-result v14

    .line 48
    invoke-virtual/range {p1 .. p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v8

    const-string v11, "san_common_dimens_15dp"

    invoke-static {v11}, Lccsansan/bw/shouldTryHandlingAction;->unifiedDownload(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v11}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 49
    move-object/from16 v11, p1

    invoke-virtual/range {v10 .. v15}, Lccsancom/san/ads/SanImageLoader;->loadLandingRoundCornerUrl(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;II)V

    .line 53
    iget-object v8, v4, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->pause:Ljava/lang/String;

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 29
    const/4 v8, 0x1

    goto :goto_7

    :cond_d
    const/4 v8, 0x0

    :goto_7
    packed-switch v8, :pswitch_data_1

    .line 54
    iget-object v8, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->deleteDownItem:Lccsanandroid/widget/TextView;

    iget-object v10, v4, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->pause:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :pswitch_1
    iget-object v8, v4, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadedCount:Ljava/lang/String;

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 29
    const/16 v8, 0x5f

    goto :goto_8

    :cond_e
    const/16 v8, 0x22

    :goto_8
    packed-switch v8, :pswitch_data_2

    .line 3
    sget v8, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 v8, v8, 0x75

    rem-int/lit16 v10, v8, 0x80

    sput v10, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_f

    .line 57
    :cond_f
    iget-object v8, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Lccsanandroid/widget/TextView;

    iget-object v10, v4, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadedCount:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :pswitch_2
    iget v8, v4, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getThumbPathByRecord:F

    const/4 v10, 0x0

    cmpl-float v8, v8, v10

    if-lez v8, :cond_10

    .line 61
    iget-object v8, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->resume:Lccsanandroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v4, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getThumbPathByRecord:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_10
    iget-object v8, v4, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->IncentiveSDK:Ljava/lang/String;

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 65
    iget-object v8, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->pause:Lccsanandroid/widget/TextView;

    iget-object v10, v4, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->IncentiveSDK:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_11
    iget-object v8, v4, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getPackageNameByRecord:Ljava/lang/String;

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 69
    iget-object v8, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadedCount:Lccsanandroid/widget/TextView;

    iget-object v10, v4, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getPackageNameByRecord:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_12
    iget-object v8, v4, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->trackReportClick:Ljava/lang/String;

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_13

    .line 29
    const/16 v9, 0xf

    goto :goto_9

    :cond_13
    nop

    :goto_9
    packed-switch v9, :pswitch_data_3

    goto :goto_a

    :pswitch_3
    sget v8, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 v8, v8, 0xb

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_14

    .line 73
    :cond_14
    iget-object v8, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->deleteDownList:Lccsanandroid/widget/TextView;

    iget-object v4, v4, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->trackReportClick:Ljava/lang/String;

    invoke-virtual {v8, v4}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_a
    if-eqz v5, :cond_18

    .line 3
    sget v4, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 v4, v4, 0x2b

    rem-int/lit16 v8, v4, 0x80

    sput v8, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_15

    .line 76
    :cond_15
    iget-object v4, v5, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 29
    const/4 v4, 0x1

    goto :goto_b

    :cond_16
    const/16 v4, 0x60

    :goto_b
    packed-switch v4, :pswitch_data_4

    goto :goto_d

    .line 77
    :pswitch_4
    iget-object v4, v5, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/lang/String;

    iput-object v4, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveSDK:Ljava/lang/String;

    .line 3
    sget v4, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 v4, v4, 0x57

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_17

    .line 29
    const/16 v4, 0x3b

    goto :goto_c

    :cond_17
    const/16 v4, 0x4e

    :goto_c
    packed-switch v4, :pswitch_data_5

    .line 96
    goto :goto_d

    .line 3
    :pswitch_5
    nop

    .line 79
    :goto_d
    iget-object v4, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getThumbPathByRecord:Lccsanandroid/widget/TextView;

    iget-object v5, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveSDK:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_18
    if-eqz v6, :cond_19

    .line 82
    iget-object v4, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->trackReportShow:Lccsanandroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Lccsansan/bx/removeDownloadListener;

    iget-object v8, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->execute:Ljava/lang/ref/SoftReference;

    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lccsanandroid/content/Context;

    invoke-direct {v5, v8, v6}, Lccsansan/bx/removeDownloadListener;-><init>(Lccsanandroid/content/Context;Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)V

    invoke-virtual {v4, v5}, Lccsanandroidx/recyclerview/widget/RecyclerView;->setAdapter(Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 83
    iget-object v4, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->trackReportShow:Lccsanandroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Lccsansan/bx/getDownloadingList;

    iget-object v6, v6, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadingCount:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/16 v8, 0x14

    invoke-direct {v5, v8, v6}, Lccsansan/bx/getDownloadingList;-><init>(II)V

    invoke-virtual {v4, v5}, Lccsanandroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Lccsanandroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 84
    iget-object v4, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->trackReportShow:Lccsanandroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Lccsanandroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v6, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->execute:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsanandroid/content/Context;

    invoke-direct {v5, v6, v2, v2}, Lccsanandroidx/recyclerview/widget/LinearLayoutManager;-><init>(Lccsanandroid/content/Context;IZ)V

    invoke-virtual {v4, v5}, Lccsanandroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_19
    if-eqz v7, :cond_1a

    .line 29
    goto :goto_e

    :cond_1a
    const/4 v2, 0x1

    :goto_e
    packed-switch v2, :pswitch_data_6

    goto :goto_f

    .line 87
    :pswitch_6
    iget-object v2, v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getPackageNameByRecord:Lccsanandroid/widget/TextView;

    iget-object v3, v7, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_f
    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-static {v2, v3}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 92
    invoke-direct/range {p0 .. p0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadedList()V

    .line 96
    nop

    :cond_1b
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v1, v3, v2, v0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->addDownloadListener(Lccsanandroid/widget/TextView;Lccsanandroid/widget/LinearLayout;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x22
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xf
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x3b
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method private unifiedDownload(Lccsanandroid/content/Context;Lccsansan/dt/deleteDownItem$removeDownloadListener;Lccsanandroid/widget/FrameLayout;Lccsanandroid/widget/LinearLayout;)V
    .locals 8

    .line 105
    nop

    .line 0
    if-eqz p2, :cond_a

    .line 76
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 61
    :cond_0
    iget-object v0, p2, Lccsansan/dt/deleteDownItem$removeDownloadListener;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    goto/16 :goto_7

    .line 66
    :cond_1
    new-instance v0, Lccsanandroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 67
    new-instance v1, Lccsanandroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lccsanandroid/widget/LinearLayout;->setOrientation(I)V

    .line 69
    invoke-virtual {v0, v1}, Lccsanandroid/widget/LinearLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 72
    :try_start_0
    iget-object p2, p2, Lccsansan/dt/deleteDownItem$removeDownloadListener;->removeDownloadListener:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    :pswitch_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_9

    .line 76
    sget v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v5, 0x1

    if-nez v1, :cond_3

    .line 74
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 72
    :try_start_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    .line 76
    :pswitch_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    .line 73
    iget-object v6, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->performAction:Lccsansan/dt/deleteDownItem;

    invoke-direct {p0, v1, v6}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;Lccsansan/dt/deleteDownItem;)Lccsancom/san/landingpage/widget/AdItemWeight;

    move-result-object v6

    .line 74
    invoke-virtual {v6, p4, v1}, Lccsancom/san/landingpage/widget/AdItemWeight;->render(Lccsanandroid/view/ViewGroup;Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)Lccsanandroid/view/View;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v6, 0x5d

    :try_start_2
    div-int/2addr v6, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    packed-switch v5, :pswitch_data_1

    goto :goto_4

    .line 76
    :catchall_0
    move-exception p1

    throw p1

    .line 72
    :goto_3
    :try_start_3
    check-cast v1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    .line 73
    iget-object v5, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->performAction:Lccsansan/dt/deleteDownItem;

    invoke-direct {p0, v1, v5}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;Lccsansan/dt/deleteDownItem;)Lccsancom/san/landingpage/widget/AdItemWeight;

    move-result-object v5

    .line 74
    invoke-virtual {v5, p4, v1}, Lccsancom/san/landingpage/widget/AdItemWeight;->render(Lccsanandroid/view/ViewGroup;Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)Lccsanandroid/view/View;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v1, :cond_2

    .line 105
    :goto_4
    sget v5, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 v5, v5, 0x6d

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 v5, v5, 0x2

    const/16 v6, 0x50

    if-eqz v5, :cond_5

    .line 76
    :try_start_4
    instance-of v5, v1, Lccsancom/san/landingpage/widget/LandingMainButton;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v7, 0x2

    :try_start_5
    div-int/2addr v7, v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v5, :cond_6

    goto :goto_5

    .line 105
    :catchall_1
    move-exception p1

    throw p1

    .line 76
    :cond_5
    :try_start_6
    instance-of v5, v1, Lccsancom/san/landingpage/widget/LandingMainButton;

    if-eqz v5, :cond_6

    .line 77
    :goto_5
    new-instance v5, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v2, v3}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 78
    iput v6, v5, Lccsanandroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 79
    invoke-virtual {p3, v1, v5}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 80
    check-cast v1, Lccsancom/san/landingpage/widget/LandingMainButton;

    invoke-virtual {v1}, Lccsancom/san/landingpage/widget/LandingMainButton;->getProgress()Lccsansan/j/unifiedDownload;

    move-result-object v1

    .line 81
    iget-object v5, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    new-instance v6, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingRecordByUrl;

    invoke-direct {v6, p0, p1}, Lccsancom/san/landingpage/IncentiveDownloadUtils$getDownloadingRecordByUrl;-><init>(Lccsancom/san/landingpage/IncentiveDownloadUtils;Lccsanandroid/content/Context;)V

    invoke-virtual {v1, v5, v6}, Lccsansan/j/unifiedDownload;->registerClick(Lccsansan/dt/removeDownloadListener;Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;)V

    .line 89
    iget-object v5, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setErrorMessage:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 90
    :cond_6
    instance-of v5, v1, Lccsancom/san/landingpage/widget/LandingReserveButton;

    if-eqz v5, :cond_7

    .line 91
    new-instance v5, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v2, v3}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 92
    iput v6, v5, Lccsanandroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 93
    invoke-virtual {p3, v1, v5}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 94
    check-cast v1, Lccsancom/san/landingpage/widget/LandingReserveButton;

    iget-object v5, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1, v5}, Lccsancom/san/landingpage/widget/LandingReserveButton;->updateNativeAd(Lccsansan/dt/removeDownloadListener;)V

    goto/16 :goto_0

    .line 96
    :cond_7
    instance-of v5, v1, Lccsansan/ci/unifiedDownload;

    if-eqz v5, :cond_8

    .line 97
    move-object v5, v1

    check-cast v5, Lccsansan/ci/unifiedDownload;

    iget-object v6, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdFormat:Lccsansan/ci/getDownloadingList;

    invoke-interface {v5, v6}, Lccsansan/ci/unifiedDownload;->setVideoStatusListener(Lccsansan/ci/getDownloadingList;)V

    .line 98
    move-object v5, v1

    check-cast v5, Lccsansan/ci/unifiedDownload;

    iget-object v6, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getName:Lccsanandroid/view/View$OnClickListener;

    invoke-interface {v5, v6}, Lccsansan/ci/unifiedDownload;->setClickListenerForScreen(Lccsanandroid/view/View$OnClickListener;)V

    .line 100
    :cond_8
    invoke-virtual {p4, v1}, Lccsanandroid/widget/LinearLayout;->addView(Lccsanandroid/view/View;)V

    goto/16 :goto_0

    .line 104
    :cond_9
    invoke-virtual {p4, v0}, Lccsanandroid/widget/LinearLayout;->addView(Lccsanandroid/view/View;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    :goto_6
    return-void

    :cond_a
    :goto_7
    nop

    .line 105
    const-string p1, "LandPageViewControl"

    const-string p2, "Render group items return for group or group.mItems is null"

    invoke-static {p1, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic unifiedDownload(Lccsancom/san/landingpage/IncentiveDownloadUtils;Lccsanandroid/content/Context;ILccsansan/i/addDownloadListener;Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;)V
    .locals 2

    .line 3
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanandroid/content/Context;ILccsansan/i/addDownloadListener;Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;)V

    sget p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 p0, p0, 0x6b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)Z
    .locals 3

    .line 220
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 213
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 220
    sget p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 p0, p0, 0x33

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/16 p0, 0x9

    goto :goto_0

    :cond_1
    const/16 p0, 0x5a

    :goto_0
    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x1

    goto :goto_1

    .line 213
    :pswitch_0
    nop

    .line 220
    :goto_1
    return v0

    .line 217
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_3

    .line 220
    const/16 v2, 0x8

    goto :goto_2

    :cond_3
    const/16 v2, 0x2b

    :goto_2
    packed-switch v2, :pswitch_data_1

    sget p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 p0, p0, 0x4d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_5

    goto :goto_4

    :pswitch_1
    :try_start_2
    invoke-virtual {p1}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lccsansan/dt/resume;->getDownloadStatusByUrl()I

    move-result p1

    invoke-static {p0, v2, p1}, Lccsansan/bw/getDownloadedCount;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;I)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne p0, v1, :cond_4

    const/4 p0, 0x0

    goto :goto_3

    :cond_4
    const/4 p0, 0x1

    :goto_3
    packed-switch p0, :pswitch_data_2

    const/4 v0, 0x1

    :pswitch_2
    return v0

    :goto_4
    const/4 p0, 0x0

    goto :goto_5

    :cond_5
    const/4 p0, 0x1

    :goto_5
    packed-switch p0, :pswitch_data_3

    return v1

    .line 217
    :pswitch_3
    return v0

    .line 220
    :catch_0
    move-exception p0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2b
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;Lccsansan/dt/deleteDownItem;Z)V
    .locals 3

    .line 14
    nop

    .line 5
    iput-object p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    .line 6
    iput-object p2, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->performAction:Lccsansan/dt/deleteDownItem;

    .line 7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 14
    sget v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 8
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v1

    if-eqz v1, :cond_3

    :pswitch_0
    goto :goto_2

    :pswitch_1
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    .line 14
    :catchall_0
    move-exception p1

    throw p1

    :goto_2
    sget v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/2addr v1, v0

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 9
    :cond_2
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    .line 11
    :cond_3
    :goto_3
    iput-boolean p3, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getErrorMessage:Z

    .line 12
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getDownloadedList()I

    move-result p1

    if-ne p1, v0, :cond_4

    .line 8
    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    packed-switch p1, :pswitch_data_2

    .line 12
    goto :goto_5

    :pswitch_2
    const/4 p2, 0x1

    goto :goto_6

    .line 14
    :goto_5
    nop

    .line 12
    :goto_6
    iput-boolean p2, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getErrorCode:Z

    .line 14
    invoke-direct {p0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->addDownloadListener()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public removeDownloadListener()V
    .locals 4

    .line 128
    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setErrorMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    throw v0

    .line 115
    :cond_0
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setErrorMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x30

    goto :goto_1

    :cond_1
    const/16 v1, 0x39

    :goto_1
    packed-switch v1, :pswitch_data_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/j/unifiedDownload;

    .line 116
    invoke-virtual {v1}, Lccsansan/j/unifiedDownload;->destroy()V

    goto :goto_0

    .line 118
    :pswitch_0
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setErrorMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 120
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/landingpage/unifiedDownload;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 115
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_1

    .line 121
    invoke-direct {p0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadedCount()V

    .line 124
    :pswitch_1
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadingCount:Lccsanandroid/widget/FrameLayout;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lccsanandroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 128
    :goto_3
    nop

    .line 125
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadingCount:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0}, Lccsanandroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 115
    const/16 v0, 0x4e

    goto :goto_4

    :cond_3
    const/16 v0, 0x37

    :goto_4
    packed-switch v0, :pswitch_data_2

    sget v0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/2addr v0, v2

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 126
    :cond_4
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadingCount:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/FrameLayout;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v0

    .line 127
    instance-of v3, v0, Lccsancom/san/landingpage/widget/LandingReserveButton;

    if-eqz v3, :cond_5

    .line 128
    check-cast v0, Lccsancom/san/landingpage/widget/LandingReserveButton;

    invoke-virtual {v0}, Lccsancom/san/landingpage/widget/LandingReserveButton;->onDestroy()V

    goto :goto_5

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    :goto_5
    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x37
        :pswitch_2
    .end packed-switch
.end method

.method public removeDownloadListener(Ljava/lang/String;IJJ)V
    .locals 6

    .line 371
    nop

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LandPageViewControl"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 280
    iget-object v0, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 371
    return-void

    .line 280
    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x2

    if-eq p2, p1, :cond_9

    .line 371
    sget v2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 v2, v2, 0x6f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/2addr v2, v0

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    const/4 p1, 0x5

    if-eq p2, p1, :cond_3

    goto :goto_2

    .line 280
    :pswitch_0
    if-eq p2, v0, :cond_2

    .line 371
    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_1

    :pswitch_1
    goto/16 :goto_5

    :goto_2
    const/16 p1, 0x3f

    goto :goto_3

    :cond_3
    const/16 p1, 0x25

    :goto_3
    packed-switch p1, :pswitch_data_2

    .line 280
    :pswitch_2
    const/4 p1, 0x3

    if-eq p2, p1, :cond_6

    const/16 p1, 0xb

    if-eq p2, p1, :cond_4

    .line 371
    const/16 p1, 0x1e

    goto :goto_4

    :cond_4
    const/16 p1, 0x59

    :goto_4
    packed-switch p1, :pswitch_data_3

    .line 356
    nop

    .line 361
    const-string p1, "view control open app "

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->execute:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/content/Context;

    iget-object p2, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    invoke-direct {p0, p1, p2}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)V

    goto/16 :goto_8

    .line 280
    :pswitch_3
    packed-switch p2, :pswitch_data_4

    packed-switch p2, :pswitch_data_5

    .line 336
    const-string p1, "state onInit default!"

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 350
    :pswitch_4
    invoke-static {v4}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result p1

    const/4 p2, 0x0

    const-string p3, "\u77f3\ue2ad\u871f\udd74\u2b90\ubc9c\u1cbd\u3df8\u6d02\u5919\ub29c\u7386\u5406\u330f\u1749\u8ee9"

    cmpl-float p1, p1, p2

    add-int/lit8 p1, p1, 0xf

    invoke-static {p3, p1}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 351
    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->execute:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/content/Context;

    iget-object p2, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    invoke-direct {p0, p1, p2}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)V

    goto/16 :goto_8

    :pswitch_5
    nop

    .line 355
    const-string p1, "state failed"

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x3e8

    .line 356
    invoke-direct {p0, p1, p2}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadingList(J)V

    goto/16 :goto_8

    .line 336
    :pswitch_6
    nop

    .line 337
    const-string p1, "state onInit pause!"

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadedList:Lccsancom/san/landingpage/widget/GpCircleRotateView;

    invoke-virtual {p1, v4}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 339
    invoke-direct {p0, p3, p4, p5, p6}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(JJ)V

    goto/16 :goto_8

    :pswitch_7
    invoke-static {}, Lccsanandroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result p1

    int-to-byte p1, p1

    add-int/lit8 p1, p1, 0x18

    const-string p2, "\u9737\u3771\u143b\ua00f\u4065\u027a\u7acc\ucd70\u8eb4\u561e\u5939\ud0a3\u5263\u9183\uda5e\uc0c0\ua9ad\ucfd9\u5720\ud8f1\u92cd\u20c7\u5452\u69cb"

    invoke-static {p2, p1}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 342
    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-direct {p0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadedList()V

    .line 371
    sget p1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 p1, p1, 0x41

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_5

    const/16 p1, 0x4e

    goto :goto_7

    :cond_5
    const/16 p1, 0x45

    goto :goto_7

    .line 344
    :pswitch_8
    nop

    .line 345
    const-string p1, "state onInit process!"

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-direct {p0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils()V

    .line 347
    iget-object p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadedList:Lccsancom/san/landingpage/widget/GpCircleRotateView;

    invoke-virtual {p1, v4}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 348
    invoke-direct {p0, p3, p4, p5, p6}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(JJ)V

    goto :goto_8

    :pswitch_9
    nop

    .line 349
    const-string p1, "state onInit completed!"

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-direct {p0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->deleteDownItem()V

    goto :goto_8

    .line 363
    :cond_6
    div-long p1, p3, p5

    const-wide/16 v4, 0x1

    cmp-long v2, p1, v4

    if-ltz v2, :cond_8

    .line 371
    add-int/lit8 v3, v3, 0x1d

    rem-int/lit16 p1, v3, 0x80

    sput p1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/2addr v3, v0

    if-nez v3, :cond_7

    .line 363
    :cond_7
    nop

    .line 364
    const-string p1, "completed"

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-direct {p0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadedRecordByUrl()V

    goto :goto_8

    .line 367
    :cond_8
    invoke-direct {p0, p3, p4, p5, p6}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(JJ)V

    goto :goto_8

    :cond_9
    :goto_5
    nop

    .line 368
    const-string p1, "state start"

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-direct {p0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils()V

    .line 370
    iget-object p1, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->resolveUrl:Lccsanandroid/os/Handler;

    if-eqz p1, :cond_a

    .line 371
    const/16 p2, 0x27

    goto :goto_6

    :cond_a
    const/4 p2, 0x2

    :goto_6
    packed-switch p2, :pswitch_data_6

    :goto_7
    goto :goto_8

    :pswitch_a
    sget p2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 p2, p2, 0x4d

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/2addr p2, v0

    if-nez p2, :cond_b

    :cond_b
    iget-object p2, p0, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveSDK$1:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_8
    :pswitch_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x25
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1e
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x5
        :pswitch_b
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x15
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x27
        :pswitch_a
    .end packed-switch
.end method

.method public removeDownloadListener(Lccsanandroid/widget/LinearLayout;Lccsanandroid/widget/FrameLayout;Lccsanandroid/widget/TextView;Lccsansan/i/addDownloadListener;Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;Z)Z
    .locals 14

    move-object v7, p0

    move-object v0, p1

    move-object/from16 v1, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 58
    nop

    .line 15
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v11

    .line 16
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v11}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v7, Lccsancom/san/landingpage/IncentiveDownloadUtils;->execute:Ljava/lang/ref/SoftReference;

    .line 17
    iput-object v1, v7, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadingCount:Lccsanandroid/widget/FrameLayout;

    .line 18
    iget-object v2, v7, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    invoke-static {v2}, Lccsancom/san/landingpage/unifiedDownload;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)Z

    move-result v2

    const/16 v12, 0x9

    const/4 v13, 0x1

    if-eqz v2, :cond_0

    .line 20
    iget-object v5, v7, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    move-object v1, p0

    move-object v2, v11

    move-object v3, p1

    move-object/from16 v4, p3

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsanandroid/widget/LinearLayout;Lccsanandroid/widget/TextView;Lccsansan/dt/removeDownloadListener;Z)Lccsanandroid/view/View;

    move-result-object v1

    .line 21
    invoke-virtual {p1, v1}, Lccsanandroid/widget/LinearLayout;->addView(Lccsanandroid/view/View;)V

    .line 22
    invoke-direct {p0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadingRecordByUrl()V

    goto :goto_5

    :cond_0
    const/4 v2, -0x1

    .line 24
    invoke-virtual {p1, v2}, Lccsanandroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 25
    iget-object v2, v7, Lccsancom/san/landingpage/IncentiveDownloadUtils;->performAction:Lccsansan/dt/deleteDownItem;

    .line 26
    iget-object v2, v2, Lccsansan/dt/deleteDownItem;->getDownloadingList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 58
    :goto_0
    nop

    .line 26
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 34
    const/16 v3, 0x60

    goto :goto_2

    :cond_2
    const/16 v3, 0x9

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto :goto_5

    .line 26
    :pswitch_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsansan/dt/deleteDownItem$addDownloadListener;

    .line 28
    instance-of v4, v3, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    if-eqz v4, :cond_3

    .line 34
    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    packed-switch v4, :pswitch_data_1

    .line 37
    check-cast v3, Lccsansan/dt/deleteDownItem$removeDownloadListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 58
    :pswitch_1
    sget v4, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 v4, v4, 0x77

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_4

    .line 29
    :cond_4
    :try_start_1
    check-cast v3, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    .line 30
    iget-object v4, v7, Lccsancom/san/landingpage/IncentiveDownloadUtils;->performAction:Lccsansan/dt/deleteDownItem;

    invoke-direct {p0, v3, v4}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;Lccsansan/dt/deleteDownItem;)Lccsancom/san/landingpage/widget/AdItemWeight;

    move-result-object v4

    .line 32
    invoke-virtual {v4, p1, v3}, Lccsancom/san/landingpage/widget/AdItemWeight;->render(Lccsanandroid/view/ViewGroup;Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)Lccsanandroid/view/View;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_1

    .line 51
    sget v4, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/lit8 v4, v4, 0x31

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_5

    .line 34
    :try_start_2
    invoke-direct {p0, v11, v3, v1, p1}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/Context;Lccsanandroid/view/View;Lccsanandroid/widget/FrameLayout;Lccsanandroid/widget/LinearLayout;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v3, 0x3a

    :try_start_3
    div-int/2addr v3, v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 34
    :cond_5
    :try_start_4
    invoke-direct {p0, v11, v3, v1, p1}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/Context;Lccsanandroid/view/View;Lccsanandroid/widget/FrameLayout;Lccsanandroid/widget/LinearLayout;)V

    goto :goto_0

    .line 39
    :goto_4
    invoke-direct {p0, v11, v3, v1, p1}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/dt/deleteDownItem$removeDownloadListener;Lccsanandroid/widget/FrameLayout;Lccsanandroid/widget/LinearLayout;)V

    goto :goto_1

    .line 44
    :goto_5
    iget-object v0, v7, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    if-eqz v0, :cond_b

    .line 45
    invoke-static {v0}, Lccsancom/san/landingpage/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)V

    .line 46
    iget-object v0, v7, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v7, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v7, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v7, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    iget-boolean v6, v7, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getErrorMessage:Z

    invoke-static/range {v1 .. v6}, Lccsansan/bn/getDownloadStatusByUrl;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/dt/removeDownloadListener;Z)V

    .line 48
    iget-object v0, v7, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v0

    .line 49
    iget-object v1, v7, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getActionType()Lccsansan/dt/pause;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, v7, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getActionType()Lccsansan/dt/pause;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/pause;->removeDownloadListener()Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v1, :cond_6

    .line 34
    const/4 v1, 0x0

    goto :goto_6

    :cond_6
    const/4 v1, 0x1

    :goto_6
    packed-switch v1, :pswitch_data_2

    .line 58
    const/4 v1, 0x1

    goto :goto_7

    .line 49
    :cond_7
    :pswitch_2
    nop

    .line 58
    sget v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    add-int/2addr v1, v12

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_8

    :cond_8
    const/4 v1, 0x0

    .line 50
    :goto_7
    :try_start_5
    iget-object v2, v7, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/removeDownloadListener;->getDownloadedList()I

    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-eq v2, v13, :cond_9

    .line 34
    const/4 v2, 0x1

    goto :goto_8

    :cond_9
    const/4 v2, 0x0

    :goto_8
    packed-switch v2, :pswitch_data_3

    .line 50
    if-eqz v1, :cond_b

    :pswitch_3
    if-eqz v0, :cond_b

    .line 58
    sget v1, Lccsancom/san/landingpage/IncentiveDownloadUtils;->setAdSize:I

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/IncentiveDownloadUtils;->AdInfo:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_a

    .line 34
    const/4 v1, 0x0

    goto :goto_9

    :cond_a
    const/4 v1, 0x1

    :goto_9
    packed-switch v1, :pswitch_data_4

    .line 51
    :try_start_6
    invoke-direct {p0, v11, v0, v8, v9}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/resume;Lccsansan/i/addDownloadListener;Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;)V

    goto :goto_a

    :pswitch_4
    invoke-direct {p0, v11, v0, v8, v9}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/resume;Lccsansan/i/addDownloadListener;Lccsansan/cf/unifiedDownload$getDownloadingRecordByUrl;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_b

    :goto_a
    const/16 v0, 0xe

    :try_start_7
    div-int/2addr v0, v10
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_b

    .line 58
    :catchall_1
    move-exception v0

    move-object v1, v0

    throw v1

    .line 51
    :cond_b
    :goto_b
    return v13

    :catch_0
    move-exception v0

    .line 55
    iget-object v1, v7, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    if-eqz v1, :cond_c

    .line 56
    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v7, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getActionType:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lccsancom/san/landingpage/IncentiveDownloadUtils;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lccsansan/bn/getDownloadStatusByUrl;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_c
    nop

    .line 58
    const-string v0, "-1"

    const-string v1, ""

    const-string v2, "mAdData is null"

    invoke-static {v0, v0, v0, v1, v2}, Lccsansan/bn/getDownloadStatusByUrl;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    return v10

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method
