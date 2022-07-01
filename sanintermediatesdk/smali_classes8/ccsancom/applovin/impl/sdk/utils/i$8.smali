.class final Lccsancom/applovin/impl/sdk/utils/i$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/mediation/MaxAdListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lccsancom/applovin/mediation/MaxError;


# direct methods
.method constructor <init>(Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/utils/i$8;->a:Lccsancom/applovin/mediation/MaxAdListener;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/utils/i$8;->b:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/applovin/impl/sdk/utils/i$8;->c:Lccsancom/applovin/mediation/MaxError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/i$8;->a:Lccsancom/applovin/mediation/MaxAdListener;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/utils/i$8;->b:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/utils/i$8;->c:Lccsancom/applovin/mediation/MaxError;

    invoke-interface {v0, v1, v2}, Lccsancom/applovin/mediation/MaxAdListener;->onAdLoadFailed(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ListenerCallbackInvoker"

    const-string v2, "Unable to notify ad event listener about ad failing to load"

    invoke-static {v1, v2, v0}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
