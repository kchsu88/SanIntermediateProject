.class Lccsancom/applovin/impl/adview/t$1;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/adview/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/t;->playVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/t;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/t;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/t$1;->a:Lccsancom/applovin/impl/adview/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/t$1;->a:Lccsancom/applovin/impl/adview/t;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/t;->handleCountdownStep()V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/t$1;->a:Lccsancom/applovin/impl/adview/t;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/t;->shouldContinueFullLengthVideoCountdown()Z

    move-result v0

    return v0
.end method
