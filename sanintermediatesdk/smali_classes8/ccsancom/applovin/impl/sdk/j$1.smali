.class Lccsancom/applovin/impl/sdk/j$1;
.super Lccsancom/applovin/impl/sdk/utils/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/j;-><init>(Lccsancom/applovin/impl/sdk/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/j;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/j;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/j$1;->a:Lccsancom/applovin/impl/sdk/j;

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityStarted(Lccsanandroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/j$1;->a:Lccsancom/applovin/impl/sdk/j;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/j;->a(Lccsancom/applovin/impl/sdk/j;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    return-void
.end method
