.class Lccsancom/applovin/impl/adview/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/k;

.field private final b:Lccsanandroid/webkit/WebViewRenderProcessClient;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lccsancom/applovin/impl/adview/f$1;

    invoke-direct {v0, p0}, Lccsancom/applovin/impl/adview/f$1;-><init>(Lccsancom/applovin/impl/adview/f;)V

    iput-object v0, p0, Lccsancom/applovin/impl/adview/f;->b:Lccsanandroid/webkit/WebViewRenderProcessClient;

    iput-object p1, p0, Lccsancom/applovin/impl/adview/f;->a:Lccsancom/applovin/impl/sdk/k;

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/f;)Lccsancom/applovin/impl/sdk/k;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/f;->a:Lccsancom/applovin/impl/sdk/k;

    return-object p0
.end method


# virtual methods
.method a()Lccsanandroid/webkit/WebViewRenderProcessClient;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/f;->b:Lccsanandroid/webkit/WebViewRenderProcessClient;

    return-object v0
.end method
