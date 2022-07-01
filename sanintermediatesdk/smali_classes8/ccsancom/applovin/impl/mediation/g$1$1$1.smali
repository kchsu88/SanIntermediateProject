.class Lccsancom/applovin/impl/mediation/g$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/g$1$1;->onCompletion(Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lccsancom/applovin/impl/mediation/g$1$1;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/g$1$1;Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/g$1$1$1;->c:Lccsancom/applovin/impl/mediation/g$1$1;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/g$1$1$1;->a:Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/g$1$1$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$1$1$1;->c:Lccsancom/applovin/impl/mediation/g$1$1;

    iget-wide v2, v2, Lccsancom/applovin/impl/mediation/g$1$1;->a:J

    sub-long v6, v0, v2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$1$1$1;->c:Lccsancom/applovin/impl/mediation/g$1$1;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/g$1$1;->b:Lccsancom/applovin/impl/mediation/g$1;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/g$1;->c:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->d(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->B()Lccsancom/applovin/impl/mediation/e;

    move-result-object v4

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$1$1$1;->c:Lccsancom/applovin/impl/mediation/g$1$1;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/g$1$1;->b:Lccsancom/applovin/impl/mediation/g$1;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/g$1;->c:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->b(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/mediation/a/e;

    move-result-object v5

    iget-object v8, p0, Lccsancom/applovin/impl/mediation/g$1$1$1;->a:Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    iget-object v9, p0, Lccsancom/applovin/impl/mediation/g$1$1$1;->b:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Lccsancom/applovin/impl/mediation/e;->a(Lccsancom/applovin/impl/mediation/a/e;JLccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;Ljava/lang/String;)V

    return-void
.end method
