.class public Lccsancom/mbridge/msdk/out/LoadingActivity;
.super Lccsanandroid/app/Activity;
.source "LoadingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/out/LoadingActivity$OnLoadingDialogCallback;
    }
.end annotation


# instance fields
.field private abitmap:Lccsanandroid/graphics/Bitmap;

.field broadcastReceiver:Lccsanandroid/content/BroadcastReceiver;

.field private cipl:Lccsancom/mbridge/msdk/foundation/same/c/c;

.field private drawable:Lccsanandroid/graphics/drawable/Drawable;

.field private icon_url:Ljava/lang/String;

.field private img_icon:Lccsanandroid/widget/ImageView;

.field private mCallback:Lccsancom/mbridge/msdk/out/LoadingActivity$OnLoadingDialogCallback;

.field private rlayout:Lccsanandroid/widget/RelativeLayout;

.field private rlayout_main:Lccsanandroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lccsanandroid/app/Activity;-><init>()V

    .line 30
    new-instance v0, Lccsancom/mbridge/msdk/out/LoadingActivity$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/out/LoadingActivity$1;-><init>(Lccsancom/mbridge/msdk/out/LoadingActivity;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->cipl:Lccsancom/mbridge/msdk/foundation/same/c/c;

    .line 48
    new-instance v0, Lccsancom/mbridge/msdk/out/LoadingActivity$2;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/out/LoadingActivity$2;-><init>(Lccsancom/mbridge/msdk/out/LoadingActivity;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->broadcastReceiver:Lccsanandroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lccsancom/mbridge/msdk/out/LoadingActivity;)Lccsanandroid/widget/ImageView;
    .locals 0

    .line 23
    iget-object p0, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->img_icon:Lccsanandroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$102(Lccsancom/mbridge/msdk/out/LoadingActivity;Lccsanandroid/graphics/Bitmap;)Lccsanandroid/graphics/Bitmap;
    .locals 0

    .line 23
    iput-object p1, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->abitmap:Lccsanandroid/graphics/Bitmap;

    return-object p1
.end method

.method private initView()Lccsanandroid/view/View;
    .locals 5

    .line 105
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->rlayout_main:Lccsanandroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 106
    new-instance v0, Lccsanandroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Lccsanandroid/widget/RelativeLayout;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->rlayout_main:Lccsanandroid/widget/RelativeLayout;

    .line 107
    new-instance v0, Lccsanandroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Lccsanandroid/widget/RelativeLayout;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->rlayout:Lccsanandroid/widget/RelativeLayout;

    .line 108
    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {p0, v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v0

    .line 109
    iget-object v1, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->rlayout:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v0, v0, v0}, Lccsanandroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 110
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/out/LoadingActivity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/out/LoadingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 110
    const-string v2, "mbridge_native_bg_loading_camera"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Lccsanandroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 112
    iget-object v1, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->rlayout:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 113
    new-instance v0, Lccsanandroid/widget/TextView;

    invoke-direct {v0, p0}, Lccsanandroid/widget/TextView;-><init>(Lccsanandroid/content/Context;)V

    .line 114
    const/high16 v1, 0x430c0000    # 140.0f

    invoke-static {p0, v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v1

    .line 115
    const/high16 v2, 0x41fc0000    # 31.5f

    invoke-static {p0, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v2

    .line 116
    new-instance v3, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 117
    iget-object v1, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->rlayout:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v3}, Lccsanandroid/widget/RelativeLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance v0, Lccsancom/mbridge/msdk/widget/MBImageView;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/widget/MBImageView;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->img_icon:Lccsanandroid/widget/ImageView;

    .line 119
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setId(I)V

    .line 120
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->img_icon:Lccsanandroid/widget/ImageView;

    iget-object v1, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->icon_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->icon_url:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/out/LoadingActivity;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/same/c/b;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->icon_url:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->cipl:Lccsancom/mbridge/msdk/foundation/same/c/c;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/same/c/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/c/c;)V

    .line 125
    :cond_0
    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {p0, v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v0

    .line 126
    new-instance v1, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 127
    const/16 v0, 0xd

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 128
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->rlayout:Lccsanandroid/widget/RelativeLayout;

    iget-object v3, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->img_icon:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, v3, v1}, Lccsanandroid/widget/RelativeLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 130
    new-instance v0, Lccsanandroid/widget/TextView;

    invoke-direct {v0, p0}, Lccsanandroid/widget/TextView;-><init>(Lccsanandroid/content/Context;)V

    .line 131
    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->setSingleLine()V

    .line 132
    invoke-virtual {v0, v2}, Lccsanandroid/widget/TextView;->setTextColor(I)V

    .line 133
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setTextSize(F)V

    .line 134
    const-string v1, "Relax while loading...."

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    new-instance v1, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 137
    const/4 v3, 0x3

    iget-object v4, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->img_icon:Lccsanandroid/widget/ImageView;

    invoke-virtual {v4}, Lccsanandroid/widget/ImageView;->getId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 138
    const/16 v3, 0xe

    invoke-virtual {v1, v3, v2}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 139
    iget-object v3, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->rlayout:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v3, v0, v1}, Lccsanandroid/widget/RelativeLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->rlayout_main:Lccsanandroid/widget/RelativeLayout;

    iget-object v1, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->rlayout:Lccsanandroid/widget/RelativeLayout;

    new-instance v3, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Lccsanandroid/widget/RelativeLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 144
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->rlayout_main:Lccsanandroid/widget/RelativeLayout;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/out/LoadingActivity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object p1

    const-string v0, "icon_url"

    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/out/LoadingActivity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->icon_url:Ljava/lang/String;

    .line 100
    :cond_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/out/LoadingActivity;->initView()Lccsanandroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/out/LoadingActivity;->setContentView(Lccsanandroid/view/View;)V

    .line 102
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 73
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->broadcastReceiver:Lccsanandroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/out/LoadingActivity;->unregisterReceiver(Lccsanandroid/content/BroadcastReceiver;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->img_icon:Lccsanandroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setImageBitmap(Lccsanandroid/graphics/Bitmap;)V

    .line 79
    :cond_1
    iput-object v1, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->img_icon:Lccsanandroid/widget/ImageView;

    .line 80
    iput-object v1, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->rlayout_main:Lccsanandroid/widget/RelativeLayout;

    .line 81
    iput-object v1, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->cipl:Lccsancom/mbridge/msdk/foundation/same/c/c;

    .line 82
    iput-object v1, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->drawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 83
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->rlayout:Lccsanandroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 86
    :cond_2
    iput-object v1, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->rlayout:Lccsanandroid/widget/RelativeLayout;

    .line 87
    iget-object v0, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->abitmap:Lccsanandroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lccsanandroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 88
    iput-object v1, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->abitmap:Lccsanandroid/graphics/Bitmap;

    .line 90
    :cond_3
    invoke-super {p0}, Lccsanandroid/app/Activity;->onDestroy()V

    .line 92
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 61
    invoke-super {p0}, Lccsanandroid/app/Activity;->onResume()V

    .line 63
    new-instance v0, Lccsanandroid/content/IntentFilter;

    invoke-direct {v0}, Lccsanandroid/content/IntentFilter;-><init>()V

    .line 64
    const-string v1, "ExitApp"

    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lccsancom/mbridge/msdk/out/LoadingActivity;->broadcastReceiver:Lccsanandroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p0, v1, v0}, Lccsancom/mbridge/msdk/out/LoadingActivity;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    .line 69
    :cond_0
    return-void
.end method
