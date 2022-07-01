.class Lccsancom/applovin/impl/mediation/b/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/b/e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/b/e;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/b/e;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/b/e$1;->a:Lccsancom/applovin/impl/mediation/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/e$1;->a:Lccsancom/applovin/impl/mediation/b/e;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/b/e;->a(Lccsancom/applovin/impl/mediation/b/e;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/Context;

    const-string v1, "MAX SDK Not Initialized In Test Mode"

    const-string v2, "Test ads may not load. Please force close and restart the app if you experience issues."

    invoke-static {v1, v2, v0}, Lccsancom/applovin/impl/sdk/utils/Utils;->showAlert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;)V

    return-void
.end method
