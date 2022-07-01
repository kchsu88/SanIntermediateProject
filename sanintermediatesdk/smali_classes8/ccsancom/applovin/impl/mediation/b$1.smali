.class Lccsancom/applovin/impl/mediation/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/b;->a(Lccsancom/applovin/impl/mediation/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/a/c;

.field final synthetic b:Lccsancom/applovin/impl/mediation/b;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/b;Lccsancom/applovin/impl/mediation/a/c;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/b$1;->b:Lccsancom/applovin/impl/mediation/b;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/b$1;->a:Lccsancom/applovin/impl/mediation/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b$1;->b:Lccsancom/applovin/impl/mediation/b;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/b;->a(Lccsancom/applovin/impl/mediation/b;)Lccsancom/applovin/mediation/MaxAdListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/b$1;->a:Lccsancom/applovin/impl/mediation/a/c;

    invoke-interface {v0, v1}, Lccsancom/applovin/mediation/MaxAdListener;->onAdHidden(Lccsancom/applovin/mediation/MaxAd;)V

    return-void
.end method
