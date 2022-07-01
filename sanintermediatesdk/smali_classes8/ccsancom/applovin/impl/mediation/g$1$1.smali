.class Lccsancom/applovin/impl/mediation/g$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/g$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lccsancom/applovin/impl/mediation/g$1;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/g$1;J)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/g$1$1;->b:Lccsancom/applovin/impl/mediation/g$1;

    iput-wide p2, p0, Lccsancom/applovin/impl/mediation/g$1$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$1$1;->b:Lccsancom/applovin/impl/mediation/g$1;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/g$1;->c:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->b(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/mediation/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/e;->T()J

    move-result-wide v0

    new-instance v2, Lccsancom/applovin/impl/mediation/g$1$1$1;

    invoke-direct {v2, p0, p1, p2}, Lccsancom/applovin/impl/mediation/g$1$1$1;-><init>(Lccsancom/applovin/impl/mediation/g$1$1;Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;Ljava/lang/String;)V

    invoke-static {v2, v0, v1}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
