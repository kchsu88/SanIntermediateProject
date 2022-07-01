.class Lccsancom/applovin/impl/sdk/l$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/l;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/l;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/l;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/l$1;->a:Lccsancom/applovin/impl/sdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/l$1;->a:Lccsancom/applovin/impl/sdk/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/l;->a(Lccsancom/applovin/impl/sdk/l;I)I

    return-void
.end method
