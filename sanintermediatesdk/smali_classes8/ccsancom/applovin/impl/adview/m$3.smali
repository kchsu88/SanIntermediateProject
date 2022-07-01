.class Lccsancom/applovin/impl/adview/m$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/m;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/m;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/m;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/m$3;->a:Lccsancom/applovin/impl/adview/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/m$3;->a:Lccsancom/applovin/impl/adview/m;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/m;->b(Lccsancom/applovin/impl/adview/m;)Lccsanandroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/m$3;->a:Lccsancom/applovin/impl/adview/m;

    invoke-static {v1}, Lccsancom/applovin/impl/adview/m;->a(Lccsancom/applovin/impl/adview/m;)Lccsancom/applovin/impl/adview/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout;->removeView(Lccsanandroid/view/View;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/m$3;->a:Lccsancom/applovin/impl/adview/m;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/m;->c(Lccsancom/applovin/impl/adview/m;)V

    return-void
.end method
