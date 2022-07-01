.class Lccsancom/applovin/impl/adview/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/d;-><init>(Lccsancom/applovin/impl/adview/e;Lccsancom/applovin/impl/sdk/k;Lccsanandroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/d;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/d;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/d$2;->a:Lccsancom/applovin/impl/adview/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Lccsanandroid/view/View;)Z
    .locals 2

    iget-object p1, p0, Lccsancom/applovin/impl/adview/d$2;->a:Lccsancom/applovin/impl/adview/d;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/d;->a(Lccsancom/applovin/impl/adview/d;)Lccsancom/applovin/impl/sdk/r;

    move-result-object p1

    const-string v0, "AdWebView"

    const-string v1, "Received a LongClick event."

    invoke-virtual {p1, v0, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
