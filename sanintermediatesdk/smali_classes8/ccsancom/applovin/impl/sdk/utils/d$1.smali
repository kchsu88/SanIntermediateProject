.class Lccsancom/applovin/impl/sdk/utils/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/utils/d;-><init>(JLccsancom/applovin/impl/sdk/k;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lccsancom/applovin/impl/sdk/utils/d;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/utils/d;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/utils/d$1;->b:Lccsancom/applovin/impl/sdk/utils/d;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/utils/d$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/d$1;->b:Lccsancom/applovin/impl/sdk/utils/d;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/utils/d;->a()V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/d$1;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
