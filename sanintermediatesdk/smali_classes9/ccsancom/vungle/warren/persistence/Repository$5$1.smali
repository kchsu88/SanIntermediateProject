.class Lccsancom/vungle/warren/persistence/Repository$5$1;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/persistence/Repository$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/vungle/warren/persistence/Repository$5;

.field final synthetic val$e:Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/persistence/Repository$5;Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;)V
    .locals 0
    .param p1, "this$1"    # Lccsancom/vungle/warren/persistence/Repository$5;

    .line 237
    iput-object p1, p0, Lccsancom/vungle/warren/persistence/Repository$5$1;->this$1:Lccsancom/vungle/warren/persistence/Repository$5;

    iput-object p2, p0, Lccsancom/vungle/warren/persistence/Repository$5$1;->val$e:Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 240
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository$5$1;->this$1:Lccsancom/vungle/warren/persistence/Repository$5;

    iget-object v0, v0, Lccsancom/vungle/warren/persistence/Repository$5;->val$callback:Lccsancom/vungle/warren/persistence/Repository$SaveCallback;

    iget-object v1, p0, Lccsancom/vungle/warren/persistence/Repository$5$1;->val$e:Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/persistence/Repository$SaveCallback;->onError(Ljava/lang/Exception;)V

    .line 241
    return-void
.end method
