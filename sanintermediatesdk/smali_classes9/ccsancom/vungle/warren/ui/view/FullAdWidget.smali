.class public Lccsancom/vungle/warren/ui/view/FullAdWidget;
.super Lccsanandroid/widget/RelativeLayout;
.source "FullAdWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/ui/view/FullAdWidget$ViewEvent;,
        Lccsancom/vungle/warren/ui/view/FullAdWidget$AudioContextWrapper;,
        Lccsancom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;,
        Lccsancom/vungle/warren/ui/view/FullAdWidget$DestroyRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final closeButton:Lccsanandroid/widget/ImageView;

.field private final ctaOverlay:Lccsanandroid/widget/ImageView;

.field private gestureDetector:Lccsanandroid/view/GestureDetector;

.field private hideSystemUiRunnable:Ljava/lang/Runnable;

.field immersiveModeListener:Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final matchParentLayoutParams:Lccsanandroid/widget/RelativeLayout$LayoutParams;

.field private final muteButton:Lccsanandroid/widget/ImageView;

.field private onClickProxy:Lccsancom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;

.field private onCompletionListener:Lccsanandroid/media/MediaPlayer$OnCompletionListener;

.field private onErrorListener:Lccsanandroid/media/MediaPlayer$OnErrorListener;

.field private onPreparedListener:Lccsanandroid/media/MediaPlayer$OnPreparedListener;

.field private final privacyOverlay:Lccsanandroid/widget/ImageView;

.field private final progressBar:Lccsanandroid/widget/ProgressBar;

.field private proxyClickListener:Lccsanandroid/view/View$OnClickListener;

.field private singleTapOnVideoListener:Lccsanandroid/view/GestureDetector$SimpleOnGestureListener;

.field private startPosition:I

.field public final videoView:Lccsanandroid/widget/VideoView;

.field private final videoViewContainer:Lccsanandroid/widget/RelativeLayout;

.field private viewToId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lccsanandroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private webView:Lccsanandroid/webkit/WebView;

