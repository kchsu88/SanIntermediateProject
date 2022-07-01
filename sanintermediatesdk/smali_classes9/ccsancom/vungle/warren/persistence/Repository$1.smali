.class Lccsancom/vungle/warren/persistence/Repository$1;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/persistence/Repository;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/persistence/Repository;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/persistence/Repository;

    .line 101
    iput-object p1, p0, Lccsancom/vungle/warren/persistence/Repository$1;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lccsancom/vungle/warren/persistence/Repository$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/Repository$1;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v0, v0, Lccsancom/vungle/warren/persistence/Repository;->dbHelper:Lccsancom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->init()V

    .line 105
    new-instance v0, Lccsanandroid/content/ContentValues;

    invoke-direct {v0}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 106
    .local v0, "contentValues":Lccsanandroid/content/ContentValues;
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    new-instance v1, Lccsancom/vungle/warren/persistence/Query;

    const-string v2, "advertisement"

    invoke-direct {v1, v2}, Lccsancom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, "query":Lccsancom/vungle/warren/persistence/Query;
    const-string v2, "state=?"

    iput-object v2, v1, Lccsancom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    .line 110
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iput-object v2, v1, Lccsancom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 112
    iget-object v2, p0, Lccsancom/vungle/warren/persistence/Repository$1;->this$0:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v2, v2, Lccsancom/vungle/warren/persistence/Repository;->dbHelper:Lccsancom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v2, v1, v0}, Lccsancom/vungle/warren/persistence/DatabaseHelper;->update(Lccsancom/vungle/warren/persistence/Query;Lccsanandroid/content/ContentValues;)J

    .line 113
    const/4 v2, 0x0

    return-object v2
.end method
