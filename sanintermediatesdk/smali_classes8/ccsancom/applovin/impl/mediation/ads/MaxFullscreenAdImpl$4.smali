.class Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$4;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->a(Lccsancom/applovin/impl/mediation/a/c;Lccsanandroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$4;->b:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$4;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Lccsanandroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$4;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
