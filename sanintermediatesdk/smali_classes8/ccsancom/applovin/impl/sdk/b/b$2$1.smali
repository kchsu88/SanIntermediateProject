.class Lccsancom/applovin/impl/sdk/b/b$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/b/b$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/b/b$2;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/b/b$2;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/b/b$2$1;->a:Lccsancom/applovin/impl/sdk/b/b$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/b/b$2$1;->a:Lccsancom/applovin/impl/sdk/b/b$2;

    iget-object p1, p1, Lccsancom/applovin/impl/sdk/b/b$2;->a:Lccsancom/applovin/impl/sdk/b/b;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/b/b;->c(Lccsancom/applovin/impl/sdk/b/b;)Lccsancom/applovin/impl/sdk/b/b$a;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/applovin/impl/sdk/b/b$a;->b()V

    return-void
.end method
