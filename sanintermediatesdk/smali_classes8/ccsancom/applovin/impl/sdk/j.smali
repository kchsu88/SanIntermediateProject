.class public Lccsancom/applovin/impl/sdk/j;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/sdk/i$a;
.implements Lccsancom/applovin/sdk/AppLovinWebViewActivity$EventListener;


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsancom/applovin/sdk/AppLovinWebViewActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lccsancom/applovin/impl/sdk/k;

.field private final d:Lccsancom/applovin/impl/sdk/r;

.field private e:Lccsancom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;

.field private f:Lccsancom/applovin/impl/sdk/i;

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lccsancom/applovin/impl/sdk/utils/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lccsancom/applovin/impl/sdk/j;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>(Lccsancom/applovin/impl/sdk/k;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/j;->g:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/j;->c:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/j;->d:Lccsancom/applovin/impl/sdk/r;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->L()Lccsanandroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->L()Lccsanandroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/j;->g:Ljava/lang/ref/WeakReference;

    :cond_0
    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->ad()Lccsancom/applovin/impl/sdk/a;

    move-result-object v0

    new-instance v1, Lccsancom/applovin/impl/sdk/j$1;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/sdk/j$1;-><init>(Lccsancom/applovin/impl/sdk/j;)V

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/a;->a(Lccsancom/applovin/impl/sdk/utils/a;)V

    new-instance v0, Lccsancom/applovin/impl/sdk/i;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/sdk/i;-><init>(Lccsancom/applovin/impl/sdk/j;Lccsancom/applovin/impl/sdk/k;)V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/j;->f:Lccsancom/applovin/impl/sdk/i;

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/j;)Lccsancom/applovin/impl/sdk/k;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/j;->c:Lccsancom/applovin/impl/sdk/k;

    return-object p0
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/j;Lccsancom/applovin/impl/sdk/utils/a;)Lccsancom/applovin/impl/sdk/utils/a;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/j;->h:Lccsancom/applovin/impl/sdk/utils/a;

    return-object p1
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/j;Lccsancom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;)Lccsancom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/j;->e:Lccsancom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;

    return-object p1
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/j;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/j;->g:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    sput-object p0, Lccsancom/applovin/impl/sdk/j;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private a(ZJ)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/j;->f()V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2, p3}, Lccsancom/applovin/impl/sdk/j;->a(J)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/j;Lccsancom/applovin/impl/sdk/k;)Z
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/sdk/j;->a(Lccsancom/applovin/impl/sdk/k;)Z

    move-result p0

    return p0
.end method

.method private a(Lccsancom/applovin/impl/sdk/k;)Z
    .locals 3

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/j;->c()Z

    move-result v0

    const-string v1, "AppLovinSdk"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p1, "Consent dialog already showing"

    invoke-static {v1, p1}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->J()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/g;->a(Lccsanandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "No internet available, skip showing of consent dialog"

    invoke-static {v1, p1}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->ao:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "ConsentDialogManager"

    if-nez v0, :cond_2

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/j;->d:Lccsancom/applovin/impl/sdk/r;

    const-string v0, "Blocked publisher from showing consent dialog"

    invoke-virtual {p1, v1, v0}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->ap:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/j;->d:Lccsancom/applovin/impl/sdk/r;

    const-string v0, "AdServer returned empty consent dialog URL"

    invoke-virtual {p1, v1, v0}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b(Lccsancom/applovin/impl/sdk/j;)Lccsancom/applovin/impl/sdk/utils/a;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/j;->h:Lccsancom/applovin/impl/sdk/utils/a;

    return-object p0
.end method

.method static synthetic c(Lccsancom/applovin/impl/sdk/j;)Lccsancom/applovin/impl/sdk/r;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/j;->d:Lccsancom/applovin/impl/sdk/r;

    return-object p0
.end method

.method static synthetic d(Lccsancom/applovin/impl/sdk/j;)Lccsancom/applovin/impl/sdk/i;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/j;->f:Lccsancom/applovin/impl/sdk/i;

    return-object p0
.end method

.method static synthetic d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/sdk/j;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/ref/WeakReference;
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/sdk/j;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/j;->c:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ad()Lccsancom/applovin/impl/sdk/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/j;->h:Lccsancom/applovin/impl/sdk/utils/a;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/a;->b(Lccsancom/applovin/impl/sdk/utils/a;)V

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lccsancom/applovin/impl/sdk/j;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/sdk/AppLovinWebViewActivity;

    const/4 v1, 0x0

    sput-object v1, Lccsancom/applovin/impl/sdk/j;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/sdk/AppLovinWebViewActivity;->finish()V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/j;->e:Lccsancom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lccsancom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;->onDismiss()V

    iput-object v1, p0, Lccsancom/applovin/impl/sdk/j;->e:Lccsancom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/j;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/j;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Activity;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/j;->c:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->ar:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v3, Lccsancom/applovin/impl/sdk/j$4;

    invoke-direct {v3, p0, v0}, Lccsancom/applovin/impl/sdk/j$4;-><init>(Lccsancom/applovin/impl/sdk/j;Lccsanandroid/app/Activity;)V

    invoke-static {v3, v1, v2}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 1

    new-instance v0, Lccsancom/applovin/impl/sdk/j$3;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/applovin/impl/sdk/j$3;-><init>(Lccsancom/applovin/impl/sdk/j;J)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lccsanandroid/app/Activity;Lccsancom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;)V
    .locals 1

    new-instance v0, Lccsancom/applovin/impl/sdk/j$2;

    invoke-direct {v0, p0, p2, p1}, Lccsancom/applovin/impl/sdk/j$2;-><init>(Lccsancom/applovin/impl/sdk/j;Lccsancom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;Lccsanandroid/app/Activity;)V

    invoke-virtual {p1, v0}, Lccsanandroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method c()Z
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/sdk/j;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onReceivedEvent(Ljava/lang/String;)V
    .locals 2

    const-string v0, "accepted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/j;->c:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->J()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/applovin/sdk/AppLovinPrivacySettings;->setHasUserConsent(ZLccsanandroid/content/Context;)V

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/j;->f()V

    goto :goto_1

    :cond_0
    const-string v0, "rejected"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/j;->c:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->J()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/applovin/sdk/AppLovinPrivacySettings;->setHasUserConsent(ZLccsanandroid/content/Context;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/j;->c:Lccsancom/applovin/impl/sdk/k;

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->as:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/j;->c:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->ax:Lccsancom/applovin/impl/sdk/c/b;

    :goto_0
    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lccsancom/applovin/impl/sdk/j;->a(ZJ)V

    goto :goto_1

    :cond_1
    const-string v0, "closed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/j;->c:Lccsancom/applovin/impl/sdk/k;

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->at:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/j;->c:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->ay:Lccsancom/applovin/impl/sdk/c/b;

    goto :goto_0

    :cond_2
    const-string v0, "dismissed_via_back_button"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/j;->c:Lccsancom/applovin/impl/sdk/k;

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->au:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/j;->c:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->az:Lccsancom/applovin/impl/sdk/c/b;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
