.class Lccsancom/applovin/impl/sdk/b/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/b/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/b/b;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/b/b;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/b/b$3;->a:Lccsancom/applovin/impl/sdk/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lccsanandroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/b/b$3;->a:Lccsancom/applovin/impl/sdk/b/b;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/b/b;->d(Lccsancom/applovin/impl/sdk/b/b;)Lccsanandroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/app/AlertDialog$Builder;-><init>(Lccsanandroid/content/Context;)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/b/b$3;->a:Lccsancom/applovin/impl/sdk/b/b;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/b/b;->b(Lccsancom/applovin/impl/sdk/b/b;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->bv:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lccsanandroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lccsanandroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/b/b$3;->a:Lccsancom/applovin/impl/sdk/b/b;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/b/b;->b(Lccsancom/applovin/impl/sdk/b/b;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->bw:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lccsanandroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lccsanandroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/app/AlertDialog$Builder;->setCancelable(Z)Lccsanandroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/b/b$3;->a:Lccsancom/applovin/impl/sdk/b/b;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/b/b;->b(Lccsancom/applovin/impl/sdk/b/b;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->by:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lccsancom/applovin/impl/sdk/b/b$3$1;

    invoke-direct {v2, p0}, Lccsancom/applovin/impl/sdk/b/b$3$1;-><init>(Lccsancom/applovin/impl/sdk/b/b$3;)V

    invoke-virtual {v0, v1, v2}, Lccsanandroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/b/b$3;->a:Lccsancom/applovin/impl/sdk/b/b;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/b/b;->b(Lccsancom/applovin/impl/sdk/b/b;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->bx:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lccsancom/applovin/impl/sdk/b/b$3$2;

    invoke-direct {v2, p0}, Lccsancom/applovin/impl/sdk/b/b$3$2;-><init>(Lccsancom/applovin/impl/sdk/b/b$3;)V

    invoke-virtual {v0, v1, v2}, Lccsanandroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/b/b$3;->a:Lccsancom/applovin/impl/sdk/b/b;

    invoke-virtual {v0}, Lccsanandroid/app/AlertDialog$Builder;->show()Lccsanandroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/applovin/impl/sdk/b/b;->a(Lccsancom/applovin/impl/sdk/b/b;Lccsanandroid/app/AlertDialog;)Lccsanandroid/app/AlertDialog;

    return-void
.end method
