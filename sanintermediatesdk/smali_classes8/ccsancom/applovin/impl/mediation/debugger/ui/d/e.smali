.class public Lccsancom/applovin/impl/mediation/debugger/ui/d/e;
.super Lccsancom/applovin/impl/mediation/debugger/ui/d/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;->a:Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;-><init>(Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;)V

    new-instance v0, Lccsanandroid/text/SpannedString;

    invoke-direct {v0, p1}, Lccsanandroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;->d:Lccsanandroid/text/SpannedString;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SectionListItemViewModel{text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;->d:Lccsanandroid/text/SpannedString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
