.class Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Lccsanandroid/content/Intent;

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsanandroid/content/Intent;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$a;->a:Lccsanandroid/content/Intent;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$a;->b:Ljava/util/Map;

    iput-object p3, p0, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$a;->c:Ljava/util/List;

    return-void
.end method
