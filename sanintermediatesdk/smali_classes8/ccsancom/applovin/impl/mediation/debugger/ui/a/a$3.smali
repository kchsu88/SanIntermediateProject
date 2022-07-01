.class Lccsancom/applovin/impl/mediation/debugger/ui/a/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->a(Lccsanandroid/content/DialogInterface$OnShowListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/debugger/ui/a/a;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/debugger/ui/a/a;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a$3;->a:Lccsancom/applovin/impl/mediation/debugger/ui/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Lccsanandroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a$3;->a:Lccsancom/applovin/impl/mediation/debugger/ui/a/a;

    invoke-static {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->a(Lccsancom/applovin/impl/mediation/debugger/ui/a/a;)Lccsancom/applovin/mediation/ads/MaxAdView;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/mediation/ads/MaxAdView;->stopAutoRefresh()V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a$3;->a:Lccsancom/applovin/impl/mediation/debugger/ui/a/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->a(Lccsancom/applovin/impl/mediation/debugger/ui/a/a;Lccsancom/applovin/impl/mediation/debugger/ui/a/d;)Lccsancom/applovin/impl/mediation/debugger/ui/a/d;

    return-void
.end method
