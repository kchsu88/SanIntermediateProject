.class public Lccsancom/applovin/impl/mediation/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/mediation/c$a;
    }
.end annotation


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/k;

.field private final b:Lccsancom/applovin/impl/sdk/r;

.field private final c:Lccsancom/applovin/impl/mediation/c$a;

.field private d:Lccsancom/applovin/impl/sdk/utils/d;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/mediation/c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/c;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/c;->b:Lccsancom/applovin/impl/sdk/r;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/c;->c:Lccsancom/applovin/impl/mediation/c$a;

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/c;)Lccsancom/applovin/impl/sdk/r;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/c;->b:Lccsancom/applovin/impl/sdk/r;

    return-object p0
.end method

.method static synthetic b(Lccsancom/applovin/impl/mediation/c;)Lccsancom/applovin/impl/mediation/c$a;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/c;->c:Lccsancom/applovin/impl/mediation/c$a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/c;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "AdHiddenCallbackTimeoutManager"

    const-string v2, "Cancelling timeout"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/c;->d:Lccsancom/applovin/impl/sdk/utils/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/utils/d;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/c;->d:Lccsancom/applovin/impl/sdk/utils/d;

    :cond_0
    return-void
.end method

.method public a(Lccsancom/applovin/impl/mediation/a/c;J)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/c;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdHiddenCallbackTimeoutManager"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/c;->a:Lccsancom/applovin/impl/sdk/k;

    new-instance v1, Lccsancom/applovin/impl/mediation/c$1;

    invoke-direct {v1, p0, p1}, Lccsancom/applovin/impl/mediation/c$1;-><init>(Lccsancom/applovin/impl/mediation/c;Lccsancom/applovin/impl/mediation/a/c;)V

    invoke-static {p2, p3, v0, v1}, Lccsancom/applovin/impl/sdk/utils/d;->a(JLccsancom/applovin/impl/sdk/k;Ljava/lang/Runnable;)Lccsancom/applovin/impl/sdk/utils/d;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/c;->d:Lccsancom/applovin/impl/sdk/utils/d;

    return-void
.end method
