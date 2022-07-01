.class Lccsancom/vungle/warren/persistence/Repository$5;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/persistence/Repository;

.field final synthetic val$callback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

.field final synthetic val$item:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/Object;Lccsancom/vungle/warren/persistence/Repository$SaveCallback;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/persistence/Repository;

    .line 230
    iput-object p1, p0, Lccsancom/vungle/warren/persistence/Repository$5;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lccsancom/vungle/warren/persistence/Repository$5;->val$item:Ljava/lang/Object;

    iput-object p3, p0, Lccsancom/vungle/warren/persistence/Repository$5;->val$callback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 234
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository$5;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository$5;->val$item:Ljava/lang/Object;

    invoke-static {v0, v1}, Lccsancom/vungle/warren/persistence/Repository;->access$200(Lccsancom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V
    :try_end_0
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    nop

    .line 246
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository$5;->val$callback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository$5;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    invoke-static {v0}, Lccsancom/vungle/warren/persistence/Repository;->access$100(Lccsancom/vungle/warren/persistence/Repository;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lccsancom/vungle/warren/persistence/Repository$5$2;

    invoke-direct {v1, p0}, Lccsancom/vungle/warren/persistence/Repository$5$2;-><init>(Lccsancom/vungle/warren/persistence/Repository$5;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 254
    :cond_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository$5;->val$callback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository$5;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    invoke-static {v1}, Lccsancom/vungle/warren/persistence/Repository;->access$100(Lccsancom/vungle/warren/persistence/Repository;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lccsancom/vungle/warren/persistence/Repository$5$1;

    invoke-direct {v2, p0, v0}, Lccsancom/vungle/warren/persistence/Repository$5$1;-><init>(Lccsancom/vungle/warren/persistence/Repository$5;Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 244
    :cond_1
    return-void
.end method
