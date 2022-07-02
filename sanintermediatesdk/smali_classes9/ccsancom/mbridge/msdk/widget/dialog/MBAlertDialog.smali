.class public Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;
.super Lccsanandroid/app/Dialog;
.source "MBAlertDialog.java"


# instance fields
.field private a:Lccsancom/mbridge/msdk/widget/dialog/a;

.field private b:Lccsanandroid/widget/TextView;

.field private c:Lccsanandroid/widget/TextView;

.field private d:Lccsanandroid/widget/Button;

.field private e:Lccsanandroid/widget/Button;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/widget/dialog/a;)V
    .locals 6

    .line 37
    const-string v0, "MBAlertDialog"

    const-string v1, "id"

    invoke-direct {p0, p1}, Lccsanandroid/app/Dialog;-><init>(Lccsanandroid/content/Context;)V

    .line 38
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->getWindow()Lccsanandroid/view/Window;

    move-result-object v2

    new-instance v3, Lccsanandroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lccsanandroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Lccsanandroid/view/Window;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 39
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->requestWindowFeature(I)Z

    .line 40
    invoke-static {p1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v2

    const-string v3, "ccsan_mbridge_cm_alertview"

    const-string v5, "layout"

    invoke-static {p1, v3, v5}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v2

    .line 41
    iput-object p2, p0, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->a:Lccsancom/mbridge/msdk/widget/dialog/a;

    .line 42
    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setContentView(Lccsanandroid/view/View;)V

    .line 45
    :try_start_0
    const-string v3, "mbridge_video_common_alertview_titleview"

    invoke-static {p1, v3, v1}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v3

    check-cast v3, Lccsanandroid/widget/TextView;

    iput-object v3, p0, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->b:Lccsanandroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 46
    :catch_0
    move-exception v3

    .line 47
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_0
    :try_start_1
    const-string v3, "mbridge_video_common_alertview_contentview"

    invoke-static {p1, v3, v1}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v3

    check-cast v3, Lccsanandroid/widget/TextView;

    iput-object v3, p0, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->c:Lccsanandroid/widget/TextView;

    .line 51
    const-string v3, "mbridge_video_common_alertview_confirm_button"

    invoke-static {p1, v3, v1}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v3

    check-cast v3, Lccsanandroid/widget/Button;

    iput-object v3, p0, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->d:Lccsanandroid/widget/Button;

    .line 52
    const-string v3, "mbridge_video_common_alertview_cancel_button"

    invoke-static {p1, v3, v1}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/Button;

    iput-object p1, p0, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->e:Lccsanandroid/widget/Button;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    goto :goto_1

    .line 53
    :catch_1
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    :goto_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->e:Lccsanandroid/widget/Button;

    if-eqz p1, :cond_1

    .line 58
    new-instance v0, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog$1;

    invoke-direct {v0, p0, p2}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog$1;-><init>(Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;Lccsancom/mbridge/msdk/widget/dialog/a;)V

    invoke-virtual {p1, v0}, Lccsanandroid/widget/Button;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 69
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->d:Lccsanandroid/widget/Button;

    if-eqz p1, :cond_2

    .line 70
    new-instance v0, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog$2;

    invoke-direct {v0, p0, p2}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog$2;-><init>(Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;Lccsancom/mbridge/msdk/widget/dialog/a;)V

    invoke-virtual {p1, v0}, Lccsanandroid/widget/Button;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 81
    :cond_2
    invoke-virtual {p0, v4}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 82
    invoke-virtual {p0, v4}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setCancelable(Z)V

    .line 85
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0, p2}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setContent(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p3}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setConfirmText(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, p4}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setCancelText(Ljava/lang/String;)V

    .line 122
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 88
    iget-object v0, p0, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->a:Lccsancom/mbridge/msdk/widget/dialog/a;

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->a:Lccsancom/mbridge/msdk/widget/dialog/a;

    .line 91
    :cond_0
    return-void
.end method

.method public hideNavigationBar(Lccsanandroid/view/Window;)V
    .locals 2

    .line 282
    if-eqz p1, :cond_2

    .line 283
    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Lccsanandroid/view/Window;->setFlags(II)V

    .line 285
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 286
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Lccsanandroid/view/Window;->addFlags(I)V

    .line 287
    const/16 v0, 0x1002

    .line 288
    invoke-virtual {p1}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroid/view/View;->setSystemUiVisibility(I)V

    .line 289
    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setSystemUiVisibility(I)V

    .line 293
    :goto_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 294
    invoke-virtual {p1}, Lccsanandroid/view/Window;->getAttributes()Lccsanandroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 295
    const/4 v1, 0x1

    iput v1, v0, Lccsanandroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 296
    invoke-virtual {p1, v0}, Lccsanandroid/view/Window;->setAttributes(Lccsanandroid/view/WindowManager$LayoutParams;)V

    .line 299
    :cond_1
    new-instance v0, Lccsanandroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsanandroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Lccsanandroid/view/Window;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 300
    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Lccsanandroid/view/Window;->setLayout(II)V

    .line 301
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lccsanandroid/view/Window;->setGravity(I)V

    .line 303
    :cond_2
    return-void
