.class public abstract Lccsancom/applovin/impl/sdk/e/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/String;

.field protected final b:Lccsancom/applovin/impl/sdk/k;

.field private final c:Lccsancom/applovin/impl/sdk/r;

.field private final d:Lccsanandroid/content/Context;

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/e/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/a;->c:Lccsancom/applovin/impl/sdk/r;

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->J()Lccsanandroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/a;->d:Lccsanandroid/content/Context;

    iput-boolean p3, p0, Lccsancom/applovin/impl/sdk/e/a;->e:Z

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/a;->c:Lccsancom/applovin/impl/sdk/r;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/a;->c:Lccsancom/applovin/impl/sdk/r;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/a;->c:Lccsancom/applovin/impl/sdk/r;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/a;->c:Lccsancom/applovin/impl/sdk/r;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lccsancom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected d()Lccsancom/applovin/impl/sdk/k;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/a;->b:Lccsancom/applovin/impl/sdk/k;

    return-object v0
.end method

.method protected d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/a;->c:Lccsancom/applovin/impl/sdk/r;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected f()Lccsanandroid/content/Context;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/a;->d:Lccsanandroid/content/Context;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lccsancom/applovin/impl/sdk/e/a;->e:Z

    return v0
.end method
