.class public Lccsancom/applovin/impl/mediation/debugger/ui/a;
.super Lccsanandroid/app/Activity;

# interfaces
.implements Lccsancom/applovin/communicator/AppLovinCommunicatorSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/mediation/debugger/ui/a$a;
    }
.end annotation


# instance fields
.field protected communicatorTopics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lccsanandroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a;->communicatorTopics:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCommunicatorId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 1

    invoke-static {p0}, Lccsancom/applovin/impl/sdk/utils/Utils;->isPubInDebugMode(Lccsanandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lccsancom/applovin/sdk/R$style;->com_applovin_mediation_MaxDebuggerActivity_Theme_Live:I

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/a;->setTheme(I)V

    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onCreate(Lccsanandroid/os/Bundle;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a;->communicatorTopics:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    invoke-static {p0}, Lccsancom/applovin/communicator/AppLovinCommunicator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/applovin/communicator/AppLovinCommunicator;

    move-result-object p1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a;->communicatorTopics:Ljava/util/List;

    invoke-virtual {p1, p0, v0}, Lccsancom/applovin/communicator/AppLovinCommunicator;->subscribe(Lccsancom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lccsanandroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a;->communicatorTopics:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0}, Lccsancom/applovin/communicator/AppLovinCommunicator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/applovin/communicator/AppLovinCommunicator;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a;->communicatorTopics:Ljava/util/List;

    invoke-virtual {v0, p0, v1}, Lccsancom/applovin/communicator/AppLovinCommunicator;->unsubscribe(Lccsancom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onMessageReceived(Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .locals 0

    return-void
.end method

.method protected startActivity(Ljava/lang/Class;Lccsancom/applovin/impl/sdk/a;Lccsancom/applovin/impl/mediation/debugger/ui/a$a;)V
    .locals 1

    new-instance v0, Lccsancom/applovin/impl/mediation/debugger/ui/a$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lccsancom/applovin/impl/mediation/debugger/ui/a$1;-><init>(Lccsancom/applovin/impl/mediation/debugger/ui/a;Ljava/lang/Class;Lccsancom/applovin/impl/mediation/debugger/ui/a$a;Lccsancom/applovin/impl/sdk/a;)V

    invoke-virtual {p2, v0}, Lccsancom/applovin/impl/sdk/a;->a(Lccsancom/applovin/impl/sdk/utils/a;)V

    new-instance p2, Lccsanandroid/content/Intent;

    invoke-direct {p2, p0, p1}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p2}, Lccsancom/applovin/impl/mediation/debugger/ui/a;->startActivity(Lccsanandroid/content/Intent;)V

    return-void
.end method