.field private final window:Lccsanandroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/view/Window;)V
    .locals 16
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "window"    # Lccsanandroid/view/Window;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 81
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Lccsanandroid/widget/RelativeLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 50
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->viewToId:Ljava/util/Map;

    .line 193
    new-instance v2, Lccsancom/vungle/warren/ui/view/FullAdWidget$2;

    invoke-direct {v2, v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget$2;-><init>(Lccsancom/vungle/warren/ui/view/FullAdWidget;)V

    iput-object v2, v0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->singleTapOnVideoListener:Lccsanandroid/view/GestureDetector$SimpleOnGestureListener;

    .line 329
    new-instance v2, Lccsancom/vungle/warren/ui/view/FullAdWidget$7;

    invoke-direct {v2, v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget$7;-><init>(Lccsancom/vungle/warren/ui/view/FullAdWidget;)V

    iput-object v2, v0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->immersiveModeListener:Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 385
    new-instance v2, Lccsancom/vungle/warren/ui/view/FullAdWidget$8;

    invoke-direct {v2, v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget$8;-><init>(Lccsancom/vungle/warren/ui/view/FullAdWidget;)V

    iput-object v2, v0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->proxyClickListener:Lccsanandroid/view/View$OnClickListener;

    .line 82
    move-object/from16 v2, p2

    iput-object v2, v0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->window:Lccsanandroid/view/Window;

    .line 84
    invoke-virtual/range {p0 .. p0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v3

    .line 85
    .local v3, "resources":Lccsanandroid/content/res/Resources;
    new-instance v4, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v4, v0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->matchParentLayoutParams:Lccsanandroid/widget/RelativeLayout$LayoutParams;

    .line 89
    invoke-virtual {v0, v4}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 91
    new-instance v6, Lccsancom/vungle/warren/ui/view/FullAdWidget$1;

    invoke-direct {v6, v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget$1;-><init>(Lccsancom/vungle/warren/ui/view/FullAdWidget;)V

    iput-object v6, v0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->hideSystemUiRunnable:Ljava/lang/Runnable;

    .line 98
    new-instance v6, Lccsanandroid/widget/VideoView;

    new-instance v7, Lccsancom/vungle/warren/ui/view/FullAdWidget$AudioContextWrapper;

    invoke-direct {v7, v1}, Lccsancom/vungle/warren/ui/view/FullAdWidget$AudioContextWrapper;-><init>(Lccsanandroid/content/Context;)V

    invoke-direct {v6, v7}, Lccsanandroid/widget/VideoView;-><init>(Lccsanandroid/content/Context;)V

    iput-object v6, v0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoView:Lccsanandroid/widget/VideoView;

    .line 99
    new-instance v7, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v5, v5}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 102
    .local v7, "videoViewLayoutParams":Lccsanandroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 103
    invoke-virtual {v6, v7}, Lccsanandroid/widget/VideoView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v8, Lccsanandroid/widget/RelativeLayout;

    invoke-direct {v8, v1}, Lccsanandroid/widget/RelativeLayout;-><init>(Lccsanandroid/content/Context;)V

    iput-object v8, v0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoViewContainer:Lccsanandroid/widget/RelativeLayout;

    .line 106
    const-string v9, "videoViewContainer"

    invoke-virtual {v8, v9}, Lccsanandroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 107
    invoke-virtual {v8, v4}, Lccsanandroid/widget/RelativeLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 108
    invoke-virtual {v8, v6, v7}, Lccsanandroid/widget/RelativeLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 109
    invoke-virtual {v0, v8, v4}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v6, Lccsanandroid/view/GestureDetector;

    iget-object v8, v0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->singleTapOnVideoListener:Lccsanandroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v6, v1, v8}, Lccsanandroid/view/GestureDetector;-><init>(Lccsanandroid/content/Context;Lccsanandroid/view/GestureDetector$OnGestureListener;)V

    iput-object v6, v0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->gestureDetector:Lccsanandroid/view/GestureDetector;

    .line 113
    invoke-static/range {p1 .. p1}, Lccsancom/vungle/warren/utility/ViewUtility;->getWebView(Lccsanandroid/content/Context;)Lccsanandroid/webkit/WebView;

    move-result-object v6

    iput-object v6, v0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->webView:Lccsanandroid/webkit/WebView;

    .line 114
    invoke-virtual {v6, v4}, Lccsanandroid/webkit/WebView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v6, v0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->webView:Lccsanandroid/webkit/WebView;

    const-string v8, "webView"

    invoke-virtual {v6, v8}, Lccsanandroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    .line 116
    iget-object v6, v0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->webView:Lccsanandroid/webkit/WebView;

    invoke-virtual {v0, v6, v4}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 119
    new-instance v4, Lccsanandroid/widget/ProgressBar;

    const/4 v6, 0x0

    const v8, 0x1010078

    invoke-direct {v4, v1, v6, v8}, Lccsanandroid/widget/ProgressBar;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    iput-object v4, v0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->progressBar:Lccsanandroid/widget/ProgressBar;

    .line 120
    nop

    .line 123
    invoke-virtual {v3}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v6

    .line 120
    const/4 v8, 0x1

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v8, v9, v6}, Lccsanandroid/util/TypedValue;->applyDimension(IFLccsanandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    .line 124
    .local v6, "progressBarHeight":I
    new-instance v9, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v5, v6}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v5, v9

    .line 127
    .local v5, "progressBarLayoutParams":Lccsanandroid/widget/RelativeLayout$LayoutParams;
    const/16 v9, 0xc

    invoke-virtual {v5, v9}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 128
    invoke-virtual {v4, v5}, Lccsanandroid/widget/ProgressBar;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 129
    const/16 v10, 0x64

    invoke-virtual {v4, v10}, Lccsanandroid/widget/ProgressBar;->setMax(I)V

    .line 130
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lccsanandroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 131
    const/4 v10, 0x4

    invoke-virtual {v4, v10}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    .line 132
    invoke-virtual {v0, v4}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->addView(Lccsanandroid/view/View;)V

    .line 134
    nop

    .line 137
    invoke-virtual {v3}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v4

    .line 134
    const/high16 v10, 0x41c00000    # 24.0f

    invoke-static {v8, v10, v4}, Lccsanandroid/util/TypedValue;->applyDimension(IFLccsanandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    .line 138
    .local v4, "imageViewDimension":I
    new-instance v10, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v10, v4, v4}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 141
    .local v10, "imageViewLayoutParams":Lccsanandroid/widget/RelativeLayout$LayoutParams;
    nop

    .line 144
    invoke-virtual {v3}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v11

    .line 141
    const/high16 v12, 0x41400000    # 12.0f

    invoke-static {v8, v12, v11}, Lccsanandroid/util/TypedValue;->applyDimension(IFLccsanandroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    .line 145
    .local v8, "imageViewMargin":I
    invoke-virtual {v10, v8, v8, v8, v8}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 146
    new-instance v11, Lccsanandroid/widget/ImageView;

    invoke-direct {v11, v1}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    iput-object v11, v0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->muteButton:Lccsanandroid/widget/ImageView;

    .line 147
    sget-object v12, Lccsancom/vungle/warren/utility/ViewUtility$Asset;->unMute:Lccsancom/vungle/warren/utility/ViewUtility$Asset;

    invoke-static {v12, v1}, Lccsancom/vungle/warren/utility/ViewUtility;->getBitmap(Lccsancom/vungle/warren/utility/ViewUtility$Asset;Lccsanandroid/content/Context;)Lccsanandroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v11, v12}, Lccsanandroid/widget/ImageView;->setImageBitmap(Lccsanandroid/graphics/Bitmap;)V

    .line 148
    invoke-virtual {v11, v10}, Lccsanandroid/widget/ImageView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 149
    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 150
    invoke-virtual {v0, v11}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->addView(Lccsanandroid/view/View;)V

    .line 152
    new-instance v11, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v4, v4}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 155
    .local v11, "closeLayoutParams":Lccsanandroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v11, v8, v8, v8, v8}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 156
    new-instance v13, Lccsanandroid/widget/ImageView;

    invoke-direct {v13, v1}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    iput-object v13, v0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->closeButton:Lccsanandroid/widget/ImageView;

    .line 157
    const-string v14, "closeButton"

    invoke-virtual {v13, v14}, Lccsanandroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 158
    sget-object v14, Lccsancom/vungle/warren/utility/ViewUtility$Asset;->close:Lccsancom/vungle/warren/utility/ViewUtility$Asset;

    invoke-static {v14, v1}, Lccsancom/vungle/warren/utility/ViewUtility;->getBitmap(Lccsancom/vungle/warren/utility/ViewUtility$Asset;Lccsanandroid/content/Context;)Lccsanandroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v13, v14}, Lccsanandroid/widget/ImageView;->setImageBitmap(Lccsanandroid/graphics/Bitmap;)V

    .line 159
    const/16 v14, 0xb

    invoke-virtual {v11, v14}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 160
    invoke-virtual {v13, v11}, Lccsanandroid/widget/ImageView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 161
    invoke-virtual {v13, v12}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 162
    invoke-virtual {v0, v13}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->addView(Lccsanandroid/view/View;)V

    .line 164
    new-instance v13, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v13, v4, v4}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 167
    .local v13, "ctaOverlayLayoutParams":Lccsanandroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v13, v9}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 168
    invoke-virtual {v13, v14}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 169
    invoke-virtual {v13, v8, v8, v8, v8}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 170
    new-instance v14, Lccsanandroid/widget/ImageView;

    invoke-direct {v14, v1}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    iput-object v14, v0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->ctaOverlay:Lccsanandroid/widget/ImageView;

    .line 171
    const-string v15, "ctaOverlay"

    invoke-virtual {v14, v15}, Lccsanandroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 172
    invoke-virtual {v14, v13}, Lccsanandroid/widget/ImageView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 173
    sget-object v15, Lccsancom/vungle/warren/utility/ViewUtility$Asset;->cta:Lccsancom/vungle/warren/utility/ViewUtility$Asset;

    invoke-virtual/range {p0 .. p0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->getContext()Lccsanandroid/content/Context;

    move-result-object v9

    invoke-static {v15, v9}, Lccsancom/vungle/warren/utility/ViewUtility;->getBitmap(Lccsancom/vungle/warren/utility/ViewUtility$Asset;Lccsanandroid/content/Context;)Lccsanandroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v14, v9}, Lccsanandroid/widget/ImageView;->setImageBitmap(Lccsanandroid/graphics/Bitmap;)V

    .line 174
    invoke-virtual {v14, v12}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 175
    invoke-virtual {v0, v14}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->addView(Lccsanandroid/view/View;)V

    .line 177
    new-instance v9, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v4, v4}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 180
    .local v9, "privacyLayoutParams":Lccsanandroid/widget/RelativeLayout$LayoutParams;
    const/16 v14, 0xc

    invoke-virtual {v9, v14}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 181
    const/16 v14, 0x9

    invoke-virtual {v9, v14}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 182
    invoke-virtual {v9, v8, v8, v8, v8}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 183
    new-instance v14, Lccsanandroid/widget/ImageView;

    invoke-direct {v14, v1}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    iput-object v14, v0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->privacyOverlay:Lccsanandroid/widget/ImageView;

    .line 184
    invoke-virtual {v14, v9}, Lccsanandroid/widget/ImageView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 185
    invoke-virtual {v14, v12}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 186
    invoke-virtual {v0, v14}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->addView(Lccsanandroid/view/View;)V

    .line 188
    invoke-direct/range {p0 .. p0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->bindListeners()V

    .line 189
    invoke-direct/range {p0 .. p0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->prepare()V

    .line 190
    return-void
.end method

.method static synthetic access$000(Lccsancom/vungle/warren/ui/view/FullAdWidget;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/view/FullAdWidget;

    .line 46
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->hideSystemUi()V

    return-void
.end method

.method static synthetic access$100(Lccsancom/vungle/warren/ui/view/FullAdWidget;)Lccsanandroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/view/FullAdWidget;

    .line 46
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoViewContainer:Lccsanandroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lccsancom/vungle/warren/ui/view/FullAdWidget;)Lccsancom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/view/FullAdWidget;

    .line 46
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->onClickProxy:Lccsancom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$1100(Lccsancom/vungle/warren/ui/view/FullAdWidget;Lccsanandroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/view/FullAdWidget;
    .param p1, "x1"    # Lccsanandroid/view/View;

    .line 46
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->matchView(Lccsanandroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lccsancom/vungle/warren/ui/view/FullAdWidget;)Lccsanandroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/view/FullAdWidget;

    .line 46
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->proxyClickListener:Lccsanandroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lccsancom/vungle/warren/ui/view/FullAdWidget;)Lccsanandroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/view/FullAdWidget;

    .line 46
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->gestureDetector:Lccsanandroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$400(Lccsancom/vungle/warren/ui/view/FullAdWidget;)I
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/view/FullAdWidget;

    .line 46
    iget v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->startPosition:I

    return v0
.end method

.method static synthetic access$500(Lccsancom/vungle/warren/ui/view/FullAdWidget;)Lccsanandroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/view/FullAdWidget;

    .line 46
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->onPreparedListener:Lccsanandroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$600(Lccsancom/vungle/warren/ui/view/FullAdWidget;)Lccsanandroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/view/FullAdWidget;

    .line 46
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->muteButton:Lccsanandroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lccsancom/vungle/warren/ui/view/FullAdWidget;)Lccsanandroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/view/FullAdWidget;

    .line 46
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->onErrorListener:Lccsanandroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$800(Lccsancom/vungle/warren/ui/view/FullAdWidget;)Lccsanandroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/view/FullAdWidget;

    .line 46
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->onCompletionListener:Lccsanandroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$900(Lccsancom/vungle/warren/ui/view/FullAdWidget;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/view/FullAdWidget;

    .line 46
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->removeImmersiveModeListener()V

    return-void
.end method

.method private bindListener(Lccsanandroid/view/View;I)V
    .locals 2
    .param p1, "v"    # Lccsanandroid/view/View;
    .param p2, "event"    # I

    .line 259
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->viewToId:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->proxyClickListener:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 261
    return-void
.end method

.method private bindListeners()V
    .locals 3

    .line 204
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->closeButton:Lccsanandroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->bindListener(Lccsanandroid/view/View;I)V

    .line 205
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->ctaOverlay:Lccsanandroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->bindListener(Lccsanandroid/view/View;I)V

    .line 206
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->muteButton:Lccsanandroid/widget/ImageView;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->bindListener(Lccsanandroid/view/View;I)V

    .line 207
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->privacyOverlay:Lccsanandroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->bindListener(Lccsanandroid/view/View;I)V

    .line 209
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->viewToId:Ljava/util/Map;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoViewContainer:Lccsanandroid/widget/RelativeLayout;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoViewContainer:Lccsanandroid/widget/RelativeLayout;

    new-instance v1, Lccsancom/vungle/warren/ui/view/FullAdWidget$3;

    invoke-direct {v1, p0}, Lccsancom/vungle/warren/ui/view/FullAdWidget$3;-><init>(Lccsancom/vungle/warren/ui/view/FullAdWidget;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout;->setOnTouchListener(Lccsanandroid/view/View$OnTouchListener;)V

    .line 220
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoView:Lccsanandroid/widget/VideoView;

    new-instance v1, Lccsancom/vungle/warren/ui/view/FullAdWidget$4;

    invoke-direct {v1, p0}, Lccsancom/vungle/warren/ui/view/FullAdWidget$4;-><init>(Lccsancom/vungle/warren/ui/view/FullAdWidget;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/VideoView;->setOnPreparedListener(Lccsanandroid/media/MediaPlayer$OnPreparedListener;)V

    .line 236
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoView:Lccsanandroid/widget/VideoView;

    new-instance v1, Lccsancom/vungle/warren/ui/view/FullAdWidget$5;

    invoke-direct {v1, p0}, Lccsancom/vungle/warren/ui/view/FullAdWidget$5;-><init>(Lccsancom/vungle/warren/ui/view/FullAdWidget;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/VideoView;->setOnErrorListener(Lccsanandroid/media/MediaPlayer$OnErrorListener;)V

    .line 246
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoView:Lccsanandroid/widget/VideoView;

    new-instance v1, Lccsancom/vungle/warren/ui/view/FullAdWidget$6;

    invoke-direct {v1, p0}, Lccsancom/vungle/warren/ui/view/FullAdWidget$6;-><init>(Lccsancom/vungle/warren/ui/view/FullAdWidget;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/VideoView;->setOnCompletionListener(Lccsanandroid/media/MediaPlayer$OnCompletionListener;)V

    .line 256
    return-void
.end method

.method private hideSystemUi()V
    .locals 3

    .line 343
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    .line 344
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->window:Lccsanandroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 345
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->window:Lccsanandroid/view/Window;

    invoke-virtual {v0}, Lccsanandroid/view/Window;->getInsetsController()Lccsanandroid/view/WindowInsetsController;

    move-result-object v0

    .line 346
    .local v0, "controller":Lccsanandroid/view/WindowInsetsController;
    if-eqz v0, :cond_0

    .line 347
    invoke-static {}, Lccsanandroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-static {}, Lccsanandroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, Lccsanandroid/view/WindowInsetsController;->hide(I)V

    .line 348
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lccsanandroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    .line 350
    .end local v0    # "controller":Lccsanandroid/view/WindowInsetsController;
    :cond_0
    goto :goto_0

    .line 351
    :cond_1
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->window:Lccsanandroid/view/Window;

    invoke-virtual {v0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setSystemUiVisibility(I)V

    .line 359
    :goto_0
    return-void
.end method

.method private matchView(Lccsanandroid/view/View;)I
    .locals 2
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 399
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->viewToId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 400
    .local v0, "id":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method private prepare()V
    .locals 3

    .line 265
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->webView:Lccsanandroid/webkit/WebView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lccsanandroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 268
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->webView:Lccsanandroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebView;->setVisibility(I)V

    .line 270
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoViewContainer:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout;->setVisibility(I)V

    .line 271
    return-void
.end method

.method private removeImmersiveModeListener()V
    .locals 2

    .line 367
    invoke-virtual {p0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->immersiveModeListener:Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 368
    return-void
.end method


# virtual methods
.method public destroyWebView(J)V
    .locals 4
    .param p1, "webViewDestroyDelay"    # J

    .line 477
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->webView:Lccsanandroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 478
    return-void

    .line 480
    :cond_0
    const-string v1, "Android"

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->webView:Lccsanandroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebView;->setWebChromeClient(Lccsanandroid/webkit/WebChromeClient;)V

    .line 484
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->webView:Lccsanandroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->removeView(Lccsanandroid/view/View;)V

    .line 485
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->webView:Lccsanandroid/webkit/WebView;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->removeAllViews()V

    .line 487
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_1

    .line 488
    new-instance v0, Lccsancom/vungle/warren/ui/view/FullAdWidget$DestroyRunnable;

    iget-object v2, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->webView:Lccsanandroid/webkit/WebView;

    invoke-direct {v0, v2}, Lccsancom/vungle/warren/ui/view/FullAdWidget$DestroyRunnable;-><init>(Lccsanandroid/webkit/WebView;)V

    invoke-virtual {v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget$DestroyRunnable;->run()V

    goto :goto_0

    .line 490
    :cond_1
    new-instance v0, Lccsancom/vungle/warren/utility/HandlerScheduler;

    invoke-direct {v0}, Lccsancom/vungle/warren/utility/HandlerScheduler;-><init>()V

    new-instance v2, Lccsancom/vungle/warren/ui/view/FullAdWidget$DestroyRunnable;

    iget-object v3, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->webView:Lccsanandroid/webkit/WebView;

    invoke-direct {v2, v3}, Lccsancom/vungle/warren/ui/view/FullAdWidget$DestroyRunnable;-><init>(Lccsanandroid/webkit/WebView;)V

    invoke-virtual {v0, v2, p1, p2}, Lccsancom/vungle/warren/utility/HandlerScheduler;->schedule(Ljava/lang/Runnable;J)V

    .line 492
    :goto_0
    iput-object v1, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->webView:Lccsanandroid/webkit/WebView;

    .line 493
    return-void
.end method

.method public getCurrentVideoPosition()I
    .locals 1

    .line 378
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoView:Lccsanandroid/widget/VideoView;

    invoke-virtual {v0}, Lccsanandroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 464
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->webView:Lccsanandroid/webkit/WebView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getVideoDuration()I
    .locals 1

    .line 382
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoView:Lccsanandroid/widget/VideoView;

    invoke-virtual {v0}, Lccsanandroid/widget/VideoView;->getDuration()I

    move-result v0

    return v0
.end method

.method getWebView()Lccsanandroid/webkit/WebView;
    .locals 1

    .line 553
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->webView:Lccsanandroid/webkit/WebView;

    return-object v0
.end method

.method public hasWebView()Z
    .locals 1

    .line 515
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->webView:Lccsanandroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVideoPlaying()Z
    .locals 1

    .line 304
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoView:Lccsanandroid/widget/VideoView;

    invoke-virtual {v0}, Lccsanandroid/widget/VideoView;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public linkWebView(Lccsanandroid/webkit/WebViewClient;Lccsancom/vungle/warren/ui/JavascriptBridge;)V
    .locals 2
    .param p1, "webViewClient"    # Lccsanandroid/webkit/WebViewClient;
    .param p2, "javascriptBridge"    # Lccsancom/vungle/warren/ui/JavascriptBridge;

    .line 275
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->webView:Lccsanandroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 276
    return-void

    .line 278
    :cond_0
    invoke-static {v0}, Lccsancom/vungle/warren/ui/view/WebSettingsUtils;->applyDefault(Lccsanandroid/webkit/WebView;)V

    .line 279
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->webView:Lccsanandroid/webkit/WebView;

    invoke-virtual {v0, p1}, Lccsanandroid/webkit/WebView;->setWebViewClient(Lccsanandroid/webkit/WebViewClient;)V

    .line 280
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->webView:Lccsanandroid/webkit/WebView;

    const-string v1, "Android"

    invoke-virtual {v0, p2, v1}, Lccsanandroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public pausePlayback()V
    .locals 1

    .line 312
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoView:Lccsanandroid/widget/VideoView;

    invoke-virtual {v0}, Lccsanandroid/widget/VideoView;->pause()V

    .line 313
    return-void
.end method

.method public pauseWeb()V
    .locals 1

    .line 448
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->webView:Lccsanandroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->onPause()V

    .line 452
    :cond_0
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->removeImmersiveModeListener()V

    .line 453
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->hideSystemUiRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 454
    return-void
.end method

.method public playVideo(Lccsanandroid/net/Uri;I)V
    .locals 3
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .param p2, "videoPosition"    # I

    .line 411
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoViewContainer:Lccsanandroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoView:Lccsanandroid/widget/VideoView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/VideoView;->setVideoURI(Lccsanandroid/net/Uri;)V

    .line 415
    sget-object v0, Lccsancom/vungle/warren/utility/ViewUtility$Asset;->privacy:Lccsancom/vungle/warren/utility/ViewUtility$Asset;

    invoke-virtual {p0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lccsancom/vungle/warren/utility/ViewUtility;->getBitmap(Lccsancom/vungle/warren/utility/ViewUtility$Asset;Lccsanandroid/content/Context;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    .line 417
    .local v0, "privacyBitmap":Lccsanandroid/graphics/Bitmap;
    iget-object v2, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->privacyOverlay:Lccsanandroid/widget/ImageView;

    invoke-virtual {v2, v0}, Lccsanandroid/widget/ImageView;->setImageBitmap(Lccsanandroid/graphics/Bitmap;)V

    .line 418
    iget-object v2, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->privacyOverlay:Lccsanandroid/widget/ImageView;

    invoke-virtual {v2, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 420
    iget-object v2, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->progressBar:Lccsanandroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    .line 421
    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->progressBar:Lccsanandroid/widget/ProgressBar;

    iget-object v2, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoView:Lccsanandroid/widget/VideoView;

    invoke-virtual {v2}, Lccsanandroid/widget/VideoView;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroid/widget/ProgressBar;->setMax(I)V

    .line 423
    invoke-virtual {p0, p2}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->startPlayback(I)Z

    .line 424
    return-void
.end method

.method public release(J)V
    .locals 2
    .param p1, "webViewDestroyDelay"    # J

    .line 439
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoView:Lccsanandroid/widget/VideoView;

    invoke-virtual {v0}, Lccsanandroid/widget/VideoView;->stopPlayback()V

    .line 440
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoView:Lccsanandroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/VideoView;->setOnCompletionListener(Lccsanandroid/media/MediaPlayer$OnCompletionListener;)V

    .line 441
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoView:Lccsanandroid/widget/VideoView;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/VideoView;->setOnErrorListener(Lccsanandroid/media/MediaPlayer$OnErrorListener;)V

    .line 442
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoView:Lccsanandroid/widget/VideoView;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/VideoView;->setOnPreparedListener(Lccsanandroid/media/MediaPlayer$OnPreparedListener;)V

    .line 443
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoView:Lccsanandroid/widget/VideoView;

    invoke-virtual {v0}, Lccsanandroid/widget/VideoView;->suspend()V

    .line 444
    invoke-virtual {p0, p1, p2}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->destroyWebView(J)V

    .line 445
    return-void
.end method

.method public resumeWeb()V
    .locals 1

    .line 457
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->webView:Lccsanandroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->onResume()V

    .line 460
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->hideSystemUiRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->post(Ljava/lang/Runnable;)Z

    .line 461
    return-void
.end method

.method public setCtaEnabled(Z)V
    .locals 2
    .param p1, "isCtaIconEnabled"    # Z

    .line 300
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->ctaOverlay:Lccsanandroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 301
    return-void
.end method

.method public setImmersiveMode()V
    .locals 2

    .line 362
    invoke-virtual {p0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->immersiveModeListener:Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 363
    return-void
.end method

.method public setMuted(Z)V
    .locals 4
    .param p1, "muted"    # Z

    .line 404
    sget-object v0, Lccsancom/vungle/warren/utility/ViewUtility$Asset;->mute:Lccsancom/vungle/warren/utility/ViewUtility$Asset;

    invoke-virtual {p0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/vungle/warren/utility/ViewUtility;->getBitmap(Lccsancom/vungle/warren/utility/ViewUtility$Asset;Lccsanandroid/content/Context;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    .line 405
    .local v0, "muteBitmap":Lccsanandroid/graphics/Bitmap;
    sget-object v1, Lccsancom/vungle/warren/utility/ViewUtility$Asset;->unMute:Lccsancom/vungle/warren/utility/ViewUtility$Asset;

    invoke-virtual {p0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lccsancom/vungle/warren/utility/ViewUtility;->getBitmap(Lccsancom/vungle/warren/utility/ViewUtility$Asset;Lccsanandroid/content/Context;)Lccsanandroid/graphics/Bitmap;

    move-result-object v1

    .line 407
    .local v1, "unMuteBitmap":Lccsanandroid/graphics/Bitmap;
    iget-object v2, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->muteButton:Lccsanandroid/widget/ImageView;

    if-eqz p1, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Lccsanandroid/widget/ImageView;->setImageBitmap(Lccsanandroid/graphics/Bitmap;)V

    .line 408
    return-void
.end method

.method public setOnCompletionListener(Lccsanandroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "completionListener"    # Lccsanandroid/media/MediaPlayer$OnCompletionListener;

    .line 435
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->onCompletionListener:Lccsanandroid/media/MediaPlayer$OnCompletionListener;

    .line 436
    return-void
.end method

.method public setOnErrorListener(Lccsanandroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "errorListener"    # Lccsanandroid/media/MediaPlayer$OnErrorListener;

    .line 431
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->onErrorListener:Lccsanandroid/media/MediaPlayer$OnErrorListener;

    .line 432
    return-void
.end method

.method public setOnItemClickListener(Lccsancom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;)V
    .locals 0
    .param p1, "proxyClickListener"    # Lccsancom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;

    .line 395
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->onClickProxy:Lccsancom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;

    .line 396
    return-void
.end method

.method public setOnPreparedListener(Lccsanandroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "preapredListener"    # Lccsanandroid/media/MediaPlayer$OnPreparedListener;

    .line 427
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->onPreparedListener:Lccsanandroid/media/MediaPlayer$OnPreparedListener;

    .line 428
    return-void
.end method

.method public setProgress(IF)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "duration"    # F

    .line 472
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->progressBar:Lccsanandroid/widget/ProgressBar;

    float-to-int v1, p2

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ProgressBar;->setMax(I)V

    .line 473
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->progressBar:Lccsanandroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/ProgressBar;->setProgress(I)V

    .line 474
    return-void
.end method

.method public showCloseButton(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 468
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->closeButton:Lccsanandroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 469
    return-void
.end method

.method public showWebsite(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->webView:Lccsanandroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 285
    return-void

    .line 287
    :cond_0
    sget-object v0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadJs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->webView:Lccsanandroid/webkit/WebView;

    invoke-virtual {v0, p1}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->webView:Lccsanandroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoViewContainer:Lccsanandroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoViewContainer:Lccsanandroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lccsanandroid/widget/RelativeLayout;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 292
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->progressBar:Lccsanandroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->closeButton:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->muteButton:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->ctaOverlay:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->privacyOverlay:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 297
    return-void
.end method

.method public startPlayback(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 316
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoView:Lccsanandroid/widget/VideoView;

    invoke-virtual {v0}, Lccsanandroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoView:Lccsanandroid/widget/VideoView;

    invoke-virtual {v0}, Lccsanandroid/widget/VideoView;->requestFocus()Z

    .line 319
    iput p1, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->startPosition:I

    .line 320
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 321
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoView:Lccsanandroid/widget/VideoView;

    iget v1, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->startPosition:I

    invoke-virtual {v0, v1}, Lccsanandroid/widget/VideoView;->seekTo(I)V

    .line 323
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoView:Lccsanandroid/widget/VideoView;

    invoke-virtual {v0}, Lccsanandroid/widget/VideoView;->start()V

    .line 326
    :cond_1
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoView:Lccsanandroid/widget/VideoView;

    invoke-virtual {v0}, Lccsanandroid/widget/VideoView;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public stopPlayback()V
    .locals 1

    .line 308
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->videoView:Lccsanandroid/widget/VideoView;

    invoke-virtual {v0}, Lccsanandroid/widget/VideoView;->stopPlayback()V

    .line 309
    return-void
.end method

.method public updateWindow()V
    .locals 2

    .line 372
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->window:Lccsanandroid/view/Window;

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Lccsanandroid/view/Window;->setFlags(II)V

    .line 374
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget;->window:Lccsanandroid/view/Window;

    invoke-virtual {v0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setBackgroundColor(I)V

    .line 375
    return-void
.end method
