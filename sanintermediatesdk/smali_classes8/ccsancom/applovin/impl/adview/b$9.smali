.class Lccsancom/applovin/impl/adview/b$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/b;->onMessageReceived(Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/b;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/b;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/b$9;->a:Lccsancom/applovin/impl/adview/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$9;->a:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/b;->s()Lccsancom/applovin/impl/adview/d;

    move-result-object v0

    const-string v1, "chrome://crash"

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/d;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
