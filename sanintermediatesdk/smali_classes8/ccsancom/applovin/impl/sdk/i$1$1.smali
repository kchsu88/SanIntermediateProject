.class Lccsancom/applovin/impl/sdk/i$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/i$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/i$1;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/i$1;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/i$1$1;->a:Lccsancom/applovin/impl/sdk/i$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lccsanandroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/i$1$1;->a:Lccsancom/applovin/impl/sdk/i$1;

    iget-object v1, v1, Lccsancom/applovin/impl/sdk/i$1;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->ad()Lccsancom/applovin/impl/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a;->a()Lccsanandroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/app/AlertDialog$Builder;-><init>(Lccsanandroid/content/Context;)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/i$1$1;->a:Lccsancom/applovin/impl/sdk/i$1;

    iget-object v1, v1, Lccsancom/applovin/impl/sdk/i$1;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->aC:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lccsanandroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lccsanandroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/i$1$1;->a:Lccsancom/applovin/impl/sdk/i$1;

    iget-object v1, v1, Lccsancom/applovin/impl/sdk/i$1;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->aD:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lccsanandroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lccsanandroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/app/AlertDialog$Builder;->setCancelable(Z)Lccsanandroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/i$1$1;->a:Lccsancom/applovin/impl/sdk/i$1;

    iget-object v1, v1, Lccsancom/applovin/impl/sdk/i$1;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->aE:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lccsancom/applovin/impl/sdk/i$1$1$2;

    invoke-direct {v2, p0}, Lccsancom/applovin/impl/sdk/i$1$1$2;-><init>(Lccsancom/applovin/impl/sdk/i$1$1;)V

    invoke-virtual {v0, v1, v2}, Lccsanandroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/i$1$1;->a:Lccsancom/applovin/impl/sdk/i$1;

    iget-object v1, v1, Lccsancom/applovin/impl/sdk/i$1;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->aF:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lccsancom/applovin/impl/sdk/i$1$1$1;

    invoke-direct {v2, p0}, Lccsancom/applovin/impl/sdk/i$1$1$1;-><init>(Lccsancom/applovin/impl/sdk/i$1$1;)V

    invoke-virtual {v0, v1, v2}, Lccsanandroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/app/AlertDialog$Builder;->create()Lccsanandroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/i;->a(Lccsanandroid/app/AlertDialog;)Lccsanandroid/app/AlertDialog;

    invoke-static {}, Lccsancom/applovin/impl/sdk/i;->b()Lccsanandroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/app/AlertDialog;->show()V

    return-void
.end method
