.class Lccsancom/applovin/impl/adview/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/adview/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/b;


# direct methods
.method private constructor <init>(Lccsancom/applovin/impl/adview/b;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/b$a;->a:Lccsancom/applovin/impl/adview/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/applovin/impl/adview/b;Lccsancom/applovin/impl/adview/b$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/b$a;-><init>(Lccsancom/applovin/impl/adview/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$a;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$a;->a:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/d;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/d;->setVisibility(I)V

    :cond_0
    return-void
.end method