.class Lccsancom/applovin/impl/adview/p$6;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/p;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/p;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/p;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/p$6;->a:Lccsancom/applovin/impl/adview/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p$6;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/p;->r(Lccsancom/applovin/impl/adview/p;)Lccsancom/applovin/impl/adview/j;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/j;->performClick()Z

    return-void
.end method
