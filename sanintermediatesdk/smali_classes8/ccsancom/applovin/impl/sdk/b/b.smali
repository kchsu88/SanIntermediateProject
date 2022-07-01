.class public Lccsancom/applovin/impl/sdk/b/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/sdk/b/b$a;
    }
.end annotation


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/k;

.field private final b:Lccsanandroid/app/Activity;

.field private c:Lccsanandroid/app/AlertDialog;

.field private d:Lccsancom/applovin/impl/sdk/b/b$a;


# direct methods
.method public constructor <init>(Lccsanandroid/app/Activity;Lccsancom/applovin/impl/sdk/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/b/b;->a:Lccsancom/applovin/impl/sdk/k;

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/b/b;->b:Lccsanandroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/b/b;)Lccsanandroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/b/b;->c:Lccsanandroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/b/b;Lccsanandroid/app/AlertDialog;)Lccsanandroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/b/b;->c:Lccsanandroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic b(Lccsancom/applovin/impl/sdk/b/b;)Lccsancom/applovin/impl/sdk/k;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/b/b;->a:Lccsancom/applovin/impl/sdk/k;

    return-object p0
.end method

.method static synthetic c(Lccsancom/applovin/impl/sdk/b/b;)Lccsancom/applovin/impl/sdk/b/b$a;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/b/b;->d:Lccsancom/applovin/impl/sdk/b/b$a;

    return-object p0
.end method

.method static synthetic d(Lccsancom/applovin/impl/sdk/b/b;)Lccsanandroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/b/b;->b:Lccsanandroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/b;->b:Lccsanandroid/app/Activity;

    new-instance v1, Lccsancom/applovin/impl/sdk/b/b$1;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/sdk/b/b$1;-><init>(Lccsancom/applovin/impl/sdk/b/b;)V

    invoke-virtual {v0, v1}, Lccsanandroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lccsancom/applovin/impl/sdk/a/g;Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/b;->b:Lccsanandroid/app/Activity;

    new-instance v1, Lccsancom/applovin/impl/sdk/b/b$4;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/applovin/impl/sdk/b/b$4;-><init>(Lccsancom/applovin/impl/sdk/b/b;Lccsancom/applovin/impl/sdk/a/g;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lccsanandroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lccsancom/applovin/impl/sdk/b/b$a;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/b/b;->d:Lccsancom/applovin/impl/sdk/b/b$a;

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/b;->b:Lccsanandroid/app/Activity;

    new-instance v1, Lccsancom/applovin/impl/sdk/b/b$2;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/sdk/b/b$2;-><init>(Lccsancom/applovin/impl/sdk/b/b;)V

    invoke-virtual {v0, v1}, Lccsanandroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/b;->b:Lccsanandroid/app/Activity;

    new-instance v1, Lccsancom/applovin/impl/sdk/b/b$3;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/sdk/b/b$3;-><init>(Lccsancom/applovin/impl/sdk/b/b;)V

    invoke-virtual {v0, v1}, Lccsanandroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/b;->c:Lccsanandroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/app/AlertDialog;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
