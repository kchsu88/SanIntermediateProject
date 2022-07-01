.class Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:Lccsanandroid/content/IntentFilter;

.field final b:Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;

.field c:Z

.field d:Z


# direct methods
.method constructor <init>(Lccsanandroid/content/IntentFilter;Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$b;->a:Lccsanandroid/content/IntentFilter;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$b;->b:Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;

    return-void
.end method
