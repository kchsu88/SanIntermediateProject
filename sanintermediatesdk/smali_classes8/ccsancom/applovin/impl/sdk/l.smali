.class public Lccsancom/applovin/impl/sdk/l;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/communicator/AppLovinCommunicatorSubscriber;
.implements Lccsancom/applovin/impl/sdk/utils/h$a;


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/k;

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lccsancom/applovin/impl/sdk/utils/h;

.field private f:Lccsancom/applovin/impl/sdk/utils/m;

.field private g:I


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/k;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/l;->c:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/l;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->J()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsancom/applovin/communicator/AppLovinCommunicator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/applovin/communicator/AppLovinCommunicator;

    move-result-object p1

    const-string/jumbo v0, "safedk_ad_info"

    invoke-virtual {p1, p0, v0}, Lccsancom/applovin/communicator/AppLovinCommunicator;->subscribe(Lccsancom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/l;I)I
    .locals 0

    iput p1, p0, Lccsancom/applovin/impl/sdk/l;->g:I

    return p1
.end method

.method private a(Lccsanandroid/app/Activity;)Lccsanandroid/view/View;
    .locals 5

    const/16 v0, 0x28

    invoke-static {p1, v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Lccsanandroid/content/Context;I)I

    move-result v0

    div-int/lit8 v1, v0, 0xa

    new-instance v2, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const v3, 0x800015

    invoke-direct {v2, v0, v0, v3}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v1, v1, v1, v1}, Lccsanandroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    :try_start_0
    new-instance v0, Lccsanandroid/widget/ImageButton;

    invoke-direct {v0, p1}, Lccsanandroid/widget/ImageButton;-><init>(Lccsanandroid/content/Context;)V

    invoke-virtual {p1}, Lccsanandroid/app/Activity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v3

    sget v4, Lccsancom/applovin/sdk/R$drawable;->ccsan_applovin_ic_white_small:I

    invoke-virtual {v3, v4}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lccsanandroid/widget/ImageButton;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    sget-object v3, Lccsanandroid/widget/ImageView$ScaleType;->FIT_CENTER:Lccsanandroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Lccsanandroid/widget/ImageButton;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v0, v1, v1, v1, v3}, Lccsanandroid/widget/ImageButton;->setPadding(IIII)V
    :try_end_0
    .catch Lccsanandroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lccsanandroid/widget/Button;

    invoke-direct {v0, p1}, Lccsanandroid/widget/Button;-><init>(Lccsanandroid/content/Context;)V

    const-string/jumbo v1, "\u24d8"

    invoke-virtual {v0, v1}, Lccsanandroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/Button;->setTextColor(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/Button;->setAllCaps(Z)V

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Lccsanandroid/widget/Button;->setTextSize(IF)V

    invoke-virtual {v0, v1, v1, v1, v1}, Lccsanandroid/widget/Button;->setPadding(IIII)V

    :goto_0
    invoke-virtual {v0, v2}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/l;->e()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    new-instance v1, Lccsancom/applovin/impl/sdk/l$4;

    invoke-direct {v1, p0, p1}, Lccsancom/applovin/impl/sdk/l$4;-><init>(Lccsancom/applovin/impl/sdk/l;Lccsanandroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/f;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    invoke-static {p1, v1}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Lccsanandroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lccsanandroid/view/View;->setElevation(F)V

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/l;)Lccsancom/applovin/impl/sdk/k;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/l;->a:Lccsancom/applovin/impl/sdk/k;

    return-object p0
.end method

.method private a(Lccsanandroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/l;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lccsanandroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Lccsanandroid/app/AlertDialog$Builder;-><init>(Lccsanandroid/content/Context;)V

    const-string p1, "Ad Info"

    invoke-virtual {v2, p1}, Lccsanandroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lccsanandroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsanandroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lccsanandroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v2, "Close"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lccsanandroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v2, Lccsancom/applovin/impl/sdk/l$5;

    invoke-direct {v2, p0, v1, v0}, Lccsancom/applovin/impl/sdk/l$5;-><init>(Lccsancom/applovin/impl/sdk/l;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    const-string v0, "Report"

    invoke-virtual {p1, v0, v2}, Lccsanandroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/app/AlertDialog$Builder;->show()Lccsanandroid/app/AlertDialog;

    return-void
.end method

.method private a(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/j;

    invoke-direct {v0}, Lccsancom/applovin/impl/sdk/utils/j;-><init>()V

    const-string v1, "Describe your issue below:\n\n\n"

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/utils/j;->b(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object v1

    const-string v2, "Ad Info:"

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object v1

    invoke-virtual {v1, p2}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object p2

    const-string v1, "\nDebug Info:\n"

    invoke-virtual {p2, v1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object p2

    const-string v1, "Platform"

    const-string v2, "Android"

    invoke-virtual {p2, v1, v2}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object p2

    sget-object v1, Lccsancom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    const-string v2, "AppLovin SDK Version"

    invoke-virtual {p2, v2, v1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object p2

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/l;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->dz:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Plugin Version"

    invoke-virtual {p2, v2, v1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object p2

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/Utils;->getSafedkVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ad Review Version"

    invoke-virtual {p2, v2, v1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object p2

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "App Package Name"

    invoke-virtual {p2, v2, v1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object p2

    sget-object v1, Lccsanandroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "Device"

    invoke-virtual {p2, v2, v1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object p2

    sget-object v1, Lccsanandroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "OS Version"

    invoke-virtual {p2, v2, v1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object p2

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/l;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovin Random Token"

    invoke-virtual {p2, v2, v1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    iget-object p2, p0, Lccsancom/applovin/impl/sdk/l;->d:Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string p2, "\nSafeDK Ad Info:\n"

    invoke-virtual {v0, p2}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/utils/j;

    iget-object p2, p0, Lccsancom/applovin/impl/sdk/l;->d:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/utils/j;

    :cond_0
    new-instance p2, Lccsanandroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {p2, v1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "text/plain"

    invoke-virtual {p2, v1}, Lccsanandroid/content/Intent;->setType(Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object p2

    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "MAX Ad Report"

    invoke-virtual {p2, v1, v2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object p2

    const-string v2, "com.google.android.gm"

    invoke-virtual {p2, v2}, Lccsanandroid/content/Intent;->setPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object p2

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/l;->b:Ljava/lang/Object;

    instance-of v2, v2, Lccsancom/applovin/impl/sdk/a/g;

    if-eqz v2, :cond_2

    const-string v2, "AppLovin Ad Report"

    invoke-virtual {p2, v1, v2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/l;->b:Ljava/lang/Object;

    check-cast v1, Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/g;->b()Lccsanorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ad_response.json"

    invoke-static {v2, v3}, Lccsancom/applovin/impl/sdk/AppLovinContentProviderUtils;->cacheTextWithFileName(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p2, v1, v2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Lccsanandroid/os/Parcelable;)Lccsanandroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v2, "\nAd Response:\n"

    invoke-virtual {v0, v2}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/utils/j;

    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/utils/j;

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/utils/j;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p2, v1, v0}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, p2}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_0
    .catch Lccsanandroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lccsanandroid/content/Intent;->setPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    invoke-virtual {p1, p2}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/l;Lccsanandroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/sdk/l;->a(Lccsanandroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/l;Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/sdk/l;->a(Lccsanandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lccsancom/applovin/impl/sdk/l;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/l;->d()V

    return-void
.end method

.method private d()V
    .locals 6

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/l;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ac()Lccsancom/applovin/impl/sdk/q;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/q;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/l;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/l;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ad()Lccsancom/applovin/impl/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a;->a()Lccsanandroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lccsanandroid/app/Activity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lccsanandroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/l;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Displaying creative debugger button for ad: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsancom/applovin/impl/sdk/l;->b:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppLovinSdk"

    invoke-virtual {v2, v4, v3}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Lccsanandroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/sdk/l;->a(Lccsanandroid/app/Activity;)Lccsanandroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    new-instance v3, Lccsanandroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5}, Lccsanandroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Lccsanandroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v3}, Lccsanandroid/view/View;->startAnimation(Lccsanandroid/view/animation/Animation;)V

    invoke-virtual {v1}, Lccsanandroid/view/View;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v3, Lccsancom/applovin/impl/sdk/l$3;

    invoke-direct {v3, p0, v0, v2}, Lccsancom/applovin/impl/sdk/l$3;-><init>(Lccsancom/applovin/impl/sdk/l;Lccsanandroid/view/View;Lccsanandroid/widget/FrameLayout;)V

    invoke-virtual {v1, v3}, Lccsanandroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lccsancom/applovin/impl/sdk/l;->c:Ljava/lang/ref/WeakReference;

    :cond_1
    :goto_0
    return-void
.end method

.method private e()Lccsanandroid/graphics/drawable/Drawable;
    .locals 6

    new-instance v0, Lccsanandroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Lccsanandroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/4 v2, 0x5

    const/16 v3, 0x83

    const/16 v4, 0xaa

    invoke-static {v2, v3, v4}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsanandroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-instance v2, Lccsanandroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Lccsanandroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v2, v1}, Lccsanandroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/4 v3, 0x2

    const/16 v4, 0x62

    const/16 v5, 0x7f

    invoke-static {v3, v4, v5}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsanandroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-instance v3, Lccsanandroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Lccsanandroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v1, v1, [I

    const v4, 0x10100a7

    const/4 v5, 0x0

    aput v4, v1, v5

    invoke-virtual {v3, v1, v2}, Lccsanandroid/graphics/drawable/StateListDrawable;->addState([ILccsanandroid/graphics/drawable/Drawable;)V

    new-array v1, v5, [I

    invoke-virtual {v3, v1, v0}, Lccsanandroid/graphics/drawable/StateListDrawable;->addState([ILccsanandroid/graphics/drawable/Drawable;)V

    return-object v3
.end method

.method private f()Ljava/lang/String;
    .locals 4

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/j;

    invoke-direct {v0}, Lccsancom/applovin/impl/sdk/utils/j;-><init>()V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/l;->b:Ljava/lang/Object;

    instance-of v2, v1, Lccsancom/applovin/impl/sdk/a/g;

    if-eqz v2, :cond_0

    check-cast v1, Lccsancom/applovin/impl/sdk/a/g;

    const-string v2, "Network"

    const-string v3, "APPLOVIN"

    invoke-virtual {v0, v2, v3}, Lccsancom/applovin/impl/sdk/utils/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Lccsancom/applovin/impl/sdk/a/g;)Lccsancom/applovin/impl/sdk/utils/j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsancom/applovin/impl/sdk/utils/j;->b(Lccsancom/applovin/impl/sdk/a/g;)Lccsancom/applovin/impl/sdk/utils/j;

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lccsancom/applovin/impl/mediation/a/a;

    if-eqz v2, :cond_1

    check-cast v1, Lccsancom/applovin/impl/mediation/a/a;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Lccsancom/applovin/impl/mediation/a/a;)Lccsancom/applovin/impl/sdk/utils/j;

    :cond_1
    :goto_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/l;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/utils/j;->a(Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/impl/sdk/utils/j;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/utils/j;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/l;->e:Lccsancom/applovin/impl/sdk/utils/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/utils/h;->b()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/l;->b:Ljava/lang/Object;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lccsancom/applovin/impl/sdk/l;->c:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/l;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    invoke-static {p1}, Lccsancom/applovin/impl/mediation/c/c;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lccsancom/applovin/impl/sdk/l;->b:Ljava/lang/Object;

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/l;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->bC:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/l;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->p()Lccsancom/applovin/sdk/AppLovinSdkSettings;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/sdk/AppLovinSdkSettings;->isCreativeDebuggerEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/l;->e:Lccsancom/applovin/impl/sdk/utils/h;

    if-nez p1, :cond_2

    new-instance p1, Lccsancom/applovin/impl/sdk/utils/h;

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/l;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {p1, v0, p0}, Lccsancom/applovin/impl/sdk/utils/h;-><init>(Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/sdk/utils/h$a;)V

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/l;->e:Lccsancom/applovin/impl/sdk/utils/h;

    :cond_2
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/l;->e:Lccsancom/applovin/impl/sdk/utils/h;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/utils/h;->a()V

    :cond_3
    :goto_0
    return-void
.end method

.method public b()V
    .locals 4

    iget v0, p0, Lccsancom/applovin/impl/sdk/l;->g:I

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/l;->a:Lccsancom/applovin/impl/sdk/k;

    new-instance v3, Lccsancom/applovin/impl/sdk/l$1;

    invoke-direct {v3, p0}, Lccsancom/applovin/impl/sdk/l$1;-><init>(Lccsancom/applovin/impl/sdk/l;)V

    invoke-static {v0, v1, v2, v3}, Lccsancom/applovin/impl/sdk/utils/m;->a(JLccsancom/applovin/impl/sdk/k;Ljava/lang/Runnable;)Lccsancom/applovin/impl/sdk/utils/m;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/l;->f:Lccsancom/applovin/impl/sdk/utils/m;

    :cond_0
    iget v0, p0, Lccsancom/applovin/impl/sdk/l;->g:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccsancom/applovin/impl/sdk/l;->g:I

    :cond_1
    return-void
.end method

.method public c()V
    .locals 3

    iget v0, p0, Lccsancom/applovin/impl/sdk/l;->g:I

    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/2addr v0, v2

    iput v0, p0, Lccsancom/applovin/impl/sdk/l;->g:I

    :cond_0
    iget v0, p0, Lccsancom/applovin/impl/sdk/l;->g:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    new-instance v0, Lccsancom/applovin/impl/sdk/l$2;

    invoke-direct {v0, p0}, Lccsancom/applovin/impl/sdk/l$2;-><init>(Lccsancom/applovin/impl/sdk/l;)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput v0, p0, Lccsancom/applovin/impl/sdk/l;->g:I

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/l;->f:Lccsancom/applovin/impl/sdk/utils/m;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/utils/m;->d()V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/l;->e:Lccsancom/applovin/impl/sdk/utils/h;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/utils/h;->b()V

    :cond_1
    return-void
.end method

.method public getCommunicatorId()Ljava/lang/String;
    .locals 1

    const-class v0, Lccsancom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onMessageReceived(Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .locals 2

    invoke-virtual {p1}, Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;->getTopic()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "safedk_ad_info"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;->getMessageData()Lccsanandroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/l;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method
