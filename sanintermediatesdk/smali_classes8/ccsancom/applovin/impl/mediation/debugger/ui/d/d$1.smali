.class Lccsancom/applovin/impl/mediation/debugger/ui/d/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/debugger/ui/d/d;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/debugger/ui/d/d;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/d$1;->a:Lccsancom/applovin/impl/mediation/debugger/ui/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/d$1;->a:Lccsancom/applovin/impl/mediation/debugger/ui/d/d;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->notifyDataSetChanged()V

    return-void
.end method
