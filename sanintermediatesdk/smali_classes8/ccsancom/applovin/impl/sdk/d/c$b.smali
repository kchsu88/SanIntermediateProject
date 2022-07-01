.class public Lccsancom/applovin/impl/sdk/d/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/sdk/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/d/c;

.field private final b:Lccsancom/applovin/impl/sdk/AppLovinAdBase;

.field private final c:Lccsancom/applovin/impl/sdk/d/c;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/d/c;Lccsancom/applovin/impl/sdk/AppLovinAdBase;Lccsancom/applovin/impl/sdk/d/c;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/d/c$b;->a:Lccsancom/applovin/impl/sdk/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/d/c$b;->b:Lccsancom/applovin/impl/sdk/AppLovinAdBase;

    iput-object p3, p0, Lccsancom/applovin/impl/sdk/d/c$b;->c:Lccsancom/applovin/impl/sdk/d/c;

    return-void
.end method


# virtual methods
.method public a(Lccsancom/applovin/impl/sdk/d/b;)Lccsancom/applovin/impl/sdk/d/c$b;
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/c$b;->c:Lccsancom/applovin/impl/sdk/d/c;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d/c$b;->b:Lccsancom/applovin/impl/sdk/AppLovinAdBase;

    const-wide/16 v2, 0x1

    invoke-static {v0, p1, v2, v3, v1}, Lccsancom/applovin/impl/sdk/d/c;->a(Lccsancom/applovin/impl/sdk/d/c;Lccsancom/applovin/impl/sdk/d/b;JLccsancom/applovin/impl/sdk/AppLovinAdBase;)V

    return-object p0
.end method

.method public a(Lccsancom/applovin/impl/sdk/d/b;J)Lccsancom/applovin/impl/sdk/d/c$b;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/c$b;->c:Lccsancom/applovin/impl/sdk/d/c;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d/c$b;->b:Lccsancom/applovin/impl/sdk/AppLovinAdBase;

    invoke-static {v0, p1, p2, p3, v1}, Lccsancom/applovin/impl/sdk/d/c;->b(Lccsancom/applovin/impl/sdk/d/c;Lccsancom/applovin/impl/sdk/d/b;JLccsancom/applovin/impl/sdk/AppLovinAdBase;)V

    return-object p0
.end method

.method public a(Lccsancom/applovin/impl/sdk/d/b;Ljava/lang/String;)Lccsancom/applovin/impl/sdk/d/c$b;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/c$b;->c:Lccsancom/applovin/impl/sdk/d/c;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d/c$b;->b:Lccsancom/applovin/impl/sdk/AppLovinAdBase;

    invoke-static {v0, p1, p2, v1}, Lccsancom/applovin/impl/sdk/d/c;->a(Lccsancom/applovin/impl/sdk/d/c;Lccsancom/applovin/impl/sdk/d/b;Ljava/lang/String;Lccsancom/applovin/impl/sdk/AppLovinAdBase;)V

    return-object p0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/c$b;->c:Lccsancom/applovin/impl/sdk/d/c;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/d/c;->e(Lccsancom/applovin/impl/sdk/d/c;)V

    return-void
.end method
