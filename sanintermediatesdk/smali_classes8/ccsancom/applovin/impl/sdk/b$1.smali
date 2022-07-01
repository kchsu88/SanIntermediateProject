.class Lccsancom/applovin/impl/sdk/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/b;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/b;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/b;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/b$1;->a:Lccsancom/applovin/impl/sdk/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b$1;->a:Lccsancom/applovin/impl/sdk/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/b;->a()V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b$1;->a:Lccsancom/applovin/impl/sdk/b;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/b;->a(Lccsancom/applovin/impl/sdk/b;)Lccsancom/applovin/impl/sdk/b$a;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/applovin/impl/sdk/b$a;->onAdExpired()V

    return-void
.end method
