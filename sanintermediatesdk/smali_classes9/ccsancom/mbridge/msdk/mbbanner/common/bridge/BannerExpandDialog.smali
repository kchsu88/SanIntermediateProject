.class public Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;
.super Lccsanandroid/app/Dialog;
.source "BannerExpandDialog.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lccsanandroid/widget/FrameLayout;

.field private e:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

.field private f:Lccsanandroid/widget/TextView;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lccsancom/mbridge/msdk/mbbanner/common/b/a;

.field private j:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/os/Bundle;Lccsancom/mbridge/msdk/mbbanner/common/b/a;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lccsanandroid/app/Dialog;-><init>(Lccsanandroid/content/Context;)V

    .line 39
    const-string p1, "BannerExpandDialog"

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->a:Ljava/lang/String;

    .line 206
    new-instance p1, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$4;

    invoke-direct {p1, p0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$4;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->j:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;

    .line 56
    if-eqz p2, :cond_0

    .line 57
    const-string p1, "url"

    invoke-virtual {p2, p1}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->b:Ljava/lang/String;

    .line 58
    const-string p1, "shouldUseCustomClose"

    invoke-virtual {p2, p1}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->c:Z

    .line 61
    :cond_0
    iput-object p3, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->i:Lccsancom/mbridge/msdk/mbbanner/common/b/a;

    .line 62
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;Lccsancom/mbridge/msdk/mbbanner/common/b/a;)Lccsancom/mbridge/msdk/mbbanner/common/b/a;
    .locals 0

    .line 38
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->i:Lccsancom/mbridge/msdk/mbbanner/common/b/a;

    return-object p1
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;
    .locals 0

    .line 38
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->e:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    return-object p1
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;)V
    .locals 22

    .line 38
    move-object/from16 v0, p0

    const-string v1, "true"

    .line 1169
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    .line 1170
    invoke-virtual {v2}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Lccsanandroid/content/res/Configuration;->orientation:I

    .line 1171
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3}, Lccsanorg/json/JSONObject;-><init>()V

    .line 1173
    const-string v4, "orientation"

    .line 1174
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v2, v5, :cond_0

    const-string v2, "landscape"

    goto :goto_0

    :cond_0
    if-ne v2, v6, :cond_1

    const-string v2, "portrait"

    goto :goto_0

    :cond_1
    const-string v2, "undefined"

    .line 1173
    :goto_0
    invoke-virtual {v3, v4, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1175
    const-string v2, "locked"

    invoke-virtual {v3, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1177
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/m;->h(Lccsanandroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    .line 1178
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lccsancom/mbridge/msdk/foundation/tools/m;->i(Lccsanandroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    .line 1180
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v7

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lccsancom/mbridge/msdk/foundation/tools/m;->j(Lccsanandroid/content/Context;)Ljava/util/HashMap;

    move-result-object v7

    .line 1181
    const-string v8, "width"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1182
    const-string v9, "height"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1184
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1185
    const-string v10, "placementType"

    const-string v11, "Interstitial"

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    const-string v10, "state"

    const-string v11, "expanded"

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    const-string v10, "viewable"

    invoke-virtual {v9, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    const-string v1, "currentAppOrientation"

    invoke-virtual {v9, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    new-array v1, v5, [I

    .line 1191
    iget-object v3, v0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->e:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v3, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getLocationInWindow([I)V

    .line 1193
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v10

    iget-object v11, v0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->e:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    const/4 v3, 0x0

    aget v5, v1, v3

    int-to-float v12, v5

    aget v5, v1, v6

    int-to-float v13, v5

    .line 1194
    invoke-virtual {v11}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getWidth()I

    move-result v5

    int-to-float v14, v5

    iget-object v5, v0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->e:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getHeight()I

    move-result v5

    int-to-float v15, v5

    .line 1193
    invoke-virtual/range {v10 .. v15}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Lccsanandroid/webkit/WebView;FFFF)V

    .line 1195
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v16

    iget-object v5, v0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->e:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    aget v3, v1, v3

    int-to-float v3, v3

    aget v1, v1, v6

    int-to-float v1, v1

    .line 1196
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v10, v0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->e:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v10}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    .line 1195
    move-object/from16 v17, v5

    move/from16 v18, v3

    move/from16 v19, v1

    move/from16 v20, v6

    move/from16 v21, v10

    invoke-virtual/range {v16 .. v21}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->b(Lccsanandroid/webkit/WebView;FFFF)V

    .line 1197
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v1

    iget-object v3, v0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->e:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v1, v3, v2, v4}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->b(Lccsanandroid/webkit/WebView;FF)V

    .line 1198
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v1

    iget-object v2, v0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->e:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    int-to-float v3, v8

    int-to-float v4, v7

    invoke-virtual {v1, v2, v3, v4}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->c(Lccsanandroid/webkit/WebView;FF)V

    .line 1199
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v1

    iget-object v2, v0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->e:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v1, v2, v9}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Lccsanandroid/webkit/WebView;Ljava/util/Map;)V

    .line 1200
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v1

    iget-object v0, v0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->e:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Lccsanandroid/webkit/WebView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1203
    goto :goto_1

    .line 1201
    :catchall_0
    move-exception v0

    .line 1202
    const-string v1, "BannerExpandDialog"

    const-string v2, "notifyMraid"

    invoke-static {v1, v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    :goto_1
    return-void
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;)Lccsancom/mbridge/msdk/mbbanner/common/b/a;
    .locals 0

    .line 38
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->i:Lccsancom/mbridge/msdk/mbbanner/common/b/a;

    return-object p0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;
    .locals 0

    .line 38
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->e:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    return-object p0
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;)Lccsanandroid/widget/FrameLayout;
    .locals 0

    .line 38
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->d:Lccsanandroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;)Lccsanandroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->f:Lccsanandroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 3

    .line 66
    invoke-super {p0, p1}, Lccsanandroid/app/Dialog;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 67
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->requestWindowFeature(I)Z

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->setCanceledOnTouchOutside(Z)V

    .line 70
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->setCancelable(Z)V

    .line 72
    nop

    .line 1076
    new-instance p1, Lccsanandroid/widget/FrameLayout;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->d:Lccsanandroid/widget/FrameLayout;

    .line 1077
    new-instance v1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Lccsanandroid/widget/FrameLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 1080
    new-instance p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;-><init>(Lccsanandroid/content/Context;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->e:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 1081
    new-instance v1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 1083
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->d:Lccsanandroid/widget/FrameLayout;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->e:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {p1, v1}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    .line 1085
    new-instance p1, Lccsanandroid/widget/TextView;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lccsanandroid/widget/TextView;-><init>(Lccsanandroid/content/Context;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->f:Lccsanandroid/widget/TextView;

    .line 1086
    invoke-virtual {p1, v0}, Lccsanandroid/widget/TextView;->setBackgroundColor(I)V

    .line 1087
    new-instance p1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x60

    invoke-direct {p1, v1, v1}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1088
    const v1, 0x800035

    iput v1, p1, Lccsanandroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1089
    const/16 v1, 0x1e

    invoke-virtual {p1, v1, v1, v1, v1}, Lccsanandroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1090
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->f:Lccsanandroid/widget/TextView;

    invoke-virtual {v1, p1}, Lccsanandroid/widget/TextView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 1091
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->f:Lccsanandroid/widget/TextView;

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 1092
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->f:Lccsanandroid/widget/TextView;

    new-instance v1, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$1;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$1;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;)V

    invoke-virtual {p1, v1}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 1098
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->d:Lccsanandroid/widget/FrameLayout;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->f:Lccsanandroid/widget/TextView;

    invoke-virtual {p1, v1}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    .line 1100
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->d:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->setContentView(Lccsanandroid/view/View;)V

    .line 1102
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->getWindow()Lccsanandroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1103
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->getWindow()Lccsanandroid/view/Window;

    move-result-object p1

    new-instance v1, Lccsanandroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Lccsanandroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Lccsanandroid/view/Window;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 1104
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->getWindow()Lccsanandroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0, v0, v0, v0}, Lccsanandroid/view/View;->setPadding(IIII)V

    .line 1105
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->getWindow()Lccsanandroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/view/Window;->getAttributes()Lccsanandroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 1106
    iput v2, p1, Lccsanandroid/view/WindowManager$LayoutParams;->width:I

    .line 1107
    iput v2, p1, Lccsanandroid/view/WindowManager$LayoutParams;->height:I

    .line 1108
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/Window;->setAttributes(Lccsanandroid/view/WindowManager$LayoutParams;)V

    .line 1110
    sget p1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_2

    .line 1111
    const/16 p1, 0x207

    .line 1116
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 1117
    const/16 p1, 0x1207

    .line 1119
    :cond_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/View;->setSystemUiVisibility(I)V

    .line 1123
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->e:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    new-instance v0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$2;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$2;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;)V

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;)V

    .line 1144
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->e:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->j:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    .line 1145
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->e:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->loadUrl(Ljava/lang/String;)V

    .line 1147
    new-instance p1, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$3;

    invoke-direct {p1, p0}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog$3;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;)V

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->setOnDismissListener(Lccsanandroid/content/DialogInterface$OnDismissListener;)V

    .line 73
    return-void
.end method

.method public setCampaignList(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->g:Ljava/lang/String;

    .line 164
    iput-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/bridge/BannerExpandDialog;->h:Ljava/util/List;

    .line 165
    return-void
.end method
