.class Lccsancom/applovin/impl/sdk/b/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/b/b;->b()V
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

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/b/b$2;->a:Lccsancom/applovin/impl/sdk/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/b$2;->a:Lccsancom/applovin/impl/sdk/b/b;

    new-instance v1, Lccsanandroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/b/b$2;->a:Lccsancom/applovin/impl/sdk/b/b;

    invoke-static {v2}, Lccsancom/applovin/impl/sdk/b/b;->d(Lccsancom/applovin/impl/sdk/b/b;)Lccsanandroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanandroid/app/AlertDialog$Builder;-><init>(Lccsanandroid/content/Context;)V

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/b/b$2;->a:Lccsancom/applovin/impl/sdk/b/b;

    invoke-static {v2}, Lccsancom/applovin/impl/sdk/b/b;->b(Lccsancom/applovin/impl/sdk/b/b;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v2

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->bq:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lccsanandroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lccsanandroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/b/b$2;->a:Lccsancom/applovin/impl/sdk/b/b;

    invoke-static {v2}, Lccsancom/applovin/impl/sdk/b/b;->b(Lccsancom/applovin/impl/sdk/b/b;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v2

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->br:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lccsanandroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lccsanandroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsanandroid/app/AlertDialog$Builder;->setCancelable(Z)Lccsanandroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/b/b$2;->a:Lccsancom/applovin/impl/sdk/b/b;

    invoke-static {v2}, Lccsancom/applovin/impl/sdk/b/b;->b(Lccsancom/applovin/impl/sdk/b/b;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v2

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->bt:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lccsancom/applovin/impl/sdk/b/b$2$2;

    invoke-direct {v3, p0}, Lccsancom/applovin/impl/sdk/b/b$2$2;-><init>(Lccsancom/applovin/impl/sdk/b/b$2;)V

    invoke-virtual {v1, v2, v3}, Lccsanandroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/b/b$2;->a:Lccsancom/applovin/impl/sdk/b/b;

    invoke-static {v2}, Lccsancom/applovin/impl/sdk/b/b;->b(Lccsancom/applovin/impl/sdk/b/b;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v2

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->bs:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v3, Lccsancom/applovin/impl/sdk/b/b$2$1;

    invoke-direct {v3, p0}, Lccsancom/applovin/impl/sdk/b/b$2$1;-><init>(Lccsancom/applovin/impl/sdk/b/b$2;)V

    invoke-virtual {v1, v2, v3}, Lccsanandroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/app/AlertDialog$Builder;->show()Lccsanandroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/b/b;->a(Lccsancom/applovin/impl/sdk/b/b;Lccsanandroid/app/AlertDialog;)Lccsanandroid/app/AlertDialog;

    return-void
.end method