.end method

.method public makeIVAlertView(ILjava/lang/String;)V
    .locals 7

    .line 251
    const-string v0, ""

    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MBridge_ConfirmTitle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MBridge_ConfirmContent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MBridge_CancelText"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 254
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->getContext()Lccsanandroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MBridge_ConfirmText"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2, v0}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 256
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 257
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 258
    nop

    .line 1235
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    .line 1236
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "zh"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1237
    sget p2, Lccsancom/mbridge/msdk/foundation/same/a;->m:I

    if-ne p1, p2, :cond_0

    const-string p2, "\u786e\u8ba4\u5173\u95ed\uff1f"

    goto :goto_0

    :cond_0
    const-string p2, "\u63d0\u793a"

    :goto_0
    invoke-virtual {p0, p2}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 1238
    sget p2, Lccsancom/mbridge/msdk/foundation/same/a;->m:I

    if-ne p1, p2, :cond_1

    const-string p2, "\u5982\u679c\u4f60\u9009\u62e9\u7ee7\u7eed\uff0c\u7ed3\u675f\u540e\u5c06\u4f1a\u83b7\u5f97\u5956\u52b1\u3002\u786e\u8ba4\u5173\u95ed\u5417\uff1f"

    goto :goto_1

    :cond_1
    const-string p2, "\u5982\u679c\u4f60\u9009\u62e9\u7ee7\u7eed\uff0c\u7ed3\u675f\u540e\u5c06\u4f1a\u83b7\u5f97\u5956\u52b1\u3002\u662f\u5426\u7ee7\u7eed\uff1f"

    :goto_1
    invoke-virtual {p0, p2}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setContent(Ljava/lang/String;)V

    .line 1239
    sget p2, Lccsancom/mbridge/msdk/foundation/same/a;->m:I

    if-ne p1, p2, :cond_2

    const-string p1, "\u786e\u8ba4\u5173\u95ed"

    goto :goto_2

    :cond_2
    const-string p1, "\u53d6\u6d88"

    :goto_2
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setConfirmText(Ljava/lang/String;)V

    .line 1240
    const-string p1, "\u7ee7\u7eed"

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setCancelText(Ljava/lang/String;)V

    goto :goto_6

    .line 1242
    :cond_3
    sget p2, Lccsancom/mbridge/msdk/foundation/same/a;->m:I

    if-ne p1, p2, :cond_4

    const-string p2, "Confirm"

    goto :goto_3

    :cond_4
    const-string p2, "Tips"

    :goto_3
    invoke-virtual {p0, p2}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 1243
    sget p2, Lccsancom/mbridge/msdk/foundation/same/a;->m:I

    if-ne p1, p2, :cond_5

    const-string p2, "If you choose to continue, you will receive a reward after the end. Confirm closed?"

    goto :goto_4

    :cond_5
    const-string p2, "If you choose to continue, you will receive a reward after the end. Whether to continue?"

    :goto_4
    invoke-virtual {p0, p2}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setContent(Ljava/lang/String;)V

    .line 1244
    sget p2, Lccsancom/mbridge/msdk/foundation/same/a;->m:I

    if-ne p1, p2, :cond_6

    const-string p1, "Close"

    goto :goto_5

    :cond_6
    const-string p1, "Cancel"

    :goto_5
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setConfirmText(Ljava/lang/String;)V

    .line 1245
    const-string p1, "Continue"

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setCancelText(Ljava/lang/String;)V

    .line 258
    :goto_6
    goto :goto_7

    .line 260
    :cond_7
    invoke-direct {p0, v1, v2, v3, p2}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_7
    goto :goto_8

    .line 262
    :catch_0
    move-exception p1

    .line 263
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MBAlertDialog"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :goto_8
    return-void
.end method

.method public makePlayableAlertView()V
    .locals 4

    .line 211
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->E()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->G()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v3, v0}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_0
    nop

    .line 1220
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1221
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1222
    const-string v0, "\u786e\u8ba4\u5173\u95ed\uff1f"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 1223
    const-string v0, "\u5173\u95ed\u540e\u60a8\u5c06\u4e0d\u4f1a\u83b7\u5f97\u4efb\u4f55\u5956\u52b1\u5662~ "

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setContent(Ljava/lang/String;)V

    .line 1224
    const-string v0, "\u786e\u8ba4\u5173\u95ed"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setConfirmText(Ljava/lang/String;)V

    .line 1225
    const-string v0, "\u7ee7\u7eed\u8bd5\u73a9"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setCancelText(Ljava/lang/String;)V

    goto :goto_0

    .line 1227
    :cond_1
    const-string v0, "Confirm to close? "

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 1228
    const-string v0, "You will not be rewarded after closing the window"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setContent(Ljava/lang/String;)V

    .line 1229
    const-string v0, "Close it"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setConfirmText(Ljava/lang/String;)V

    .line 1230
    const-string v0, "Continue"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setCancelText(Ljava/lang/String;)V

    .line 217
    :goto_0
    return-void
