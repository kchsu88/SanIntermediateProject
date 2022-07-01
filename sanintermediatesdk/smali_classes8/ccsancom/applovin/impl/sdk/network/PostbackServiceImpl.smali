.class public Lccsancom/applovin/impl/sdk/network/PostbackServiceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/sdk/AppLovinPostbackService;


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/k;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/network/PostbackServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    return-void
.end method


# virtual methods
.method public dispatchPostbackAsync(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/network/PostbackServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/network/h;->b(Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/impl/sdk/network/h$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/network/h$a;->d(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/h$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/network/h$a;->f(Z)Lccsancom/applovin/impl/sdk/network/h$a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/network/h$a;->b()Lccsancom/applovin/impl/sdk/network/h;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lccsancom/applovin/impl/sdk/network/PostbackServiceImpl;->dispatchPostbackRequest(Lccsancom/applovin/impl/sdk/network/h;Lccsancom/applovin/sdk/AppLovinPostbackListener;)V

    return-void
.end method

.method public dispatchPostbackRequest(Lccsancom/applovin/impl/sdk/network/h;Lccsancom/applovin/impl/sdk/e/o$a;Lccsancom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 2

    new-instance v0, Lccsancom/applovin/impl/sdk/e/g;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/network/PostbackServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {v0, p1, p2, v1, p3}, Lccsancom/applovin/impl/sdk/e/g;-><init>(Lccsancom/applovin/impl/sdk/network/h;Lccsancom/applovin/impl/sdk/e/o$a;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/sdk/AppLovinPostbackListener;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/network/PostbackServiceImpl;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;Lccsancom/applovin/impl/sdk/e/o$a;)V

    return-void
.end method

.method public dispatchPostbackRequest(Lccsancom/applovin/impl/sdk/network/h;Lccsancom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/sdk/e/o$a;->e:Lccsancom/applovin/impl/sdk/e/o$a;

    invoke-virtual {p0, p1, v0, p2}, Lccsancom/applovin/impl/sdk/network/PostbackServiceImpl;->dispatchPostbackRequest(Lccsancom/applovin/impl/sdk/network/h;Lccsancom/applovin/impl/sdk/e/o$a;Lccsancom/applovin/sdk/AppLovinPostbackListener;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "PostbackService{}"

    return-object v0
.end method
