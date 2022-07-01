.class public abstract Lccsancom/mbridge/msdk/activity/MBBaseActivity;
.super Lccsanandroid/app/Activity;
.source "MBBaseActivity.java"


# instance fields
.field private a:Lccsanandroid/view/OrientationEventListener;

.field private b:Lccsanandroid/view/Display;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lccsanandroid/app/Activity;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->c:I

    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/activity/MBBaseActivity;)I
    .locals 1

    .line 19
    nop

    .line 1175
    iget-object v0, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->b:Lccsanandroid/view/Display;

    if-nez v0, :cond_0

    .line 1176
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/WindowManager;

    invoke-interface {v0}, Lccsanandroid/view/WindowManager;->getDefaultDisplay()Lccsanandroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->b:Lccsanandroid/view/Display;

    .line 1179
    :cond_0
    iget-object p0, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->b:Lccsanandroid/view/Display;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lccsanandroid/view/Display;->getRotation()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    .line 19
    :goto_0
    return p0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/activity/MBBaseActivity;I)I
    .locals 0

    .line 19
    iput p1, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->c:I

    return p1
.end method

.method private a()V
    .locals 2

    .line 184
    :try_start_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 185
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Lccsanandroid/view/Window;->addFlags(I)V

    .line 186
    const/16 v0, 0x1002

    .line 187
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroid/view/View;->setSystemUiVisibility(I)V

    .line 188
    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :goto_0
    goto :goto_1

    .line 191
    :catchall_0
    move-exception v0

    .line 192
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBBaseActivity"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_1
    return-void
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/activity/MBBaseActivity;)I
    .locals 0

    .line 19
    iget p0, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->c:I

    return p0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/activity/MBBaseActivity;)Lccsanandroid/view/OrientationEventListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->a:Lccsanandroid/view/OrientationEventListener;

    return-object p0
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/activity/MBBaseActivity;)V
    .locals 2

    .line 19
    nop

    .line 2133
    new-instance v0, Lccsancom/mbridge/msdk/activity/MBBaseActivity$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1}, Lccsancom/mbridge/msdk/activity/MBBaseActivity$2;-><init>(Lccsancom/mbridge/msdk/activity/MBBaseActivity;Lccsanandroid/content/Context;I)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->a:Lccsanandroid/view/OrientationEventListener;

    .line 2166
    invoke-virtual {v0}, Lccsanandroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2167
    iget-object p0, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->a:Lccsanandroid/view/OrientationEventListener;

    invoke-virtual {p0}, Lccsanandroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    .line 2169
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->a:Lccsanandroid/view/OrientationEventListener;

    invoke-virtual {v0}, Lccsanandroid/view/OrientationEventListener;->disable()V

    .line 2170
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->a:Lccsanandroid/view/OrientationEventListener;

    .line 19
    :goto_0
    return-void
.end method


# virtual methods
.method public getNotchParams()V
    .locals 4

    .line 69
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v0

    new-instance v1, Lccsancom/mbridge/msdk/activity/MBBaseActivity$1;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/activity/MBBaseActivity$1;-><init>(Lccsancom/mbridge/msdk/activity/MBBaseActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    return-void
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 2

    .line 28
    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 30
    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->requestWindowFeature(I)Z

    .line 31
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Lccsanandroid/view/Window;->setFlags(II)V

    .line 32
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Lccsanandroid/view/Window;->addFlags(I)V

    .line 34
    invoke-direct {p0}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->a()V

    .line 36
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 37
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/Window;->getAttributes()Lccsanandroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 38
    iput p1, v0, Lccsanandroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 39
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->getWindow()Lccsanandroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsanandroid/view/Window;->setAttributes(Lccsanandroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_0
    goto :goto_0

    .line 41
    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBBaseActivity"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 61
    invoke-super {p0}, Lccsanandroid/app/Activity;->onDestroy()V

    .line 62
    iget-object v0, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->a:Lccsanandroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Lccsanandroid/view/OrientationEventListener;->disable()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->a:Lccsanandroid/view/OrientationEventListener;

    .line 66
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 48
    invoke-super {p0}, Lccsanandroid/app/Activity;->onResume()V

    .line 49
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->getNotchParams()V

    .line 50
    invoke-direct {p0}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->a()V

    .line 51
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 56
    invoke-direct {p0}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->a()V

    .line 57
    return-void
.end method

.method public abstract setTopControllerPadding(IIIII)V
.end method
