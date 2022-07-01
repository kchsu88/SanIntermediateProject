.class Lccsancom/applovin/impl/sdk/v$3;
.super Lccsanandroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/v;-><init>(Lccsancom/applovin/impl/sdk/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/v;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/v;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/v$3;->a:Lccsancom/applovin/impl/sdk/v;

    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/Utils;->isCurrentProcessInForeground()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/v$3;->a:Lccsancom/applovin/impl/sdk/v;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/v;->a(Lccsancom/applovin/impl/sdk/v;)V

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/v$3;->a:Lccsancom/applovin/impl/sdk/v;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/v;->b(Lccsancom/applovin/impl/sdk/v;)V

    :cond_1
    :goto_0
    return-void
.end method
