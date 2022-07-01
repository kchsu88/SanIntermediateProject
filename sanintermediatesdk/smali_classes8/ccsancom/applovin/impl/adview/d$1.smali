.class Lccsancom/applovin/impl/adview/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lccsancom/applovin/impl/adview/d$1;->a:Lccsancom/applovin/impl/adview/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p1}, Lccsanandroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lccsanandroid/view/View;->requestFocus()Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
