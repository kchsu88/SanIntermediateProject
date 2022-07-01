.class Lccsancom/vungle/warren/persistence/FilePreferences$1;
.super Ljava/lang/Object;
.source "FilePreferences.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/persistence/FilePreferences;->apply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/persistence/FilePreferences;

.field final synthetic val$serializable:Ljava/io/Serializable;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/persistence/FilePreferences;Ljava/io/Serializable;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/persistence/FilePreferences;

    .line 54
    iput-object p1, p0, Lccsancom/vungle/warren/persistence/FilePreferences$1;->this$0:Lccsancom/vungle/warren/persistence/FilePreferences;

    iput-object p2, p0, Lccsancom/vungle/warren/persistence/FilePreferences$1;->val$serializable:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 57
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/FilePreferences$1;->this$0:Lccsancom/vungle/warren/persistence/FilePreferences;

    invoke-static {v0}, Lccsancom/vungle/warren/persistence/FilePreferences;->access$000(Lccsancom/vungle/warren/persistence/FilePreferences;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lccsancom/vungle/warren/persistence/FilePreferences$1;->val$serializable:Ljava/io/Serializable;

    invoke-static {v0, v1}, Lccsancom/vungle/warren/utility/FileUtility;->writeSerializable(Ljava/io/File;Ljava/io/Serializable;)V

    .line 58
    return-void
.end method
