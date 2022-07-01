.class Lccsancom/applovin/impl/communicator/MessagingServiceImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/communicator/MessagingServiceImpl;->a(Lccsancom/applovin/impl/communicator/CommunicatorMessageImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/communicator/CommunicatorMessageImpl;

.field final synthetic b:Lccsancom/applovin/impl/communicator/MessagingServiceImpl;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/communicator/MessagingServiceImpl;Lccsancom/applovin/impl/communicator/CommunicatorMessageImpl;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/communicator/MessagingServiceImpl$1;->b:Lccsancom/applovin/impl/communicator/MessagingServiceImpl;

    iput-object p2, p0, Lccsancom/applovin/impl/communicator/MessagingServiceImpl$1;->a:Lccsancom/applovin/impl/communicator/CommunicatorMessageImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/communicator/MessagingServiceImpl$1;->b:Lccsancom/applovin/impl/communicator/MessagingServiceImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/communicator/MessagingServiceImpl;->a(Lccsancom/applovin/impl/communicator/MessagingServiceImpl;)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->getInstance(Lccsanandroid/content/Context;)Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/communicator/MessagingServiceImpl$1;->a:Lccsancom/applovin/impl/communicator/CommunicatorMessageImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->sendBroadcastSync(Lccsanandroid/content/Intent;Ljava/util/Map;)V

    return-void
.end method
