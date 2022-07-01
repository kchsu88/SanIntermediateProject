.class public Lccsancom/applovin/impl/sdk/network/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/sdk/network/i$a;
    }
.end annotation


# instance fields
.field private final a:Lccsanandroid/os/Bundle;


# direct methods
.method private constructor <init>(Lccsancom/applovin/impl/sdk/network/i$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/network/i$a;->a(Lccsancom/applovin/impl/sdk/network/i$a;)Lccsanandroid/os/Bundle;

    move-result-object p1

    invoke-direct {v0, p1}, Lccsanandroid/os/Bundle;-><init>(Lccsanandroid/os/Bundle;)V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/network/i;->a:Lccsanandroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/applovin/impl/sdk/network/i$a;Lccsancom/applovin/impl/sdk/network/i$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/sdk/network/i;-><init>(Lccsancom/applovin/impl/sdk/network/i$a;)V

    return-void
.end method


# virtual methods
.method public a()Lccsanandroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/network/i;->a:Lccsanandroid/os/Bundle;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestParameters{extraParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/network/i;->a:Lccsanandroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
