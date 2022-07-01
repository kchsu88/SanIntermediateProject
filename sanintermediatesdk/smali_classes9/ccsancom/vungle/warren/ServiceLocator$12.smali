.class Lccsancom/vungle/warren/ServiceLocator$12;
.super Lccsancom/vungle/warren/ServiceLocator$Creator;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/ServiceLocator;->buildCreators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/ServiceLocator;)V
    .locals 1
    .param p1, "this$0"    # Lccsancom/vungle/warren/ServiceLocator;

    .line 230
    iput-object p1, p0, Lccsancom/vungle/warren/ServiceLocator$12;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/vungle/warren/ServiceLocator$Creator;-><init>(Lccsancom/vungle/warren/ServiceLocator;Lccsancom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lccsancom/vungle/warren/utility/Executors;
    .locals 1

    .line 233
    new-instance v0, Lccsancom/vungle/warren/utility/SDKExecutors;

    invoke-direct {v0}, Lccsancom/vungle/warren/utility/SDKExecutors;-><init>()V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 230
    invoke-virtual {p0}, Lccsancom/vungle/warren/ServiceLocator$12;->create()Lccsancom/vungle/warren/utility/Executors;

    move-result-object v0

    return-object v0
.end method
