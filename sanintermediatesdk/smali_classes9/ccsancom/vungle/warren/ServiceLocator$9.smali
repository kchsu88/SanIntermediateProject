.class Lccsancom/vungle/warren/ServiceLocator$9;
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

    .line 212
    iput-object p1, p0, Lccsancom/vungle/warren/ServiceLocator$9;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/vungle/warren/ServiceLocator$Creator;-><init>(Lccsancom/vungle/warren/ServiceLocator;Lccsancom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lccsancom/vungle/warren/persistence/Designer;
    .locals 3

    .line 215
    new-instance v0, Lccsancom/vungle/warren/persistence/GraphicDesigner;

    iget-object v1, p0, Lccsancom/vungle/warren/ServiceLocator$9;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v2, Lccsancom/vungle/warren/persistence/CacheManager;

    invoke-static {v1, v2}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/persistence/CacheManager;

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/persistence/GraphicDesigner;-><init>(Lccsancom/vungle/warren/persistence/CacheManager;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 212
    invoke-virtual {p0}, Lccsancom/vungle/warren/ServiceLocator$9;->create()Lccsancom/vungle/warren/persistence/Designer;

    move-result-object v0

    return-object v0
.end method