.end method

.method public makeRVAlertView(Ljava/lang/String;)V
    .locals 17

    .line 126
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, ""

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MBridge_ConfirmTitle"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->getContext()Lccsanandroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MBridge_ConfirmContent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->getContext()Lccsanandroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MBridge_CancelText"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 129
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->getContext()Lccsanandroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MBridge_ConfirmText"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v2}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v2

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v6

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v2

    .line 132
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "\u7ee7\u7eed\u89c2\u770b"

    const-string v8, "\u786e\u8ba4\u5173\u95ed"

    const-string v9, "Continue"

    const-string v10, "\u5173\u95ed\u540e\u60a8\u5c06\u4e0d\u4f1a\u83b7\u5f97\u4efb\u4f55\u5956\u52b1\u5662~ "

    const-string v11, "Close it"

    const-string v12, "\u786e\u8ba4\u5173\u95ed\uff1f"

    const-string v13, "You will not be rewarded after closing the window"

    const-string v14, "Confirm to close? "

    const-string v15, "zh"

    if-eqz v6, :cond_2

    :try_start_1
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 133
    if-eqz v2, :cond_0

    .line 134
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/b/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/b/a;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/b/a;->E()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/b/a;->F()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v3, v4, v2}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_0
    nop

    .line 1196
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1197
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1198
    invoke-virtual {v1, v12}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 1199
    invoke-virtual {v1, v10}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setContent(Ljava/lang/String;)V

    .line 1200
    invoke-virtual {v1, v8}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setConfirmText(Ljava/lang/String;)V

    .line 1201
    invoke-virtual {v1, v7}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setCancelText(Ljava/lang/String;)V

    goto :goto_0

    .line 1203
    :cond_1
    invoke-virtual {v1, v14}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 1204
    invoke-virtual {v1, v13}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setContent(Ljava/lang/String;)V

    .line 1205
    invoke-virtual {v1, v11}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setConfirmText(Ljava/lang/String;)V

    .line 1206
    invoke-virtual {v1, v9}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setCancelText(Ljava/lang/String;)V

    .line 138
    :goto_0
    return-void

    .line 140
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 141
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 142
    if-eqz v2, :cond_3

    .line 143
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/b/a;->C()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 145
    :cond_3
    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 146
    invoke-virtual {v1, v12}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 148
    :cond_4
    invoke-virtual {v1, v14}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 153
    :cond_5
    :goto_1
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 154
    if-eqz v2, :cond_6

    .line 155
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/b/a;->D()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 157
    :cond_6
    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 158
    invoke-virtual {v1, v10}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setContent(Ljava/lang/String;)V

    goto :goto_2

    .line 160
    :cond_7
    invoke-virtual {v1, v13}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setContent(Ljava/lang/String;)V

    .line 165
    :cond_8
    :goto_2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 166
    if-eqz v2, :cond_9

    .line 167
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/b/a;->E()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 169
    :cond_9
    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 170
    invoke-virtual {v1, v8}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setConfirmText(Ljava/lang/String;)V

    goto :goto_3

    .line 172
    :cond_a
    invoke-virtual {v1, v11}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setConfirmText(Ljava/lang/String;)V

    .line 177
    :cond_b
    :goto_3
    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 178
    if-eqz v2, :cond_c

    .line 179
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/b/a;->F()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 181
    :cond_c
    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 182
    invoke-virtual {v1, v7}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setCancelText(Ljava/lang/String;)V

    goto :goto_4

    .line 184
    :cond_d
    invoke-virtual {v1, v9}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->setCancelText(Ljava/lang/String;)V

    .line 189
    :cond_e
    :goto_4
    invoke-direct {v1, v3, v4, v0, v5}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 192
    goto :goto_5

    .line 190
    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MBAlertDialog"

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :goto_5
    return-void
.end method

.method public setCancelText(Ljava/lang/String;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->e:Lccsanandroid/widget/Button;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p1}, Lccsanandroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_0
    return-void
.end method

.method public setConfirmText(Ljava/lang/String;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->d:Lccsanandroid/widget/Button;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p1}, Lccsanandroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->c:Lccsanandroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->b:Lccsanandroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 269
    invoke-super {p0}, Lccsanandroid/app/Dialog;->show()V

    .line 271
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1}, Lccsanandroid/view/Window;->setFlags(II)V

    .line 272
    invoke-super {p0}, Lccsanandroid/app/Dialog;->show()V

    .line 273
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->hideNavigationBar(Lccsanandroid/view/Window;)V

    .line 274
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/widget/dialog/MBAlertDialog;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsanandroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBAlertDialog"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-super {p0}, Lccsanandroid/app/Dialog;->show()V

    .line 279
    :goto_0
    return-void
.end method
