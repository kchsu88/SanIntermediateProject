.class Lccsancom/applovin/impl/adview/q$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/q$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/q$3;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/q$3;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/q$3$1;->a:Lccsancom/applovin/impl/adview/q$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/q$3$1;->a:Lccsancom/applovin/impl/adview/q$3;

    iget-object v0, v0, Lccsancom/applovin/impl/adview/q$3;->c:Lccsancom/applovin/impl/adview/q;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/q$3$1;->a:Lccsancom/applovin/impl/adview/q$3;

    iget-object v1, v1, Lccsancom/applovin/impl/adview/q$3;->a:Lccsanandroid/content/Context;

    invoke-static {v0, v1}, Lccsancom/applovin/impl/adview/q;->a(Lccsancom/applovin/impl/adview/q;Lccsanandroid/content/Context;)V

    return-void
.end method
