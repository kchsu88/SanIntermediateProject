.class Lccsancom/applovin/impl/sdk/VariableServiceImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/VariableServiceImpl;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/os/Bundle;

.field final synthetic b:Lccsancom/applovin/impl/sdk/VariableServiceImpl;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/VariableServiceImpl;Lccsanandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/VariableServiceImpl$2;->b:Lccsancom/applovin/impl/sdk/VariableServiceImpl;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/VariableServiceImpl$2;->a:Lccsanandroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/VariableServiceImpl$2;->b:Lccsancom/applovin/impl/sdk/VariableServiceImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/VariableServiceImpl;->b(Lccsancom/applovin/impl/sdk/VariableServiceImpl;)Lccsancom/applovin/sdk/AppLovinVariableService$OnVariablesUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/VariableServiceImpl$2;->a:Lccsanandroid/os/Bundle;

    invoke-interface {v0, v1}, Lccsancom/applovin/sdk/AppLovinVariableService$OnVariablesUpdateListener;->onVariablesUpdate(Lccsanandroid/os/Bundle;)V

    return-void
.end method
