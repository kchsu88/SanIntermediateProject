.class public Lccsancom/applovin/impl/mediation/a;
.super Lccsancom/applovin/impl/sdk/utils/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/mediation/a$a;
    }
.end annotation


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/a;

.field private final b:Lccsancom/applovin/impl/sdk/r;

.field private c:Lccsancom/applovin/impl/mediation/a$a;

.field private d:Lccsancom/applovin/impl/mediation/a/c;

.field private e:I

.field private f:Z


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/k;)V
    .locals 1

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/utils/a;-><init>()V

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/a;->b:Lccsancom/applovin/impl/sdk/r;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->ad()Lccsancom/applovin/impl/sdk/a;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/a;->a:Lccsancom/applovin/impl/sdk/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "AdActivityObserver"

    const-string v2, "Cancelling..."

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a;->a:Lccsancom/applovin/impl/sdk/a;

    invoke-virtual {v0, p0}, Lccsancom/applovin/impl/sdk/a;->b(Lccsancom/applovin/impl/sdk/utils/a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/a;->c:Lccsancom/applovin/impl/mediation/a$a;

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/a;->d:Lccsancom/applovin/impl/mediation/a/c;

    const/4 v0, 0x0

    iput v0, p0, Lccsancom/applovin/impl/mediation/a;->e:I

    iput-boolean v0, p0, Lccsancom/applovin/impl/mediation/a;->f:Z

    return-void
.end method

.method public a(Lccsancom/applovin/impl/mediation/a/c;Lccsancom/applovin/impl/mediation/a$a;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting for ad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/c;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdActivityObserver"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/a;->a()V

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/a;->c:Lccsancom/applovin/impl/mediation/a$a;

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/a;->d:Lccsancom/applovin/impl/mediation/a/c;

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/a;->a:Lccsancom/applovin/impl/sdk/a;

    invoke-virtual {p1, p0}, Lccsancom/applovin/impl/sdk/a;->a(Lccsancom/applovin/impl/sdk/utils/a;)V

    return-void
.end method

.method public onActivityCreated(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V
    .locals 2

    iget-boolean p2, p0, Lccsancom/applovin/impl/mediation/a;->f:Z

    const/4 v0, 0x1

    if-nez p2, :cond_0

    iput-boolean v0, p0, Lccsancom/applovin/impl/mediation/a;->f:Z

    :cond_0
    iget p2, p0, Lccsancom/applovin/impl/mediation/a;->e:I

    add-int/2addr p2, v0

    iput p2, p0, Lccsancom/applovin/impl/mediation/a;->e:I

    iget-object p2, p0, Lccsancom/applovin/impl/mediation/a;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created Activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", counter is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lccsancom/applovin/impl/mediation/a;->e:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdActivityObserver"

    invoke-virtual {p2, v0, p1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Lccsanandroid/app/Activity;)V
    .locals 3

    iget-boolean v0, p0, Lccsancom/applovin/impl/mediation/a;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lccsancom/applovin/impl/mediation/a;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lccsancom/applovin/impl/mediation/a;->e:I

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroyed Activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", counter is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lccsancom/applovin/impl/mediation/a;->e:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AdActivityObserver"

    invoke-virtual {v0, v1, p1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lccsancom/applovin/impl/mediation/a;->e:I

    if-gtz p1, :cond_2

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/a;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v0, "Last ad Activity destroyed"

    invoke-virtual {p1, v1, v0}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/a;->c:Lccsancom/applovin/impl/mediation/a$a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/a;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v0, "Invoking callback..."

    invoke-virtual {p1, v1, v0}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/a;->c:Lccsancom/applovin/impl/mediation/a$a;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a;->d:Lccsancom/applovin/impl/mediation/a/c;

    invoke-interface {p1, v0}, Lccsancom/applovin/impl/mediation/a$a;->a(Lccsancom/applovin/impl/mediation/a/c;)V

    :cond_1
    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/a;->a()V

    :cond_2
    return-void
.end method
