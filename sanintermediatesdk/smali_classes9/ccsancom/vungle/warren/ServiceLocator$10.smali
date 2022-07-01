.class Lccsancom/vungle/warren/ServiceLocator$10;
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

    .line 218
    iput-object p1, p0, Lccsancom/vungle/warren/ServiceLocator$10;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/vungle/warren/ServiceLocator$Creator;-><init>(Lccsancom/vungle/warren/ServiceLocator;Lccsancom/vungle/warren/ServiceLocator$1;)V

    return-void
.end method


# virtual methods
.method public create()Lccsancom/vungle/warren/persistence/CacheManager;
    .locals 4

    .line 221
    new-instance v0, Lccsancom/vungle/warren/persistence/CacheManager;

    iget-object v1, p0, Lccsancom/vungle/warren/ServiceLocator$10;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    invoke-static {v1}, Lccsancom/vungle/warren/ServiceLocator;->access$300(Lccsancom/vungle/warren/ServiceLocator;)Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsancom/vungle/warren/ServiceLocator$10;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    const-class v3, Lccsancom/vungle/warren/persistence/FilePreferences;

    invoke-static {v2, v3}, Lccsancom/vungle/warren/ServiceLocator;->access$100(Lccsancom/vungle/warren/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/persistence/FilePreferences;

    invoke-direct {v0, v1, v2}, Lccsancom/vungle/warren/persistence/CacheManager;-><init>(Lccsanandroid/content/Context;Lccsancom/vungle/warren/persistence/FilePreferences;)V

    return-object v0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 218
    invoke-virtual {p0}, Lccsancom/vungle/warren/ServiceLocator$10;->create()Lccsancom/vungle/warren/persistence/CacheManager;

    move-result-object v0

    return-object v0
.end method
